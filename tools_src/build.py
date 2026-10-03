#!/usr/bin/env python3
"""Build and verify the initial all-assembly SLPM_861.62 reconstruction."""

from __future__ import annotations

import argparse
import ast
import hashlib
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
EXPECTED = ROOT / "extracted" / "SLPM_861.62"
EXPECTED_SHA1 = "7e480656a295dced6ec187286773ab897651e995"
LINKER = ROOT / "config" / "slpm_861.62.ld"
BUILD = ROOT / "build"


class BuildError(RuntimeError):
    pass


def digest(path: Path) -> str:
    value = hashlib.sha1()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1024 * 1024), b""):
            value.update(block)
    return value.hexdigest()


def find_tool(name: str, bin_dir: Path | None) -> Path:
    executable = name + (".exe" if os.name == "nt" else "")
    candidates = []
    if bin_dir is not None:
        candidates.append(bin_dir / executable)
    candidates.append(ROOT / "tools" / "mips" / "bin" / executable)
    for candidate in candidates:
        if candidate.is_file():
            return candidate.resolve()
    found = shutil.which(name) or shutil.which(executable)
    if found:
        return Path(found).resolve()
    raise BuildError(
        f"cannot find {executable}; pass --bin-dir or place the MIPS binutils "
        "under tools/mips/bin"
    )


def run(command: list[str]) -> None:
    shown = " ".join(command[:6])
    print(f"+ {shown}{' ...' if len(command) > 6 else ''}")
    result = subprocess.run(command, cwd=ROOT, text=True, capture_output=True)
    if result.returncode:
        if result.stdout:
            print(result.stdout, end="", file=sys.stderr)
        if result.stderr:
            print(result.stderr, end="", file=sys.stderr)
        raise BuildError(f"command failed with exit status {result.returncode}")
    if result.stdout:
        print(result.stdout, end="")
    if result.stderr:
        print(result.stderr, end="", file=sys.stderr)


def source_object(source: Path, output: Path, assembler: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    run(
        [
            str(assembler),
            "-EL",
            "-march=r3000",
            "-mtune=r3000",
            "-mabi=32",
            "-G0",
            "-no-pad-sections",
            f"-I{ROOT}",
            f"-I{ROOT / 'include'}",
            "-o",
            str(output),
            str(source),
        ]
    )


def function_address(path: Path) -> int:
    stem = path.stem
    if not stem.startswith("func_"):
        raise BuildError(f"unexpected nonmatching assembly filename: {path}")
    try:
        return int(stem.removeprefix("func_"), 16)
    except ValueError as error:
        raise BuildError(f"invalid function address in {path.name}") from error


def write_text_aggregate() -> Path:
    functions = sorted(
        (ROOT / "asm" / "nonmatchings" / "5EBC").glob("func_*.s"),
        key=function_address,
    )
    if not functions:
        raise BuildError("no generated functions; run splat split first")
    output = BUILD / "generated" / "5EBC.s"
    output.parent.mkdir(parents=True, exist_ok=True)
    lines = ['.include "macro.inc"', ".set noat", ".set noreorder", ".section .text"]
    handwritten = re.compile(
        r"^(\s*)/\*\s+[0-9A-F]+\s+[0-9A-F]+\s+([0-9A-F]{8})\s+\*/"
        r".*?/\* handwritten instruction \*/\s*$"
    )
    raw_count = 0
    for path in functions:
        lines.append(f"/* {path.relative_to(ROOT).as_posix()} */")
        for line in path.read_text(encoding="utf-8").splitlines():
            match = handwritten.match(line)
            if match:
                # Preserve Splat's source word literally. This covers PS1 GTE
                # opcodes and occasional unreachable data decoded as a MIPS-II
                # pseudo-instruction, which GNU as may otherwise expand.
                encoded = int.from_bytes(bytes.fromhex(match.group(2)), "little")
                line = f"{match.group(1)}.word 0x{encoded:08X}"
                raw_count += 1
            lines.append(line)
    output.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"text functions: {len(functions)} ({raw_count} raw instruction words)")
    return output


def write_encoded_data(source: Path) -> Path:
    """Emit GNU-as data with splat strings encoded as the game's Shift-JIS."""
    output = BUILD / "generated" / source.name
    output.parent.mkdir(parents=True, exist_ok=True)
    asciz = re.compile(r'^(\s*)/\*.*?\*/\s*\.asciz\s+(".*")\s*$')
    lines: list[str] = []
    converted = 0
    for line in source.read_text(encoding="utf-8").splitlines():
        match = asciz.match(line)
        if match:
            value = ast.literal_eval(match.group(2))
            encoded = b"".join(
                bytes((ord(character),))
                if ord(character) <= 0xFF
                else character.encode("shift_jis")
                for character in value
            ) + b"\0"
            values = ", ".join(f"0x{byte:02X}" for byte in encoded)
            line = f"{match.group(1)}.byte {values}"
            converted += 1
        lines.append(line)
    output.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"data strings: {converted} converted to Shift-JIS")
    return output


