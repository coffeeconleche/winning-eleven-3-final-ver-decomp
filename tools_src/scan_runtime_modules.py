#!/usr/bin/env python3
"""Locate extracted runtime modules in a live PCSX-Redux RAM snapshot."""

from __future__ import annotations

import argparse
import hashlib
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
MODULES = ROOT / "extracted" / "modules"
RAM_BASE = 0x80000000


def read_ram(url: str) -> bytes:
    with urllib.request.urlopen(url, timeout=5) as response:
        return response.read()


def sample_offsets(size: int, width: int) -> list[int]:
    maximum = max(0, size - width)
    return sorted({0, min(0x100, maximum), maximum // 4, maximum // 2, maximum})


def locate_samples(ram: bytes, data: bytes) -> tuple[int | None, int, int]:
    width = min(4096, len(data))
    bases: dict[int, int] = {}
    samples = sample_offsets(len(data), width)
    for offset in samples:
        chunk = data[offset : offset + width]
        position = ram.find(chunk)
        if position >= 0:
            base = position - offset
            bases[base] = bases.get(base, 0) + 1
    if not bases:
        return None, 0, len(samples)
    base, matches = max(bases.items(), key=lambda item: item[1])
    return base, matches, len(samples)


def exact_modules(ram: bytes, modules: dict[str, bytes]) -> dict[str, int]:
    found: dict[str, int] = {}
    for name, data in modules.items():
        offset = ram.find(data)
        if offset >= 0:
            found[name] = RAM_BASE + offset
    return found


def watch(url: str, modules: dict[str, bytes], interval: float, capture_dir: Path) -> int:
    print(f"Watching PCSX-Redux every {interval:g}s; press Ctrl+C to stop.")
    seen: set[str] = set()
    previous: dict[str, int] = {}
    try:
        while True:
            ram = read_ram(url)
            current = exact_modules(ram, modules)
            for name, address in current.items():
                if previous.get(name) == address:
                    continue
                print(f"LOADED   {name:12} {address:#010x} size={len(modules[name]):#x}")
                if name not in seen:
                    capture_dir.mkdir(parents=True, exist_ok=True)
                    snapshot = capture_dir / f"{Path(name).stem.lower()}_first_seen.bin"
                    snapshot.write_bytes(ram)
                    print(f"snapshot: {snapshot}")
                    seen.add(name)
            for name in previous.keys() - current.keys():
                print(f"UNLOADED {name}")
            previous = current
            time.sleep(interval)
    except KeyboardInterrupt:
        print("Stopped.")
        return 0


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--url",
        default="http://127.0.0.1:8080/api/v1/cpu/ram/raw",
        help="PCSX-Redux raw RAM endpoint",
    )
    parser.add_argument(
        "--input",
        type=Path,
        help="scan a previously saved 2 MiB RAM image instead of the emulator",
    )
    parser.add_argument("--save", type=Path, help="optional path for the RAM snapshot")
    parser.add_argument(
        "--watch",
        action="store_true",
        help="continuously report exact module load/unload transitions",
    )
    parser.add_argument(
        "--interval",
        type=float,
        default=0.25,
        help="watch polling interval in seconds (default: 0.25)",
    )
    parser.add_argument(
        "--capture-dir",
        type=Path,
        default=ROOT / "extracted" / "runtime",
        help="where --watch saves the first RAM snapshot for each module",
    )
    args = parser.parse_args()

    if not MODULES.is_dir():
        print("missing extracted/modules; run tools_src/extract.py first", file=sys.stderr)
        return 1

    modules = {path.name: path.read_bytes() for path in sorted(MODULES.glob("*.BIN"))}
    if args.watch:
        if args.input:
            parser.error("--input cannot be combined with --watch")
        if args.interval <= 0:
            parser.error("--interval must be greater than zero")
        try:
            return watch(args.url, modules, args.interval, args.capture_dir)
        except (OSError, urllib.error.URLError) as error:
            print(f"lost connection to PCSX-Redux ({error})", file=sys.stderr)
            return 1

    if args.input:
        try:
            ram = args.input.read_bytes()
        except OSError as error:
            print(f"cannot read RAM image {args.input} ({error})", file=sys.stderr)
            return 1
        if len(ram) != 0x200000:
            print(f"RAM image must be exactly 0x200000 bytes, got {len(ram):#x}", file=sys.stderr)
            return 1
    else:
        try:
            ram = read_ram(args.url)
        except (OSError, urllib.error.URLError) as error:
            print(
                "cannot reach PCSX-Redux. Enable Configuration -> Emulation -> "
                f"Enable Web Server, then retry ({error})",
                file=sys.stderr,
            )
            return 1

    print(f"RAM: {len(ram):#x} bytes, sha1={hashlib.sha1(ram).hexdigest()}")
    if args.save:
        args.save.parent.mkdir(parents=True, exist_ok=True)
        args.save.write_bytes(ram)
        print(f"snapshot: {args.save}")

    for name, data in modules.items():
        exact = ram.find(data)
        if exact >= 0:
            print(f"{name:12} EXACT  {RAM_BASE + exact:#010x} size={len(data):#x}")
            continue
        base, matches, total = locate_samples(ram, data)
        if base is not None and matches >= 2:
            print(
                f"{name:12} PARTIAL {RAM_BASE + base:#010x} "
                f"samples={matches}/{total} size={len(data):#x}"
            )
        else:
            print(f"{name:12} absent")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
