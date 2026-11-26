#!/usr/bin/env python3
"""Batch-extract all remaining 3D models (ENDMOD*, ENT_MOD), ending animations
(ENDANIME.BIN), stadium textures (GDC_*.BIN), and UI/BG textures (TITLE, DATSEL,
DATBG*, END2D*, WAIT_JP, HATA_CSR, NAME_CSR, ENDCSR, END_MONI).
"""

from __future__ import annotations

import struct
import sys
from pathlib import Path
from PIL import Image

TOOLS_DIR = Path(__file__).resolve().parent
if str(TOOLS_DIR) not in sys.path:
    sys.path.insert(0, str(TOOLS_DIR))

import export_skeleton_anim as esa  # noqa: E402

ROOT = TOOLS_DIR.parent
BIN_DIR = ROOT / "assets" / "06_game_data" / "BIN"


def konami_lzss(data: bytes, offset: int) -> bytes:
    out = bytearray()
    pos = offset
    flags = 0
    while pos < len(data):
        if not (flags & 0x100):
            flags = data[pos] | 0xFF00
            pos += 1
            if pos >= len(data):
                break
        tag = data[pos]
        if not (flags & 1):
            out.append(tag)
            pos += 1
        elif not (tag & 0x80):
            if pos + 1 >= len(data):
                break
            dist = data[pos + 1] | ((tag & 3) << 8)
            count = (tag >> 2) + 2
            pos += 2
            for _ in range(count + 1):
                out.append(out[-dist] if 0 < dist <= len(out) else 0)
        else:
            pos += 1
            if not (tag & 0x40):
                dist = (tag & 0xF) + 1
                count = (tag >> 4) - 7
                for _ in range(count + 1):
                    out.append(out[-dist] if 0 < dist <= len(out) else 0)
            elif tag == 0xFF:
                return bytes(out)
            else:
                for _ in range(tag - 0xB9 + 1):
                    if pos >= len(data):
                        break
                    out.append(data[pos])
                    pos += 1
        flags >>= 1
    return bytes(out)


def extract_tmds_from_bin(src: Path, out_dir: Path) -> int:
    data = src.read_bytes()
    out_dir.mkdir(parents=True, exist_ok=True)
    idx = 0
    for off in range(0, len(data) - 12, 4):
        if data[off : off + 12] == b"\x41\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00":
            try:
                mesh = esa.parse_tmd(data, off)
                if mesh.vertices and mesh.indices:
                    lines = [f"# {src.name} TMD off=0x{off:05X}"]
                    for vx, vy, vz in mesh.vertices:
                        lines.append(f"v {vx * 0.004:.6f} {vy * 0.004:.6f} {vz * 0.004:.6f}")
                    for i in range(0, len(mesh.indices), 3):
                        lines.append(f"f {mesh.indices[i] + 1} {mesh.indices[i + 1] + 1} {mesh.indices[i + 2] + 1}")
                    (out_dir / f"part_{idx:02d}_off_{off:05X}.obj").write_text("\n".join(lines) + "\n", encoding="utf-8")
                    idx += 1
            except Exception:
                pass
    return idx


def extract_endanime() -> int:
    end_path = BIN_DIR / "ENDANIME.BIN"
    mod_path = BIN_DIR / "MOD1_01.BIN"
    if not end_path.is_file() or not mod_path.is_file():
        return 0
    data = end_path.read_bytes()
    mod_data = mod_path.read_bytes()
    base_parts = esa.parse_mod_with_fallback(mod_data, 3, lod=0)
    load = 0x8014A000
    ptrs = []
    for i in range(0, 64, 4):
        v = struct.unpack_from("<I", data, i)[0]
        if load <= v < load + len(data):
            ptrs.append(v)
        else:
            break
    out_dir = ROOT / "assets" / "07_exported_3d" / "ending_animations"
    out_dir.mkdir(parents=True, exist_ok=True)
    exported = 0
    for aid, ptr in enumerate(ptrs):
        pos = ptr - load
        frame_ptrs = []
        while pos + 4 <= len(data):
            fv = struct.unpack_from("<I", data, pos)[0]
            if fv == 11 or not (load <= fv < load + len(data)):
                break
            frame_ptrs.append(fv)
            pos += 4
        frames = []
        for fp in frame_ptrs:
            foff = fp - load
            if foff + 12 * 12 <= len(data):
                frames.append([struct.unpack_from("<6h", data, foff + b * 12) for b in range(12)])
        if frames:
            esa.export_gltf(base_parts, frames, out_dir / f"end_anim_{aid:02d}_{len(frames)}f.gltf")
            exported += 1
    return exported


