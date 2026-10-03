#!/usr/bin/env python3
"""Query direct resident-function callers and callees from Splat assembly."""

from __future__ import annotations

import argparse
import re
from collections import defaultdict
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
ASM = ROOT / "asm" / "nonmatchings" / "5EBC"
FUNCTION = re.compile(r"^func_[0-9A-Fa-f]{8}$")
CALL = re.compile(r"\b(?:jal|j)\s+(func_[0-9A-Fa-f]{8})\b")
SIZE = re.compile(r"^nonmatching\s+(func_[0-9A-Fa-f]{8})(?:,\s*(0x[0-9A-Fa-f]+))?")


def load_names() -> dict[str, str]:
    aliases: dict[str, str] = {}
    path = ROOT / "config" / "function_names.txt"
    if not path.is_file():
        return aliases
    pattern = re.compile(r"^\s*([A-Za-z_]\w*)\s*=\s*0x([0-9A-Fa-f]{8})")
    for line in path.read_text(encoding="utf-8").splitlines():
        match = pattern.match(line)
        if match:
            aliases[f"func_{match.group(2).upper()}"] = match.group(1)
    return aliases


def display(name: str, aliases: dict[str, str]) -> str:
    alias = aliases.get(name)
    return f"{name} ({alias})" if alias else name


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("functions", nargs="+", help="func_XXXXXXXX or 8-digit address")
    args = parser.parse_args()

    callees: dict[str, set[str]] = defaultdict(set)
    callers: dict[str, set[str]] = defaultdict(set)
    sizes: dict[str, int] = {}
    for path in ASM.glob("func_*.s"):
        caller = path.stem
        text = path.read_text(encoding="utf-8")
        first = SIZE.match(text)
        if first and first.group(2):
            sizes[caller] = int(first.group(2), 16)
        for callee in CALL.findall(text):
            callees[caller].add(callee)
            callers[callee].add(caller)

    aliases = load_names()
    for raw in args.functions:
        name = raw if raw.startswith("func_") else f"func_{raw.upper()}"
        if not FUNCTION.match(name):
            parser.error(f"invalid function: {raw}")
        print(f"{display(name, aliases)} size={sizes.get(name, 0):#x}")
        print("  callers:")
        for caller in sorted(callers[name]):
            print(f"    {display(caller, aliases)}")
        print("  callees:")
        for callee in sorted(callees[name]):
            print(f"    {display(callee, aliases)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
