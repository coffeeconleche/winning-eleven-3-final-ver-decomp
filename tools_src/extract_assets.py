#!/usr/bin/env python3
"""Extract all game assets from a Winning Eleven 3 Final Ver. disc image
and organize them into categorized subdirectories beneath assets/.

Supports:
  - .zip archive containing Track 1 (.bin) and optional .cue / audio tracks
  - .cue sheet referencing Track 1 (.bin) and optional audio tracks
  - .bin raw MODE2/2352 Track 1 image
  - .iso standard 2048-byte sector image
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
import sys
import zipfile
from collections import Counter
from pathlib import Path

TOOLS_DIR = Path(__file__).resolve().parent
if str(TOOLS_DIR) not in sys.path:
    sys.path.insert(0, str(TOOLS_DIR))

import extract as base_extract  # noqa: E402
from extract import (  # noqa: E402
    EXPECTED_EXE,
    EXPECTED_EXE_SHA1,
    MODULE_FILES,
    ROOT,
    SECTOR_SIZE,
    USER_OFFSET,
    USER_SIZE,
    ExtractionError,
    IsoEntry,
    safe_output,
    sha1,
)

MODULE_SET = {name.upper() for name in MODULE_FILES}
EXEC_NAMES = {EXPECTED_EXE.upper(), "SYSTEM.CNF"}
AUDIO_EXTS = {".RA", ".DA", ".XA", ".SEQ", ".VAB", ".VB", ".VH"}
MOVIE_EXTS = {".STR"}

CATEGORY_NAMES = (
    "01_executables",
    "02_overlays",
    "03_movies",
    "04_audio_data",
    "05_cd_audio",
    "06_game_data",
)


def categorize_iso_path(iso_path: str) -> tuple[str, Path]:
    """Map an ISO9660 relative path to (category_dir, relative_path_within_category)."""
    upper = iso_path.upper()
    parts = Path(iso_path).parts
    name_upper = parts[-1].upper()
    ext_upper = Path(name_upper).suffix

    if name_upper in EXEC_NAMES or ext_upper == ".EXE":
        return "01_executables", Path(iso_path)
    if name_upper in MODULE_SET:
        return "02_overlays", Path(iso_path)
    if (len(parts) > 1 and parts[0].upper() == "MOVIE") or ext_upper in MOVIE_EXTS:
        return "03_movies", Path(iso_path)
    if (len(parts) > 1 and parts[0].upper() == "SD_COMP") or ext_upper in AUDIO_EXTS:
        return "04_audio_data", Path(iso_path)
    return "06_game_data", Path(iso_path)


def read_iso_sector_data(image: bytes, lba: int, size: int, sector_size: int, user_offset: int) -> bytes:
    """Read `size` bytes of ISO9660 user data starting at `lba`."""
    output = bytearray()
    remaining = size
    while remaining:
        count = min(USER_SIZE, remaining)
        start = lba * sector_size + user_offset
        end = start + count
        if end > len(image):
            raise ExtractionError(f"LBA {lba} extends past disc image")
        output += image[start:end]
        remaining -= count
        lba += 1
    return bytes(output)


def parse_iso_entries(image: bytes, sector_size: int, user_offset: int) -> tuple[str, list[IsoEntry]]:
    """Parse ISO9660 directory tree for either 2352-byte MODE2 or 2048-byte ISO images."""
    if sector_size == SECTOR_SIZE and user_offset == USER_OFFSET:
        return base_extract.iso_entries(image)

    pvd = read_iso_sector_data(image, 16, USER_SIZE, sector_size, user_offset)
    if pvd[0] != 1 or pvd[1:6] != b"CD001":
        raise ExtractionError("Disc image is not a valid ISO9660 image")
    volume = pvd[40:72].decode("ascii", "replace").rstrip(" ")
    length = pvd[156]
    if length < 34:
        raise ExtractionError("ISO9660 root directory record is invalid")
    root = pvd[156 : 156 + length]
    entries: list[IsoEntry] = []

    def walk(parent: str, lba: int, size: int) -> None:
        directory = read_iso_sector_data(image, lba, size, sector_size, user_offset)
        offset = 0
        while offset < len(directory):
            record_length = directory[offset]
            if record_length == 0:
                offset = ((offset // USER_SIZE) + 1) * USER_SIZE
                continue
            record = directory[offset : offset + record_length]
            if len(record) != record_length or record_length < 34:
                raise ExtractionError(f"invalid directory record at {parent or '/'}+{offset:#x}")
            name_length = record[32]
            raw_name = record[33 : 33 + name_length]
            if raw_name not in (b"\x00", b"\x01"):
                name = raw_name.decode("ascii", "replace").split(";", 1)[0]
                path = f"{parent}/{name}" if parent else name
                entry = IsoEntry(
                    path=path,
                    lba=base_extract.little_u32(record, 2),
                    size=base_extract.little_u32(record, 10),
                    is_directory=bool(record[25] & 2),
                )
                entries.append(entry)
                if entry.is_directory:
                    walk(entry.path, entry.lba, entry.size)
            offset += record_length

    walk("", base_extract.little_u32(root, 2), base_extract.little_u32(root, 10))
    return volume, entries


def detect_sector_geometry(image: bytes) -> tuple[int, int]:
    """Detect (sector_size, user_offset) from image size and PVD signature."""
    if len(image) >= 17 * SECTOR_SIZE:
        pvd_mode2 = image[16 * SECTOR_SIZE + USER_OFFSET : 16 * SECTOR_SIZE + USER_OFFSET + 6]
        if pvd_mode2 == b"\x01CD001" and len(image) % SECTOR_SIZE == 0:
            return SECTOR_SIZE, USER_OFFSET
    if len(image) >= 17 * USER_SIZE:
        pvd_iso = image[16 * USER_SIZE : 16 * USER_SIZE + 6]
        if pvd_iso == b"\x01CD001" and len(image) % USER_SIZE == 0:
            return USER_SIZE, 0
    raise ExtractionError("Unsupported disc image format (expected MODE2/2352 BIN or 2048-byte ISO)")


def find_default_input() -> Path:
    """Find a single disc archive or image in the repository root."""
    for pattern in ("*.zip", "*.cue", "*.iso", "*.bin", "*.img"):
        matches = sorted(ROOT.glob(pattern))
        if len(matches) == 1:
            return matches[0]
        if len(matches) > 1:
            raise ExtractionError(
                f"Multiple {pattern} files found in {ROOT}; pass --input explicitly"
            )
    raise ExtractionError(
        f"No disc image (.zip, .cue, .iso, .bin) found in {ROOT}; pass --input <path>"
    )


def parse_cue_files(cue_text: str) -> list[str]:
    """Return referenced filenames from a CUE sheet in order."""
    return re.findall(r'FILE\s+"([^"]+)"', cue_text, flags=re.IGNORECASE)


def load_disc_source(input_path: Path) -> tuple[str, bytes, list[tuple[str, bytes]], str | None]:
    """Load Track 1 bytes and optional extra audio tracks/CUE from .zip, .cue, .bin, or .iso."""
    if not input_path.is_file():
        raise ExtractionError(f"Input file does not exist: {input_path}")

    suffix = input_path.suffix.lower()
    extra_audio: list[tuple[str, bytes]] = []
    cue_text: str | None = None

    if suffix == ".zip":
        track_name, track_bytes, cue_text = base_extract.read_track_one(input_path)
        with zipfile.ZipFile(input_path) as disc_zip:
            for name in sorted(disc_zip.namelist()):
                if name == track_name or name.endswith("/"):
                    continue
                lower = name.lower()
                if lower.endswith(".bin") or lower.endswith(".cue"):
                    extra_audio.append((Path(name).name, disc_zip.read(name)))
        return track_name, track_bytes, extra_audio, cue_text

    if suffix == ".cue":
        cue_text = input_path.read_text(encoding="utf-8", errors="replace")
        referenced = parse_cue_files(cue_text)
        if not referenced:
            raise ExtractionError(f"No FILE entries found in CUE: {input_path}")
        track1_path = (input_path.parent / referenced[0]).resolve()
        if not track1_path.is_file():
            raise ExtractionError(f"Track 1 file missing: {track1_path}")
        extra_audio.append((input_path.name, cue_text.encode("utf-8")))
        for ref in referenced[1:]:
            audio_path = (input_path.parent / ref).resolve()
            if audio_path.is_file():
                extra_audio.append((audio_path.name, audio_path.read_bytes()))
        return track1_path.name, track1_path.read_bytes(), extra_audio, cue_text

    if suffix in (".bin", ".iso", ".img"):
        return input_path.name, input_path.read_bytes(), extra_audio, cue_text

    raise ExtractionError(f"Unsupported input extension: {input_path.suffix}")


def copy_guide_to_output(out_dir: Path) -> None:
    """Copy docs/ASSET_EXTRACTION.md into out_dir/HUONG_DAN.md if available."""
    guide_src = ROOT / "docs" / "ASSET_EXTRACTION.md"
    if guide_src.is_file():
        shutil.copyfile(guide_src, out_dir / "HUONG_DAN.md")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--input",
        type=Path,
        help="Path to disc .zip, .cue, .bin, or .iso (auto-detects in repo root if omitted)",
    )
    parser.add_argument(
        "--out",
        type=Path,
        default=ROOT / "assets",
        help="Output root directory (default: assets/)",
    )
    parser.add_argument(
        "--list",
        action="store_true",
        help="List all ISO files and their target categories without extracting",
    )
    args = parser.parse_args()

    try:
        input_path = args.input.resolve() if args.input else find_default_input()
        track_name, track_bytes, extra_audio, _ = load_disc_source(input_path)
        sector_size, user_offset = detect_sector_geometry(track_bytes)
        volume, entries = parse_iso_entries(track_bytes, sector_size, user_offset)
        files = [entry for entry in entries if not entry.is_directory]

        print(f"Source  : {input_path}")
        print(f"Track 1 : {track_name} (sector={sector_size}, offset={user_offset})")
        print(f"Volume  : {volume or '(blank)'}")
        print(f"Files   : {len(files)} ISO files, {len(extra_audio)} extra CD audio/CUE files")

        if args.list:
            for entry in files:
                cat, rel = categorize_iso_path(entry.path)
                print(f"[{cat:14s}] {entry.size:10d} bytes  LBA {entry.lba:6d}  {entry.path} -> {cat}/{rel.as_posix()}")
            return 0

        out_dir = args.out.resolve()
        out_dir.mkdir(parents=True, exist_ok=True)
        for cat in CATEGORY_NAMES:
            (out_dir / cat).mkdir(parents=True, exist_ok=True)

        counts: Counter[str] = Counter()
        manifest_files: list[dict[str, object]] = []

        for entry in files:
            category, rel_path = categorize_iso_path(entry.path)
            target = safe_output(out_dir / category, rel_path)
            target.parent.mkdir(parents=True, exist_ok=True)
            data = read_iso_sector_data(track_bytes, entry.lba, entry.size, sector_size, user_offset)
            target.write_bytes(data)

            digest = sha1(data)
            if entry.path.upper() == EXPECTED_EXE and digest != EXPECTED_EXE_SHA1:
                print(
                    f"WARNING: {entry.path} SHA-1 {digest} != expected {EXPECTED_EXE_SHA1}",
                    file=sys.stderr,
                )

            counts[category] += 1
            manifest_files.append(
                {
                    "iso_path": entry.path,
                    "category": category,
                    "output_path": f"{category}/{rel_path.as_posix()}",
                    "size": len(data),
                    "lba": entry.lba,
                    "sha1": digest,
                }
            )

        for audio_name, audio_bytes in extra_audio:
            target = safe_output(out_dir / "05_cd_audio", Path(audio_name))
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(audio_bytes)
            counts["05_cd_audio"] += 1
            manifest_files.append(
                {
                    "iso_path": None,
                    "category": "05_cd_audio",
                    "output_path": f"05_cd_audio/{audio_name}",
                    "size": len(audio_bytes),
                    "lba": None,
                    "sha1": sha1(audio_bytes),
                }
            )

        manifest = {
            "schema": 1,
            "source": input_path.name,
            "volume": volume,
            "track_1": track_name,
            "sector_size": sector_size,
            "counts": dict(counts),
            "files": manifest_files,
        }
        (out_dir / "asset_manifest.json").write_text(
            json.dumps(manifest, indent=2) + "\n", encoding="utf-8"
        )
        copy_guide_to_output(out_dir)

        print("\nExtracted summary:")
        for cat in CATEGORY_NAMES:
            print(f"  {cat:15s}: {counts[cat]} files")
        print(f"\nManifest : {out_dir / 'asset_manifest.json'}")
        print(f"Guide    : {out_dir / 'HUONG_DAN.md'}")
        return 0
    except ExtractionError as error:
        print(f"error: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