def extract_descriptor_textures(src: Path, out_dir: Path) -> int:
    """Scan a BIN file for func_80019564 16-byte texture descriptors and extract LZSS/raw textures."""
    d = src.read_bytes()
    # Find pointer table at start of file
    ptrs = []
    for i in range(0, min(64, len(d)), 4):
        v = struct.unpack_from("<I", d, i)[0]
        if 0x80100000 <= v <= 0x801F0000:
            ptrs.append(v)
        else:
            break
    if not ptrs:
        return 0

    # Infer load address from descriptor table ending in 0xFF 00 00 00 or from ptr[0]
    candidates = []
    for off in range(0, len(d) - 16, 4):
        t, cid, x, y, w, h, pad, ptr = struct.unpack_from("<BBHHHHHI", d, off)
        if t == 10 and pad == 0 and 1 <= w <= 512 and 1 <= h <= 512 and 0x80100000 <= ptr <= 0x801F0000:
            candidates.append((off, t, cid, x, y, w, h, ptr))

    if not candidates:
        return 0

    # Find load_addr by matching the largest pointer in ptrs to end-of-data or 0xFF
    # Usually ptrs[0] is the texture descriptor table! Let's test load_addr such that ptr - load_addr is valid
    # Most BIN files have ptrs[0] pointing to the first descriptor table, or ptrs[-1] near end
    best_load = None
    # Heuristic: first candidate's ptr often equals 0x80100000 + ...; try aligning first candidate's ptr to offset 4*len(ptrs)
    for off_guess in (len(ptrs) * 4,):
        pass
    # Better: find the lowest ptr among candidates; it usually points right after the header (e.g. 4*len(ptrs) or +8)
    min_ptr = min(c[7] for c in candidates)
    for hdr_off in range(4, 128, 4):
        test_load = min_ptr - hdr_off
        if test_load > 0x80100000 and all(0 <= c[7] - test_load < len(d) for c in candidates):
            # Verify first pointer in ptrs also lands inside file
            if all(0 <= p - test_load < len(d) for p in ptrs):
                best_load = test_load
                break
    if best_load is None:
        return 0

    out_dir.mkdir(parents=True, exist_ok=True)
    exported = 0
    seen_ptrs = set()
    for idx, (_off, t, cid, x, y, w, h, ptr) in enumerate(candidates):
        if ptr in seen_ptrs:
            continue
        seen_ptrs.add(ptr)
        dec = konami_lzss(d, ptr - best_load)
        expected = w * 2 * h
        if len(dec) < 64:
            continue
        # Auto-detect 4bpp vs 8bpp from decompressed size vs (w*2*h)
        if len(dec) == expected or abs(len(dec) - expected) <= 64:
            # 4bpp: w halfwords = w*4 pixels wide
            px = bytearray()
            for b in dec[:expected]:
                px.append((b & 0x0F) * 17)
                px.append(((b >> 4) & 0x0F) * 17)
            if len(px) >= w * 4 * h:
                img = Image.frombytes("L", (w * 4, h), bytes(px[: w * 4 * h]))
                img.save(out_dir / f"tex_{exported:02d}_vram_{x}_{y}_{w*4}x{h}.png")
                exported += 1
        elif len(dec) >= w * 2 * h:
            img = Image.frombytes("L", (w * 2, h), dec[: w * 2 * h])
            img.save(out_dir / f"tex_{exported:02d}_vram_{x}_{y}_{w*2}x{h}.png")
            exported += 1
    return exported


def main() -> int:
    # 1. Ending & Entrance 3D models
    mod_total = 0
    for name in [f"ENDMOD{i}.BIN" for i in range(9)] + ["ENT_MOD.BIN"]:
        p = BIN_DIR / name
        if p.is_file():
            cnt = extract_tmds_from_bin(p, ROOT / "assets" / "07_exported_3d" / "ending_and_entrance_models" / p.stem)
            mod_total += cnt
    print(f"Ending/Entrance TMD meshes: {mod_total}")

    # 2. Ending animations
    end_anims = extract_endanime()
    print(f"Ending animations (glTF): {end_anims}")

    # 3. Stadium textures (GDC_*.BIN)
    gdc_total = 0
    for p in sorted(BIN_DIR.glob("GDC_*.BIN")):
        cnt = extract_descriptor_textures(p, ROOT / "assets" / "12_stadium_textures" / p.stem)
        gdc_total += cnt
    print(f"Stadium textures (GDC_*.BIN): {gdc_total} PNGs")

    # 4. UI & Background textures
    ui_total = 0
    for pattern in ("TITLE.BIN", "DATSEL.BIN", "WAIT_JP.BIN", "END2D*.BIN", "ENDCSR.BIN", "END_MONI.BIN", "HATA_CSR.BIN", "NAME_CSR.BIN", "DATBG*.BIN"):
        for p in sorted(BIN_DIR.glob(pattern)):
            cnt = extract_descriptor_textures(p, ROOT / "assets" / "13_ui_and_bg_textures" / p.stem)
            ui_total += cnt
    print(f"UI & BG textures: {ui_total} PNGs")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
