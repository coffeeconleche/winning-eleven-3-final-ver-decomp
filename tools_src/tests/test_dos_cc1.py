"""SDK-free checks for the isolated DOS compiler wrapper."""

import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from dos_cc1 import compile_dos


class DosCompilerTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.compiler = self.root / "compiler.exe"
        self.runtime = self.root / "runtime.exe"
        self.source = self.root / "source.i"
        self.output = self.root / "output.s"
        for path in (self.compiler, self.runtime, self.source):
            path.write_bytes(b"fixture")

    def simulate(self, marker="OK", assembly=b"unaltered assembly\r\n", returncode=0):
        def run(command, **kwargs):
            work = Path(kwargs["cwd"])
            self.assertEqual(work.parent, self.root)
            self.assertNotEqual(work, self.root)
            self.assertIn("-silent", command)
            self.assertEqual((work / "INPUT.I").read_bytes(), b"fixture")
            if marker is not None:
                (work / "STATUS.TXT").write_text(marker)
            if assembly is not None:
                (work / "OUTPUT.S").write_bytes(assembly)
            return subprocess.CompletedProcess(command, returncode, "", "")
        return run

    def compile(self):
        compile_dos(self.compiler, self.runtime, self.source, self.output, ["-quiet", "-O2", "-G0"])

    def test_success_copies_verbatim_and_cleans_private_directory(self):
        with patch("dos_cc1.subprocess.run", side_effect=self.simulate()):
            self.compile()
        self.assertEqual(self.output.read_bytes(), b"unaltered assembly\r\n")
        self.assertFalse(list(self.root.glob("doscc1-*")))

    def test_failures_do_not_publish_partial_output(self):
        for marker, assembly, code in (("FAILED", b"partial", 0), (None, b"partial", 0),
                                       ("OK", b"", 0), ("OK", None, 0), ("OK", b"partial", 1)):
            with self.subTest(marker=marker, assembly=assembly, code=code):
                with patch("dos_cc1.subprocess.run", side_effect=self.simulate(marker, assembly, code)):
                    with self.assertRaises(OSError):
                        self.compile()
                self.assertFalse(self.output.exists())

    def test_timeout_fails_closed(self):
        with patch("dos_cc1.subprocess.run", side_effect=subprocess.TimeoutExpired("runtime", 60)):
            with self.assertRaisesRegex(OSError, "timed out"):
                self.compile()
        self.assertFalse(self.output.exists())
        self.assertFalse(list(self.root.glob("doscc1-*")))

    def test_shell_metacharacters_are_rejected(self):
        for flag in ("-O2&exit", "-O2 >file", "-O2\nexit", '"-O2"'):
            with self.subTest(flag=flag), self.assertRaises(ValueError):
                compile_dos(self.compiler, self.runtime, self.source, self.output, [flag])


if __name__ == "__main__":
    unittest.main()
