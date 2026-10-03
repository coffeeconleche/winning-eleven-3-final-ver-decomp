#!/usr/bin/env python3
"""Run a locally supplied DOS CC1PSX compiler without changing its assembly."""

from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import tempfile
from pathlib import Path


def compile_dos(
    compiler: Path, dosbox: Path, source: Path, output: Path, flags: list[str]
) -> None:
    """Use a private short-name workspace and require the compiler's success marker."""
    for path in (compiler, dosbox, source):
        if not path.is_file():
            raise OSError(f"missing DOS compilation input/tool: {path}")
    if any(not flag.startswith("-") or any(c in flag for c in ' \t\r\n&|<>\"') for flag in flags):
        raise ValueError("DOS compiler flags must be single, shell-safe option tokens")
    command = "CC1PSX.EXE " + " ".join(flags) + " INPUT.I -o OUTPUT.S >CC1.LOG"
    if len(command) > 126:
        raise ValueError("DOS compiler command exceeds the DOS command-line limit")
    output.parent.mkdir(parents=True, exist_ok=True)
    # Mount only this disposable directory, not the repository or the SDK.
    with tempfile.TemporaryDirectory(prefix="doscc1-", dir=output.parent) as temporary:
        work = Path(temporary).resolve()
        if '"' in str(work) or "\n" in str(work) or "\r" in str(work):
            raise ValueError("unsupported quote/newline in DOS mount path")
        shutil.copyfile(compiler, work / "CC1PSX.EXE")
        shutil.copyfile(source, work / "INPUT.I")
        (work / "RUN.BAT").write_text(
            "@echo off\n" + command + "\n"
            "if errorlevel 1 goto failed\n"
            "echo OK>STATUS.TXT\n"
            "goto done\n:failed\necho FAILED>STATUS.TXT\n:done\n",
            encoding="ascii", newline="\r\n",
        )
        config = work / "RUN.CONF"
        config.write_text(
            "[sdl]\noutput=surface\nautolock=false\nshowmenu=false\nwaitonerror=false\n"
            "[dosbox]\nmemsize=64\n[cpu]\ncore=normal\ncycles=max\n"
            "[mixer]\nnosound=true\n[joystick]\njoysticktype=none\n"
            "[midi]\nmpu401=none\nmididevice=none\n[autoexec]\n"
            f'mount c "{work}"\nc:\nRUN.BAT\nexit\n',
            encoding="utf-8",
        )
        options: dict = {}
        if os.name == "nt":
            startup = subprocess.STARTUPINFO()
            startup.dwFlags |= subprocess.STARTF_USESHOWWINDOW
            startup.wShowWindow = 0
            options.update(startupinfo=startup, creationflags=subprocess.CREATE_NO_WINDOW)
        try:
            result = subprocess.run(
                [str(dosbox.resolve()), "-silent", "-noconsole", "-conf", str(config)],
                cwd=work, capture_output=True, text=True, errors="replace", timeout=60, **options,
            )
        except subprocess.TimeoutExpired as error:
            raise OSError("DOS compiler timed out after 60 seconds") from error
        status = work / "STATUS.TXT"
        assembly = work / "OUTPUT.S"
        log = work / "CC1.LOG"
        diagnostics = log.read_text(encoding="ascii", errors="replace") if log.is_file() else ""
        if (result.returncode or not status.is_file() or status.read_text().strip() != "OK"
                or not assembly.is_file() or not assembly.stat().st_size):
            marker = status.read_text().strip() if status.is_file() else "missing"
            raise OSError(f"DOS compiler failed (runtime={result.returncode}, marker={marker!r}, "
                          f"assembly={assembly.is_file()}): "
                          + (diagnostics or result.stderr or result.stdout)[-2000:])
        # Copy the compiler's output verbatim. No instruction rewriting or patching.
        shutil.copyfile(assembly, output)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--compiler", required=True, type=Path)
    parser.add_argument("--dosbox", required=True, type=Path)
    parser.add_argument("--input", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("flags", nargs=argparse.REMAINDER)
    args = parser.parse_args()
    flags = args.flags[1:] if args.flags[:1] == ["--"] else args.flags
    try:
        compile_dos(args.compiler, args.dosbox, args.input, args.output, flags)
    except (OSError, ValueError) as error:
        parser.exit(1, f"dos cc1: {error}\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