def first_difference(expected: bytes, actual: bytes) -> str:
    common = min(len(expected), len(actual))
    offset = next((i for i in range(common) if expected[i] != actual[i]), common)
    if offset == common and len(expected) == len(actual):
        return "none"
    before = max(0, offset - 8)
    after = min(common, offset + 8)
    return (
        f"offset {offset:#x}; expected[{before:#x}:{after:#x}]="
        f"{expected[before:after].hex()} actual={actual[before:after].hex()}"
    )


def read_defsyms() -> list[str]:
    """Translate splat's generated symbol assignments for GNU ld."""
    arguments: list[str] = []
    for filename in ("undefined_syms_auto.txt", "undefined_funcs_auto.txt"):
        path = ROOT / "config" / filename
        if not path.is_file():
            continue
        for raw_line in path.read_text(encoding="utf-8").splitlines():
            line = raw_line.split("//", 1)[0].split("#", 1)[0].strip().rstrip(";")
            if not line or "=" not in line:
                continue
            symbol, value = (part.strip() for part in line.split("=", 1))
            arguments.extend(("--defsym", f"{symbol}={value}"))
    return arguments


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--bin-dir", type=Path, help="directory containing mipsel-none-elf binutils")
    args = parser.parse_args()
    try:
        if not EXPECTED.is_file():
            raise BuildError("missing extracted/SLPM_861.62; run tools_src/extract.py")
        if digest(EXPECTED) != EXPECTED_SHA1:
            raise BuildError("extracted/SLPM_861.62 has the wrong SHA-1")
        if not LINKER.is_file():
            raise BuildError("missing generated linker script; run splat split first")

        assembler = find_tool("mipsel-none-elf-as", args.bin_dir)
        linker = find_tool("mipsel-none-elf-ld", args.bin_dir)
        objcopy = find_tool("mipsel-none-elf-objcopy", args.bin_dir)

        jobs = [
            (ROOT / "asm" / "header.s", BUILD / "asm" / "header.o"),
            (ROOT / "asm" / "data" / "800.rodata.s", BUILD / "asm" / "data" / "800.rodata.o"),
            (
                write_encoded_data(ROOT / "asm" / "data" / "B6874.data.s"),
                BUILD / "asm" / "data" / "B6874.data.o",
            ),
            (ROOT / "asm" / "data" / "D728C.sdata.s", BUILD / "asm" / "data" / "D728C.sdata.o"),
            (write_text_aggregate(), BUILD / "src" / "5EBC.o"),
        ]
        for source, output in jobs:
            if not source.is_file():
                raise BuildError(f"missing generated source: {source.relative_to(ROOT)}")
            source_object(source, output, assembler)

        padding = ROOT / "assets" / "load_padding.bin"
        padding_object = BUILD / "assets" / "load_padding.o"
        padding_object.parent.mkdir(parents=True, exist_ok=True)
        if not padding.is_file():
            raise BuildError("missing assets/load_padding.bin; run splat split first")
        run(
            [
                str(objcopy),
                "-I",
                "binary",
                "-O",
                "elf32-littlemips",
                "-B",
                "mips",
                "--rename-section",
                ".data=.data,alloc,load,data,contents",
                str(padding),
                str(padding_object),
            ]
        )

        elf = BUILD / "slpm_861.62.elf"
        image = BUILD / "SLPM_861.62"
        run(
            [
                str(linker),
                "-EL",
                "-T",
                str(LINKER),
                "-Map",
                str(BUILD / "slpm_861.62.map"),
                "--no-check-sections",
                *read_defsyms(),
                "-o",
                str(elf),
            ]
        )
        run([str(objcopy), "-O", "binary", str(elf), str(image)])

        wanted = EXPECTED.read_bytes()
        actual = image.read_bytes()
        actual_sha1 = hashlib.sha1(actual).hexdigest()
        print(f"wanted: {EXPECTED_SHA1} ({len(wanted)} bytes)")
        print(f"built : {actual_sha1} ({len(actual)} bytes)")
        if actual_sha1 != EXPECTED_SHA1:
            raise BuildError(f"binary mismatch: {first_difference(wanted, actual)}")
        print("MATCH")
        return 0
    except (BuildError, OSError) as error:
        print(f"build: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
