#!/usr/bin/env python3
"""Build and byte-verify a dynamically confirmed runtime overlay."""

from __future__ import annotations

import argparse
import hashlib
import os
import shutil
import subprocess
import sys
from pathlib import Path

from dos_cc1 import compile_dos

ROOT = Path(__file__).resolve().parent.parent

CPP_FLAGS = [
    "-undef",
    "-D__GNUC__=2",
    "-lang-c",
    "-Dmips",
    "-D__mips__",
    "-D__mips",
    "-Dpsx",
    "-D__psx__",
    "-D__psx",
    "-D_PSYQ",
    "-D__EXTENSIONS__",
    "-D_MIPSEL",
    "-D__CHAR_UNSIGNED__",
    "-D_LANGUAGE_C",
    "-DLANGUAGE_C",
    "-Iinclude",
]

PER_FUNC_COMPILERS: dict[str, str] = {
    "func_8018E2C0": "gcc272-dos",
}

PER_FUNC_CC1_FLAGS = {
    "func_8018E2C0": ["-quiet", "-O2", "-G0"],
    "func_801A3930": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A9540": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A61FC": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    # Keep the common scratchpad base while retaining large base-relative accesses.
    "func_801CF964": ["-quiet", "-O2", "-G0", "-mno-split-addresses", "-fforce-addr"],
    "func_801AF198": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E4F0": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E514": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E5B8": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018F2F8": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A24AC": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A9874": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801BFB24": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EBF4": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EC18": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EC3C": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EA04": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801AEF70": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801AEFE0": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801A9614": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_801B8EB8": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018E4AC": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
    "func_8018EBA4": ["-quiet", "-O2", "-G0", "-mno-split-addresses"],
}

OVERLAYS = {
    "SELSND": {
        "expected": ROOT / "extracted" / "modules" / "SELSND.BIN",
        "sha1": "528b4b8a91d4cc7cc309dde876a19858eb3099a3",
        "rodata": ROOT / "asm" / "overlays" / "selsnd" / "data" / "0.rodata.s",
        "text": ROOT
        / "asm"
        / "overlays"
        / "selsnd"
        / "nonmatchings"
        / "18"
        / "func_80138018.s",
        "data": ROOT / "asm" / "overlays" / "selsnd" / "data" / "E9C.data.s",
        "linker": ROOT / "config" / "overlays" / "selsnd.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "selsnd.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "selsnd.undefined_syms_auto.txt",
        ),
    },
    "SELFORM": {
        "expected": ROOT / "extracted" / "modules" / "SELFORM.BIN",
        "sha1": "95651f110448e163b81b0dfa44636ed8efd2be02",
        "rodata": ROOT / "asm" / "overlays" / "selform" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "selform" / "nonmatchings" / "2C",
        "data": ROOT / "asm" / "overlays" / "selform" / "data" / "4484.data.s",
        "linker": ROOT / "config" / "overlays" / "selform.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "selform.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "selform.undefined_syms_auto.txt",
        ),
    },
    "UNIFORM": {
        "expected": ROOT / "extracted" / "modules" / "UNIFORM.BIN",
        "sha1": "52f1bc69e5b072827d5723772c3cf9cf5fbc20a4",
        "rodata": ROOT / "asm" / "overlays" / "uniform" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "uniform" / "nonmatchings" / "7A8",
        "linker": ROOT / "config" / "overlays" / "uniform.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "uniform.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "uniform.undefined_syms_auto.txt",
        ),
    },
    "ENTER": {
        "expected": ROOT / "extracted" / "modules" / "ENTER.BIN",
        "sha1": "a7946495e695a25606c865aefe53d515d8cf1dda",
        "rodata": ROOT / "asm" / "overlays" / "enter" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "enter" / "nonmatchings" / "604",
        "data": ROOT / "asm" / "overlays" / "enter" / "data" / "6E64.data.s",
        "linker": ROOT / "config" / "overlays" / "enter.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "enter.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "enter.undefined_syms_auto.txt",
        ),
    },
    "SELECT": {
        "expected": ROOT / "extracted" / "modules" / "SELECT.BIN",
        "sha1": "9555fd6506c2ecdab32c528683cd262c59d558d8",
        "rodata": ROOT / "asm" / "overlays" / "select" / "data" / "0.rodata.s",
        "text_dir": ROOT / "asm" / "overlays" / "select" / "nonmatchings" / "4BE0",
        "data": ROOT / "asm" / "overlays" / "select" / "data" / "48AD8.data.s",
        "tail_bytes": b"\x00\x00",
        "linker": ROOT / "config" / "overlays" / "select.build.ld",
        "undefined": (
            ROOT / "config" / "overlays" / "select.undefined_funcs_auto.txt",
            ROOT / "config" / "overlays" / "select.undefined_syms_auto.txt",
        ),
    },
}


class BuildError(RuntimeError):
    pass


