"""SDK-free ownership/placement checks for compiler-generated jump tables."""

import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from build_overlay import (
    BuildError, PER_FUNC_JUMP_TABLES, compiled_parts, jump_table_slots,
    relocate_jump_table, write_aggregate,
)


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

    def test_multiple_tables_keep_independent_slots_and_surrounding_data(self):
        function = "func_80100000"
        slots = (("jtbl_first", 2), ("jtbl_second", 3))
        generated = (".align 3\n$L10:\n.word $L0\n.word $L1\n",
                     ".align 2\n$L20:\n.word $L2\n.word $L3\n.word $L4\n")
        original = "before\n"
        for symbol, count in slots:
            original += f"dlabel {symbol}\n"
            original += "".join(f".word .L801000{i:02X}\n" for i in range(count))
            original += f".word 0x00000000\nenddlabel {symbol}\nbetween\n"
        original += "after\n"
        compiler = (".text\nfirst_instruction\n.section .rodata\n" + generated[0]
                    + ".text\nmiddle_instruction\n.section .rodata\n" + generated[1]
                    + ".text\nlast_instruction\n")
        with patch.dict(PER_FUNC_JUMP_TABLES, {function: slots}):
            code, tables = self.parse(compiler, function)
            self.assertIsInstance(tables, tuple)
            self.assertEqual(len(tables), 2)
            self.assertIn("first_instruction\n.text\nmiddle_instruction", code)
            self.assertIn("last_instruction", code)
            self.assertNotIn(".word", code)
            with tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                rodata = root / "rodata.s"
                text = root / (function + ".s")
                compiled = root / "compiled.s"
                output = root / "aggregate.s"
                rodata.write_text(original, encoding="utf-8")
                text.write_text("original_instruction", encoding="utf-8")
                compiled.write_text(compiler, encoding="utf-8")
                write_aggregate({"rodata": rodata, "text": text}, output,
                                {function: compiled})
                result = output.read_text(encoding="utf-8")
            self.assertNotIn("original_instruction", result)
            self.assertNotIn(".align", result)
            self.assertEqual(result.count(".word 0x00000000"), 2)
            self.assertIn("enddlabel jtbl_first\nbetween\ndlabel jtbl_second", result)
            for table in tables:
                for line in table.splitlines()[1:]:
                    self.assertIn(line, result)
            with self.assertRaises(BuildError):
                relocate_jump_table(original, function, tables[0])
            with self.assertRaises(BuildError):
                relocate_jump_table(original, function, tables[0], slots[1])

    def test_multiple_table_ownership_and_count_fail_closed(self):
        function = "func_multi"
        section = ".section .rodata\n" + self.table + ".text\n"
        valid = (("first", 5), ("second", 5))
        with patch.dict(PER_FUNC_JUMP_TABLES, {function: valid}):
            for source in (".text\nnop\n", section, section * 3):
                with self.subTest(source=source), self.assertRaises(BuildError):
                    self.parse(source, function)
        for slots in ((), (("first", 5), ("first", 5)), (("first", 0),),
                      (("first", True),), (("first", 5, 6),)):
            with patch.dict(PER_FUNC_JUMP_TABLES, {function: slots}):
                with self.subTest(slots=slots), self.assertRaises(BuildError):
                    jump_table_slots(function)

    def test_two_functions_cannot_claim_the_same_original_slot(self):
        functions = ("func_80100000", "func_80100004")
        ownership = {name: ("jtbl_80188F94", 5) for name in functions}
        compiler = ".section .rodata\n" + self.table + ".text\nnop\n"
        with patch.dict(PER_FUNC_JUMP_TABLES, ownership):
            with tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                rodata = root / "rodata.s"
                text = root / (functions[0] + ".s")
                rodata.write_text(self.original, encoding="utf-8")
                text.write_text("nop", encoding="utf-8")
                compiled = {}
                for name in functions:
                    source = root / (name + ".compiled.s")
                    source.write_text(compiler, encoding="utf-8")
                    compiled[name] = source
                with self.assertRaisesRegex(BuildError, "already claimed"):
                    write_aggregate({"rodata": rodata, "text": text},
                                    root / "aggregate.s", compiled)


if __name__ == "__main__":
    unittest.main()
