"""SDK-free ownership/placement checks for compiler-generated jump tables."""

import sys
import tempfile
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from build_overlay import BuildError, compiled_parts, relocate_jump_table


class JumpTableTests(unittest.TestCase):
    function = "func_8018E69C"
    table = ".align 3\n$L_func_8018E69C_13:\n" + "".join(
        f".word $L_func_8018E69C_{i}\n" for i in range(5)
    )
    original = "before\ndlabel jtbl_80188F94\n" + "".join(
        f"    /* entry {i} */ .word .L8018E6{i:02X}\n" for i in range(5)
    ) + "    /* padding */ .word 0x00000000\nenddlabel jtbl_80188F94\nafter\n"

    def parse(self, text, function=None):
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "compiler.s"
            source.write_text(text, encoding="utf-8")
            return compiled_parts(source, function or self.function)

    def test_move_table_preserves_text_and_padding(self):
        code, table = self.parse(
            '.include "macro.inc"\n.file 1 "input.c"\n.text\n'
            'lui $at,%hi($L13)\n.section .rodata\n.align 3\n$L13:\n'
            + "".join(f".word $L{i}\n" for i in range(5))
            + '.text\n$L0:\njr $ra\nnop\n'
        )
        self.assertIn("lui $at,%hi($L_func_8018E69C_13)", code)
        self.assertIn("$L_func_8018E69C_0:\njr $ra\nnop", code)
        self.assertNotIn(".word", code)
        self.assertEqual(table.strip(), self.table.strip())
        result = relocate_jump_table(self.original, self.function, table)
        self.assertTrue(result.startswith("before\ndlabel jtbl_80188F94\n"))
        self.assertTrue(result.endswith("    /* padding */ .word 0x00000000\n"
                                        "enddlabel jtbl_80188F94\nafter\n"))
        self.assertNotIn(".align", result)
        self.assertEqual(result.count(".word"), 6)
        for line in self.table.splitlines()[1:]:
            self.assertIn(line, result)

    def test_no_table_keeps_existing_text(self):
        code, table = self.parse(".text\njr $ra\nnop\n", "func_other")
        self.assertIsNone(table)
        self.assertIn("jr $ra\nnop", code)

    def test_missing_duplicate_and_undeclared_tables_fail(self):
        section = ".section .rodata\n" + self.table + ".text\n"
        for source, function in ((".text\nnop\n", self.function),
                                 (section + section, self.function),
                                 (section, "func_other")):
            with self.subTest(source=source, function=function), self.assertRaises(BuildError):
                self.parse(source, function)

    def test_wrong_generated_shape_fails(self):
        for table in ("", self.table + ".word $L_extra\n",
                      self.table.replace(".word", ".short", 1),
                      self.table.replace(".word $L_func_8018E69C_0", ".word 0")):
            with self.subTest(table=table), self.assertRaises(BuildError):
                relocate_jump_table(self.original, self.function, table)

    def test_missing_duplicate_or_short_original_slot_fails(self):
        for original in ("", self.original + self.original,
                         self.original.replace(".word .L8018E600", ".byte 0")):
            with self.subTest(original=original), self.assertRaises(BuildError):
                relocate_jump_table(original, self.function, self.table)


if __name__ == "__main__":
    unittest.main()