def digest(path: Path) -> str:
    value = hashlib.sha1()
    value.update(path.read_bytes())
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
    raise BuildError(f"cannot find {executable}; pass --bin-dir")


def run(command: list[str]) -> None:
    print("+ " + " ".join(command[:6]) + (" ..." if len(command) > 6 else ""))
    result = subprocess.run(command, cwd=ROOT, text=True, capture_output=True)
    if result.stdout:
        print(result.stdout, end="")
    if result.stderr:
        print(result.stderr, end="", file=sys.stderr)
    if result.returncode:
        raise BuildError(f"command failed with exit status {result.returncode}")


def body(path: Path) -> str:
    lines = path.read_text(encoding="utf-8").splitlines()
    return "\n".join(line for line in lines if not line.startswith('.include "macro.inc"'))


def compiled_body(path: Path, function_name: str) -> str:
    ignored = {'gcc2_compiled.:', '__gnu_compiled_c:'}
    lines = path.read_text(encoding="utf-8").splitlines()
    text = "\n".join(
        line
        for line in lines
        if line.strip() not in ignored
        and not line.startswith('.include "macro.inc"')
        and not line.lstrip().startswith(".file")
    )
    text = text.replace("$L", f"$L_{function_name}_")
    return ".set at\n" + text + "\n.set noat"


def function_address(path: Path) -> int:
    return int(path.stem.removeprefix("func_"), 16)


def write_aggregate(
    config: dict[str, object], output: Path, compiled: dict[str, Path]
) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    if "text_dir" in config:
        text_paths = sorted(config["text_dir"].glob("func_*.s"), key=function_address)
        if not text_paths:
            raise BuildError(f"no generated functions under {config['text_dir']}")
    else:
        text_paths = [config["text"]]
    sections = [
        '.include "macro.inc"',
        ".set noat",
        ".set noreorder",
        body(config["rodata"]),
        ".section .text",
        *(compiled_body(compiled[path.stem], path.stem) if path.stem in compiled else body(path)
          for path in text_paths),
    ]
    if "data" in config:
        sections.append(body(config["data"]))
    if "tail_bytes" in config:
        values = ", ".join(f"0x{value:02X}" for value in config["tail_bytes"])
        sections.extend((".section .data", f".byte {values}"))
    output.write_text("\n\n".join(sections) + "\n", encoding="utf-8")


def find_existing(description: str, candidates: list[Path]) -> Path:
    for candidate in candidates:
        if candidate.is_file():
            return candidate.resolve()
    raise BuildError(f"cannot find {description}")


def compile_c_sources(
    name: str,
    out_dir: Path,
    psyq_bin: Path | None,
    maspsx_path: Path | None,
    dosbox_path: Path | None = None,
    dos_cc1_path: Path | None = None,
) -> dict[str, Path]:
    source_dir = ROOT / "src" / "overlays" / name.lower()
    sources = sorted(source_dir.glob("func_*.c"))
    if not sources:
        return {}

    psyq_bin = psyq_bin or ROOT / "tools" / "psyq45" / "BIN"
    if not psyq_bin.is_dir():
        raise BuildError("cannot find PsyQ 4.5 BIN directory")
    cpppsx = find_existing("CPPPSX.EXE", [psyq_bin / "CPPPSX.EXE"])
    cc1psx = find_existing("CC1PSX.EXE", [psyq_bin / "CC1PSX.EXE"])
    maspsx = find_existing(
        "maspsx.py",
        [maspsx_path or ROOT / "tools" / "maspsx" / "maspsx.py"],
    )
    maspsx_python = Path(sys.executable).resolve()

    generated = out_dir / "compiled"
    generated.mkdir(parents=True, exist_ok=True)
    compiled: dict[str, Path] = {}
    for source in sources:
        preprocessed = generated / f"{source.stem}.i"
        compiler_asm = generated / f"{source.stem}.s"
        maspsx_asm = generated / f"{source.stem}.maspsx.s"
        run(
            [
                str(cpppsx),
                *CPP_FLAGS,
                source.relative_to(ROOT).as_posix(),
                preprocessed.relative_to(ROOT).as_posix(),
            ]
        )
        cc1_flags = PER_FUNC_CC1_FLAGS.get(source.stem, ["-quiet", "-O2", "-G0"])
        profile = PER_FUNC_COMPILERS.get(source.stem, "gcc281")
        if profile == "gcc272-dos":
            dosbox = find_existing("DOSBox-X", [dosbox_path or ROOT / "tools" / "dosbox-x" / "dosbox-x.exe"])
            dos_cc1 = find_existing("DOS CC1PSX.EXE", [dos_cc1_path or psyq_bin / "DOS" / "CC1PSX.EXE"])
            compile_dos(dos_cc1, dosbox, preprocessed, compiler_asm, cc1_flags)
        elif profile == "gcc281":
            run(
                [
                    str(cc1psx),
                    *cc1_flags,
                    preprocessed.relative_to(ROOT).as_posix(),
                    "-o",
                    compiler_asm.relative_to(ROOT).as_posix(),
                ]
            )
        else:
            raise BuildError(f"unknown compiler profile {profile!r} for {source.stem}")
        result = subprocess.run(
            [
                str(maspsx_python),
                str(maspsx),
                "--aspsx-version=2.79",
                "--macro-inc",
                "--expand-div",
            ],
            cwd=ROOT,
            input=compiler_asm.read_text(encoding="utf-8"),
            text=True,
            capture_output=True,
        )
        if result.returncode:
            raise BuildError(f"maspsx failed for {source.name}: {result.stderr[:1000]}")
        maspsx_asm.write_text(result.stdout, encoding="utf-8")
        compiled[source.stem] = maspsx_asm
    return compiled


