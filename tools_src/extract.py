#!/usr/bin/env python3
"""Extract the verified executable and suspected code modules from the disc ZIP.

The source archive is expected to contain a raw MODE2/2352 Track 1 BIN and a
CUE file. Retail inputs are written only beneath extracted/, which is ignored.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
import sys
import zipfile
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
SECTOR_SIZE = 2352
USER_OFFSET = 24
USER_SIZE = 2048
EXPECTED_EXE = "SLPM_861.62"
EXPECTED_EXE_SHA1 = "7e480656a295dced6ec187286773ab897651e995"
MODULE_FILES = (
    "SELECT.BIN",
    "ENTER.BIN",
    "MOVIE.BIN",
    "TRAINING.BIN",
    "UNIFORM.BIN",
    "SELFORM.BIN",
    "SELSND.BIN",
    "ENDING.BIN",
    "STAFF.BIN",
)


class ExtractionError(RuntimeError):
    pass


@dataclass(frozen=True)
class IsoEntry:
    path: str
    lba: int
    size: int
    is_directory: bool


def sha1(data: bytes) -> str:
    return hashlib.sha1(data).hexdigest()


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def user_data(track: bytes, lba: int, size: int) -> bytes:
    output = bytearray()
    remaining = size
    while remaining:
        count = min(USER_SIZE, remaining)
        start = lba * SECTOR_SIZE + USER_OFFSET
        end = start + count
        if end > len(track):
            raise ExtractionError(f"LBA {lba} extends past Track 1")
        output += track[start:end]
        remaining -= count
        lba += 1
    return bytes(output)


def little_u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def iso_entries(track: bytes) -> tuple[str, list[IsoEntry]]:
    pvd = user_data(track, 16, USER_SIZE)
    if pvd[0] != 1 or pvd[1:6] != b"CD001":
        raise ExtractionError("Track 1 is not a supported ISO9660 MODE2 image")
    volume = pvd[40:72].decode("ascii", "replace").rstrip(" ")
    length = pvd[156]
    if length < 34:
        raise ExtractionError("ISO9660 root directory record is invalid")
    root = pvd[156 : 156 + length]
    entries: list[IsoEntry] = []

    def walk(parent: str, lba: int, size: int) -> None:
        directory = user_data(track, lba, size)
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
                    lba=little_u32(record, 2),
                    size=little_u32(record, 10),
                    is_directory=bool(record[25] & 2),
                )
                entries.append(entry)
                if entry.is_directory:
                    walk(entry.path, entry.lba, entry.size)
            offset += record_length

    walk("", little_u32(root, 2), little_u32(root, 10))
    return volume, entries


def find_archive(explicit: Path | None) -> Path:
    if explicit is not None:
        archive = explicit.resolve()
        if not archive.is_file():
            raise ExtractionError(f"archive does not exist: {archive}")
        return archive
    archives = sorted(ROOT.glob("*.zip"))
    if len(archives) != 1:
        raise ExtractionError(
            f"expected exactly one ZIP in {ROOT}, found {len(archives)}; "
            "pass --archive explicitly"
        )
    return archives[0]


def read_track_one(archive: Path) -> tuple[str, bytes, str | None]:
    try:
        with zipfile.ZipFile(archive) as disc_zip:
            names = disc_zip.namelist()
            candidates = [name for name in names if "Track 1" in name and name.lower().endswith(".bin")]
            if len(candidates) != 1:
                raise ExtractionError(
                    f"expected exactly one Track 1 BIN in {archive.name}, found {len(candidates)}"
                )
            track_name = candidates[0]
            track = disc_zip.read(track_name)
            cue_names = [name for name in names if name.lower().endswith(".cue")]
            cue = disc_zip.read(cue_names[0]).decode("ascii", "replace") if len(cue_names) == 1 else None
    except zipfile.BadZipFile as error:
        raise ExtractionError(f"invalid ZIP archive: {archive}") from error
    if len(track) % SECTOR_SIZE:
        raise ExtractionError(
            f"{track_name} size {len(track)} is not a multiple of {SECTOR_SIZE}"
        )
    return track_name, track, cue


def safe_output(base: Path, relative: Path) -> Path:
    base = base.resolve()
    target = (base / relative).resolve()
    if target != base and base not in target.parents:
        raise ExtractionError(f"refusing output outside {base}: {target}")
    return target


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--archive", type=Path, help="disc ZIP; defaults to the only ZIP in the repository root")
    parser.add_argument("--out", type=Path, default=ROOT / "extracted", help="output directory")
    parser.add_argument("--list", action="store_true", help="list the ISO filesystem without extracting")
    args = parser.parse_args()

    try:
        archive = find_archive(args.archive)
        track_name, track, cue = read_track_one(archive)
        volume, entries = iso_entries(track)
        files = {entry.path.upper(): entry for entry in entries if not entry.is_directory}

        print(f"archive : {archive}")
        print(f"track 1 : {track_name}")
        print(f"sectors : {len(track) // SECTOR_SIZE}")
        print(f"volume  : {volume or '(blank)'}")
        print(f"files   : {len(files)}")
        if args.list:
            for entry in entries:
                kind = "DIR " if entry.is_directory else "FILE"
                print(f"{kind} {entry.size:9d} LBA {entry.lba:6d} {entry.path}")
            return 0

        selected: list[tuple[str, Path]] = [(EXPECTED_EXE, Path(EXPECTED_EXE))]
        selected.extend((name, Path("modules") / name) for name in MODULE_FILES)
        out_dir = args.out.resolve()
        out_dir.mkdir(parents=True, exist_ok=True)
        manifest: dict[str, object] = {
            "schema": 1,
            "source_archive": archive.name,
            "track_1": {
                "name": track_name,
                "size": len(track),
                "sha256": sha256(track),
                "sector_size": SECTOR_SIZE,
                "user_offset": USER_OFFSET,
            },
            "volume": volume,
            "cue": cue,
            "files": [],
        }

        for iso_path, relative in selected:
            entry = files.get(iso_path.upper())
            if entry is None:
                raise ExtractionError(f"disc file is missing: {iso_path}")
            data = user_data(track, entry.lba, entry.size)
            digest = sha1(data)
            if iso_path == EXPECTED_EXE and digest != EXPECTED_EXE_SHA1:
                raise ExtractionError(
                    f"{EXPECTED_EXE} SHA-1 mismatch: got {digest}, expected {EXPECTED_EXE_SHA1}"
                )
            target = safe_output(out_dir, relative)
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(data)
            item = {
                "iso_path": iso_path,
                "output": relative.as_posix(),
                "lba": entry.lba,
                "size": entry.size,
                "sha1": digest,
                "sha256": sha256(data),
            }
            manifest["files"].append(item)  # type: ignore[union-attr]
            print(f"wrote {relative.as_posix():24s} {entry.size:9d} bytes  sha1 {digest}")

        manifest_path = safe_output(out_dir, Path("manifest.json"))
        manifest_path.write_text(json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
        print(f"manifest: {manifest_path}")
        return 0
    except (ExtractionError, OSError) as error:
        print(f"extract: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
