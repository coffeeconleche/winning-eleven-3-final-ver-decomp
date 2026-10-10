"""SDK-free checks for resident C substitution and assembly fallback."""

import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import build as resident
import build_overlay


class ResidentAggregateTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.root = Path(temporary.name)
        self.assembly = self.root / "asm/nonmatchings/5EBC"
        self.assembly.mkdir(parents=True)
        self.output = self.root / "build"
        self.patch = patch.multiple(resident, ROOT=self.root, BUILD=self.output)
        self.patch.start()
        self.addCleanup(self.patch.stop)

    def function(self, name, body):
        path = self.assembly / f"{name}.s"
        path.write_text(body)
        return path

    def test_empty_c_map_preserves_assembly_order_and_raw_words(self):
        self.function("func_80010100", "glabel func_80010100\njr $ra\nnop\n")
        self.function("func_80010000",
                      "glabel func_80010000\n/* 800 80010000 12345678 */ ignored /* handwritten instruction */\n")
        text = resident.write_text_aggregate().read_text()
        self.assertLess(text.index("glabel func_80010000"), text.index("glabel func_80010100"))
        self.assertIn(".word 0x78563412", text)

    def test_c_replaces_only_its_existing_slot_and_restores_assembler_state(self):
        self.function("func_80010000", "glabel func_80010000\nold body\n")
        self.function("func_80010100", "glabel func_80010100\njr $ra\nnop\n")
        compiled = self.root / "converted.s"
        compiled.write_text('.include "macro.inc"\n.file "local-input.c"\n'
                            'gcc2_compiled.:\n.text\nfunc_80010000:\n'
                            'jr $ra\nnop\n')
        text = resident.write_text_aggregate({"func_80010000": compiled}).read_text()
        self.assertNotIn("old body", text)
        self.assertNotIn("local-input.c", text)
        self.assertNotIn("gcc2_compiled.", text)
        self.assertIn("func_80010000:\njr $ra\nnop", text)
        self.assertIn(".set noat\n.set noreorder\n.section .text", text)
        self.assertEqual(text.count("glabel func_80010100"), 1)
        self.assertLess(text.index("func_80010000:"), text.index("glabel func_80010100"))

    def test_unknown_c_slot_fails_before_writing_aggregate(self):
        self.function("func_80010000", "glabel func_80010000\njr $ra\nnop\n")
        with self.assertRaisesRegex(resident.BuildError, "no assembly slot"):
            resident.write_text_aggregate({"func_80010200": self.root / "missing.s"})
        self.assertFalse((self.output / "generated/5EBC.s").exists())

    def test_resident_rodata_is_not_silently_discarded(self):
        self.function("func_80010000", "glabel func_80010000\njr $ra\nnop\n")
        with patch.object(resident, "compiled_parts", return_value=("code", "table")):
            with self.assertRaisesRegex(resident.BuildError, "rodata substitution is not supported"):
                resident.write_text_aggregate({"func_80010000": self.root / "converted.s"})

    def test_empty_resident_source_directory_does_not_require_sdk(self):
        legacy = self.root / "src/overlays/resident"
        legacy.mkdir(parents=True)
        (legacy / "func_80010000.c").write_text("void func_80010000(void) {}\n")
        with patch.object(build_overlay, "ROOT", self.root):
            self.assertEqual(build_overlay.compile_c_sources(
                "RESIDENT", self.output, None, None, source_dir=self.root / "src/resident"), {})

    def test_generated_rodata_without_ownership_fails_closed(self):
        self.function("func_80010000", "glabel func_80010000\njr $ra\nnop\n")
        compiled = self.root / "converted.s"
        compiled.write_text('.section .rodata\n$L0:\n.word $L1\n.text\nfunc_80010000:\n')
        with self.assertRaisesRegex(build_overlay.BuildError, "no declared ownership"):
            resident.write_text_aggregate({"func_80010000": compiled})


if __name__ == "__main__":
    unittest.main()