def defsyms(paths: tuple[Path, ...]) -> list[str]:
    arguments: list[str] = []
    for path in paths:
        for raw_line in path.read_text(encoding="utf-8").splitlines():
            line = raw_line.split("//", 1)[0].split("#", 1)[0].strip().rstrip(";")
            if line and "=" in line:
                symbol, value = (part.strip() for part in line.split("=", 1))
                arguments.extend(("--defsym", f"{symbol}={value}"))
    return arguments


def first_difference(expected: bytes, actual: bytes) -> str:
    common = min(len(expected), len(actual))
    offset = next((i for i in range(common) if expected[i] != actual[i]), common)
    return f"offset {offset:#x} (expected size {len(expected):#x}, built size {len(actual):#x})"


def build_overlay(
    name: str,
    bin_dir: Path | None,
    psyq_bin: Path | None,
    maspsx_path: Path | None,
    dosbox_path: Path | None = None,
    dos_cc1_path: Path | None = None,
) -> None:
    config = OVERLAYS[name]
    expected = config["expected"]
    if not expected.is_file():
        raise BuildError(f"missing {expected.relative_to(ROOT)}; run tools_src/extract.py")
    if digest(expected) != config["sha1"]:
        raise BuildError(f"{expected.name} has the wrong SHA-1")

    assembler = find_tool("mipsel-none-elf-as", bin_dir)
    linker = find_tool("mipsel-none-elf-ld", bin_dir)
    objcopy = find_tool("mipsel-none-elf-objcopy", bin_dir)

    out_dir = ROOT / "build" / "overlays" / name.lower()
    source = out_dir / "generated" / f"{name.lower()}.s"
    obj = source.with_suffix(".o")
    elf = out_dir / f"{name.lower()}.elf"
    image = out_dir / f"{name}.BIN"
    compiled = compile_c_sources(name, out_dir, psyq_bin, maspsx_path, dosbox_path, dos_cc1_path)
    write_aggregate(config, source, compiled)

    print(f"== {name}.BIN ({len(compiled)} matching C) ==")
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
            str(obj),
            str(source),
        ]
    )
    run(
        [
            str(linker),
            "-EL",
            "-T",
            str(config["linker"]),
            "--no-check-sections",
            *defsyms(config["undefined"]),
            "-o",
            str(elf),
        ]
    )
    run([str(objcopy), "-O", "binary", str(elf), str(image)])

    wanted = expected.read_bytes()
    actual = image.read_bytes()
    actual_sha1 = hashlib.sha1(actual).hexdigest()
    print(f"wanted: {config['sha1']} ({len(wanted)} bytes)")
    print(f"built : {actual_sha1} ({len(actual)} bytes)")
    if actual != wanted:
        raise BuildError("binary mismatch: " + first_difference(wanted, actual))
    print("MATCH")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("overlay", nargs="?", choices=OVERLAYS, type=str.upper)
    parser.add_argument("--all", action="store_true", help="verify every configured overlay")
    parser.add_argument("--bin-dir", type=Path)
    parser.add_argument("--psyq-bin", type=Path, help="directory containing CPPPSX.EXE and CC1PSX.EXE")
    parser.add_argument("--maspsx", type=Path, help="path to maspsx.py")
    parser.add_argument("--dosbox", type=Path, help="DOSBox-X executable for gcc272-dos functions")
    parser.add_argument("--dos-cc1", type=Path, help="DOS GCC 2.7.2 CC1PSX.EXE (default: PsyQ BIN/DOS)")
    args = parser.parse_args()
    if args.all == (args.overlay is not None):
        parser.error("provide one overlay name or --all")

    try:
        names = list(OVERLAYS) if args.all else [args.overlay]
        for name in names:
            build_overlay(name, args.bin_dir, args.psyq_bin, args.maspsx, args.dosbox, args.dos_cc1)
        print(f"Verified {len(names)} overlay(s).")
        return 0
    except (BuildError, OSError) as error:
        print(f"build overlay: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
