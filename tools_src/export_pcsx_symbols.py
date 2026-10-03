#!/usr/bin/env python3
"""Export the current resident labels in PCSX-Redux's address/name format."""

from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
OUTPUT = ROOT / "config" / "SLPM_861.62.pcsx.map"
RAM_START = 0x80010000
RAM_END = 0x8011CE70
LABEL = re.compile(r"^\s*(?:glabel|dlabel)\s+([A-Za-z_.$][\w.$]*)\s*$")
ADDRESS_SUFFIX = re.compile(r"(?:^|_)([0-9A-Fa-f]{8})$")
ASSIGNMENT = re.compile(
    r"^\s*([A-Za-z_.$][\w.$]*)\s*=\s*(0x[0-9A-Fa-f]+)\s*;?"
)


def address_from_name(name: str) -> int | None:
    match = ADDRESS_SUFFIX.search(name)
    return int(match.group(1), 16) if match else None


def main() -> int:
    symbols: dict[int, str] = {}

    for path in sorted((ROOT / "asm").rglob("*.s")):
        for line in path.read_text(encoding="utf-8").splitlines():
            match = LABEL.match(line)
            if not match:
                continue
            name = match.group(1)
            address = address_from_name(name)
            if address is not None and RAM_START <= address < RAM_END:
                symbols[address] = name

    for filename in ("undefined_funcs_auto.txt", "undefined_syms_auto.txt", "symbol_addrs.txt"):
        path = ROOT / "config" / filename
        if not path.is_file():
            continue
        for line in path.read_text(encoding="utf-8").splitlines():
            match = ASSIGNMENT.match(line)
            if not match:
                continue
            name, value = match.groups()
            address = int(value, 16)
            if RAM_START <= address < RAM_END:
                symbols.setdefault(address, name)

    # Working semantic names intentionally replace generic func_XXXXXXXX labels
    # in the debugger without changing the matching assembly sources.
    names = ROOT / "config" / "function_names.txt"
    if names.is_file():
        for line in names.read_text(encoding="utf-8").splitlines():
            match = ASSIGNMENT.match(line)
            if match:
                name, value = match.groups()
                address = int(value, 16)
                if RAM_START <= address < RAM_END:
                    symbols[address] = name

    # The PS-X EXE entry point is eight bytes into the startup routine.
    symbols[0x800156C4] = "SLPM_861_62_entrypoint"

    OUTPUT.write_text(
        "".join(f"{address:08X} {name}\n" for address, name in sorted(symbols.items())),
        encoding="ascii",
    )
    print(f"wrote {len(symbols)} symbols to {OUTPUT.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
