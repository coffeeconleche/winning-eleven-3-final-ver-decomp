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
        self.function("func_80010000", "glabel func_80010000\nold body\nendlabel func_80010000\n")
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

    def test_c_preserves_original_post_end_padding_and_data(self):
        self.function("func_80010000",
                      "glabel func_80010000\nold body\nendlabel func_80010000\n"
                      "/* 808 80010008 00000000 */ nop\n"
                      "dlabel D_8001000C\n"
                      "/* 80C 8001000C 12345678 */ ignored /* handwritten instruction */\n")
        self.function("func_80010010", "glabel func_80010010\njr $ra\nnop\n")
        compiled = self.root / "converted.s"
        compiled.write_text(".text\nfunc_80010000:\njr $ra\nnop\n")
        text = resident.write_text_aggregate({"func_80010000": compiled}).read_text()
        self.assertNotIn("old body", text)
        self.assertIn("/* 808 80010008 00000000 */ nop", text)
        self.assertIn("dlabel D_8001000C", text)
        self.assertIn(".word 0x78563412", text)
        self.assertEqual(text.count("/* 808 80010008 00000000 */ nop"), 1)
        self.assertLess(text.index("func_80010000:"), text.index("dlabel D_8001000C"))
        self.assertLess(text.index("dlabel D_8001000C"), text.index("glabel func_80010010"))

    def test_c_missing_original_endlabel_fails_closed(self):
        self.function("func_80010000", "glabel func_80010000\nold body\n")
        compiled = self.root / "converted.s"
        compiled.write_text(".text\nfunc_80010000:\njr $ra\nnop\n")
        with self.assertRaisesRegex(resident.BuildError, "missing or duplicate.*endlabel"):
            resident.write_text_aggregate({"func_80010000": compiled})

    def test_c_duplicate_original_endlabel_fails_closed(self):
        self.function("func_80010000",
                      "glabel func_80010000\nold body\nendlabel func_80010000\n"
                      "endlabel func_80010000\n")
        compiled = self.root / "converted.s"
        compiled.write_text(".text\nfunc_80010000:\njr $ra\nnop\n")
        with self.assertRaisesRegex(resident.BuildError, "missing or duplicate.*endlabel"):
            resident.write_text_aggregate({"func_80010000": compiled})

    def test_owned_jump_table_moves_into_original_rodata_slot(self):
        self.function("func_80010000",
                      "glabel func_80010000\nold body\nendlabel func_80010000\n")
        self.function("func_80010100", "glabel func_80010100\njr $ra\nnop\n")
        compiled = self.root / "converted.s"
        compiled.write_text('.section .rodata\n.align 3\n$L10:\n.word $L0\n'
                            '.word $L1\n.text\n$L0:\nfunc_80010000:\njr $ra\n'
                            'nop\n$L1:\nnop\n')
        rodata = self.root / "asm" / "data" / "800.rodata.s"
        rodata.parent.mkdir(parents=True)
        rodata.write_text("before\ndlabel jtbl_80010000\n"
                          "    /* entry 0 */ .word .L80010100\n"
                          "    /* entry 1 */ .word .L80010104\n"
                          "    /* padding */ .word 0x00000000\n"
                          "enddlabel jtbl_80010000\nafter\n")
        with patch.dict(build_overlay.PER_FUNC_JUMP_TABLES,
                        {"func_80010000": ("jtbl_80010000", 2)}):
            text = resident.write_text_aggregate({"func_80010000": compiled}).read_text()
        generated = (self.output / "generated" / "800.rodata.s").read_text()
        self.assertIn("before\ndlabel jtbl_80010000\n"
                      ".globl $L_func_80010000_10\n"
                      "$L_func_80010000_10:\n"
                      ".word $L_func_80010000_0\n"
                      ".word $L_func_80010000_1\n"
                      "    /* padding */ .word 0x00000000\n"
                      "enddlabel jtbl_80010000\nafter", generated)
        self.assertNotIn(".align", generated.split("dlabel jtbl_80010000", 1)[1]
                         .split("enddlabel jtbl_80010000", 1)[0])
        self.assertIn("func_80010000:\njr $ra\nnop", text)
        self.assertIn(".globl $L_func_80010000_0\n$L_func_80010000_0:", text)
        self.assertIn(".globl $L_func_80010000_1\n$L_func_80010000_1:", text)
        self.assertNotIn(".word", text)
        self.assertNotIn("old body", text)

    def test_rodata_output_absent_without_tables_and_stale_output_removed(self):
        self.function("func_80010000",
                      "glabel func_80010000\nold body\nendlabel func_80010000\n")
        compiled = self.root / "converted.s"
        compiled.write_text(".text\nfunc_80010000:\njr $ra\nnop\n")
        stale = self.output / "generated" / "800.rodata.s"
        stale.parent.mkdir(parents=True, exist_ok=True)
        stale.write_text("stale rodata\n")
        resident.write_text_aggregate({"func_80010000": compiled}).read_text()
        self.assertFalse(stale.exists())

    def test_two_resident_functions_cannot_claim_the_same_slot(self):
        for name in ("func_80010000", "func_80010100"):
            self.function(name, f"glabel {name}\njr $ra\nnop\nendlabel {name}\n")
        rodata = self.root / "asm" / "data" / "800.rodata.s"
        rodata.parent.mkdir(parents=True)
        rodata.write_text("dlabel jtbl_80010000\n    .word .L80010100\n"
                          "enddlabel jtbl_80010000\n")
        compiler = ('.section .rodata\n$L0:\n.word $L1\n.text\nfunc_80010000:\n'
                    'jr $ra\nnop\n')
        compiled = {}
        for name in ("func_80010000", "func_80010100"):
            source = self.root / f"{name}.compiled.s"
            source.write_text(compiler.replace("func_80010000", name))
            compiled[name] = source
        with patch.dict(build_overlay.PER_FUNC_JUMP_TABLES,
                        {name: ("jtbl_80010000", 1)
                         for name in ("func_80010000", "func_80010100")}):
            with self.assertRaisesRegex(resident.BuildError, "already claimed"):
                resident.write_text_aggregate(compiled)

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
