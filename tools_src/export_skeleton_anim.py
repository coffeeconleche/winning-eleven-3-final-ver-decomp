#!/usr/bin/env python3
"""Inspect and export 3D player models, 12-bone skeleton, and keyframe animations
from Winning Eleven 3 Final Ver. (MOD1_*.BIN / MOD2_*.BIN + ANIME.BIN).

Outputs standard glTF 2.0 (.gltf with embedded base64 buffer) or Wavefront .obj.
"""

from __future__ import annotations

import argparse
import base64
import json
import math
import struct
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

BONE_NAMES = (
    "00_Head",
    "01_Torso",
    "02_R_UpperArm",
    "03_R_Forearm",
    "04_L_UpperArm",
    "05_L_Forearm",
    "06_R_Thigh",
    "07_R_Shin",
    "08_R_Foot",
    "09_L_Thigh",
    "10_L_Shin",
    "11_L_Foot",
)

ANIME_LOAD_ADDR = 0x8014A000
ANIME_SENTINEL = 11  # 0x0000000B terminates each animation's frame pointer list


@dataclass
class TmdMesh:
    vertices: list[tuple[float, float, float]]
    indices: list[int]
    uvs: list[tuple[float, float]] | None = None


def parse_tmd(data: bytes, off: int) -> TmdMesh:
    """Parse a PS1 TMD (0x00000041) single-object mesh into right-handed glTF coords."""
    tmd_id, _flags, nobj = struct.unpack_from("<3I", data, off)
    if tmd_id != 0x41 or nobj < 1:
        raise ValueError(f"Invalid TMD header at 0x{off:X}: id=0x{tmd_id:X}, nobj={nobj}")

    obj_base = off + 12
    v_top, n_vert, _n_top, _n_norm, p_top, n_prim, _scale = struct.unpack_from(
        "<6Ii", data, obj_base
    )

    v_off = obj_base + v_top
    raw_verts: list[tuple[float, float, float]] = []
    for i in range(n_vert):
        vx, vy, vz = struct.unpack_from("<3h", data, v_off + i * 8)
        # Convert PS1 (+Y down, +Z forward) -> glTF (+Y up, -Z forward, right-handed)
        raw_verts.append((float(vx), float(-vy), float(-vz)))

    vertices: list[tuple[float, float, float]] = []
    uvs: list[tuple[float, float]] = []
    indices: list[int] = []
    p_off = obj_base + p_top

    def emit_tri(vi0: int, vi1: int, vi2: int, uv0: tuple[float, float], uv1: tuple[float, float], uv2: tuple[float, float]) -> None:
        base_i = len(vertices)
        vertices.extend((raw_verts[vi0], raw_verts[vi1], raw_verts[vi2]))
        uvs.extend((uv0, uv1, uv2))
        indices.extend((base_i, base_i + 1, base_i + 2))

    for _ in range(n_prim):
        _olen, ilen, _flag, mode = struct.unpack_from("<4B", data, p_off)
        halfs = struct.unpack_from(f"<{ilen * 2}H", data, p_off + 4)
        if mode == 0x2C:  # POLY_FT4 (quad: v0, v1, v2, v3)
            u0, v0_uv, _cba, u1, v1_uv, _tsb, u2, v2_uv, _, u3, v3_uv, _ = struct.unpack_from(
                "<BBHBBHBBHBBH", data, p_off + 4
            )
            v0, v1, v2, v3 = halfs[9], halfs[10], halfs[11], halfs[12]
            t0 = (u0 / 128.0, v0_uv / 256.0)
            t1 = (u1 / 128.0, v1_uv / 256.0)
            t2 = (u2 / 128.0, v2_uv / 256.0)
            t3 = (u3 / 128.0, v3_uv / 256.0)
            emit_tri(v0, v1, v2, t0, t1, t2)
            emit_tri(v1, v3, v2, t1, t3, t2)
        elif mode in (0x24, 0x20, 0x30, 0x34):  # triangle variants
            v0, v1, v2 = halfs[-4], halfs[-3], halfs[-2]
            emit_tri(v0, v1, v2, (0.0, 0.0), (0.0, 0.0), (0.0, 0.0))
        elif mode in (0x28, 0x38, 0x3C):  # other quad variants
            v0, v1, v2, v3 = halfs[-5], halfs[-4], halfs[-3], halfs[-2]
            emit_tri(v0, v1, v2, (0.0, 0.0), (0.0, 0.0), (0.0, 0.0))
            emit_tri(v1, v3, v2, (0.0, 0.0), (0.0, 0.0), (0.0, 0.0))
        p_off += 4 + ilen * 4

    return TmdMesh(vertices=vertices, indices=indices, uvs=uvs)


def detect_mod_load_addr(data: bytes) -> int:
    ptrs = struct.unpack_from("<22I", data, 0)
    return ptrs[0] - 22 * 4


def parse_mod_record(
    data: bytes, record_idx: int, lod: int = 0
) -> list[tuple[int, TmdMesh | None]]:
    """Return 12 (opcode, TmdMesh | None) entries for the given player record & LOD (0 or 1)."""
    load_addr = detect_mod_load_addr(data)
    ptrs = struct.unpack_from("<22I", data, 0)
    if not (0 <= record_idx < len(ptrs)):
        raise ValueError(f"record_idx {record_idx} out of range 0..{len(ptrs)-1}")

    rec_off = ptrs[record_idx] - load_addr
    slot_base = 0 if lod == 0 else 12
    parts: list[tuple[int, TmdMesh | None]] = []
    for s in range(12):
        op, ptr = struct.unpack_from("<2I", data, rec_off + (slot_base + s) * 8)
        if ptr != 0:
            mesh = parse_tmd(data, ptr - load_addr)
            parts.append((op, mesh))
        else:
            parts.append((op, None))
    return parts


def parse_mod_with_fallback(
    data: bytes, record_idx: int, lod: int = 0
) -> list[tuple[int, TmdMesh | None]]:
    """Parse 12 parts, filling NULL shared slots from the first record that has a local TMD."""
    parts = parse_mod_record(data, record_idx, lod)
    for s in range(12):
        if parts[s][1] is None:
            for r in range(22):
                alt = parse_mod_record(data, r, lod)[s]
                if alt[1] is not None:
                    parts[s] = (parts[s][0], alt[1])
                    break
    return parts


def parse_anime_bin(data: bytes) -> dict[int, list[list[tuple[int, int, int, int, int, int]]]]:
    """Parse ANIME.BIN into {anim_id: [frame0_12bones, frame1_12bones, ...]}."""
    top_ptrs = struct.unpack_from("<123I", data, 0)
    anims: dict[int, list[list[tuple[int, int, int, int, int, int]]]] = {}
    for anim_id, ptr in enumerate(top_ptrs):
        if ptr == 0 or not (ANIME_LOAD_ADDR <= ptr < ANIME_LOAD_ADDR + len(data)):
            continue
        pos = ptr - ANIME_LOAD_ADDR
        frame_ptrs: list[int] = []
        while pos + 4 <= len(data):
            fv = struct.unpack_from("<I", data, pos)[0]
            if fv == ANIME_SENTINEL or not (ANIME_LOAD_ADDR <= fv < ANIME_LOAD_ADDR + len(data)):
                break
            frame_ptrs.append(fv)
            pos += 4
        if not frame_ptrs:
            continue
        frames: list[list[tuple[int, int, int, int, int, int]]] = []
        for fp in frame_ptrs:
            foff = fp - ANIME_LOAD_ADDR
            if foff + 12 * 12 > len(data):
                break
            bones = [struct.unpack_from("<6h", data, foff + b * 12) for b in range(12)]
            frames.append(bones)
        if frames:
            anims[anim_id] = frames
    return anims


def ps1_euler_to_gltf_quat(rx: int, ry: int, rz: int) -> tuple[float, float, float, float]:
    """Convert PS1 GTE 12-bit angles (4096 = 2*pi) to a glTF quaternion (x, y, z, w)."""
    scale = (2.0 * math.pi) / 4096.0
    # Axis conversion (+Y down, +Z fwd -> +Y up, -Z fwd): (rx, -ry, -rz)
    ax = rx * scale
    ay = -ry * scale
    az = -rz * scale

    cx, sx = math.cos(ax * 0.5), math.sin(ax * 0.5)
    cy, sy = math.cos(ay * 0.5), math.sin(ay * 0.5)
    cz, sz = math.cos(az * 0.5), math.sin(az * 0.5)

    # ZYX intrinsic / XYZ extrinsic composition
    w = cx * cy * cz + sx * sy * sz
    x = sx * cy * cz - cx * sy * sz
    y = cx * sy * cz + sx * cy * sz
    z = cx * cy * sz - sx * sy * cz
    return (x, y, z, w)


def quat_rotate_vec(q: tuple[float, float, float, float], v: tuple[float, float, float]) -> tuple[float, float, float]:
    qx, qy, qz, qw = q
    vx, vy, vz = v
    tx = 2.0 * (qy * vz - qz * vy)
    ty = 2.0 * (qz * vx - qx * vz)
    tz = 2.0 * (qx * vy - qy * vx)
    return (
        vx + qw * tx + (qy * tz - qz * ty),
        vy + qw * ty + (qz * tx - qx * tz),
        vz + qw * tz + (qx * ty - qy * tx),
    )


def export_gltf(
    parts: list[tuple[int, TmdMesh | None]],
    frames: list[list[tuple[int, int, int, int, int, int]]],
    out_path: Path,
    fps: float = 30.0,
    world_scale: float = 0.004,
    texture_uri: str | None = None,
) -> None:
    """Export 12-bone player model + keyframe animation to a self-contained glTF 2.0 file."""
    bin_buf = bytearray()
    buffer_views: list[dict[str, int]] = []
    accessors: list[dict[str, object]] = []
    meshes: list[dict[str, object]] = []
    nodes: list[dict[str, object]] = []

    def append_bytes(raw: bytes, target: int | None = None) -> int:
        while len(bin_buf) % 4 != 0:
            bin_buf.append(0)
        offset = len(bin_buf)
        bin_buf.extend(raw)
        bv: dict[str, int] = {"buffer": 0, "byteOffset": offset, "byteLength": len(raw)}
        if target is not None:
            bv["target"] = target
        idx = len(buffer_views)
        buffer_views.append(bv)
        return idx

    # Build 12 bone nodes (indices 0..11) + 1 root node (index 12)
    for b in range(12):
        _op, mesh = parts[b]
        rx, ry, rz, px, py, pz = frames[0][b]
        node: dict[str, object] = {
            "name": BONE_NAMES[b],
            "translation": [px * world_scale, -py * world_scale, -pz * world_scale],
            "rotation": list(ps1_euler_to_gltf_quat(rx, ry, rz)),
        }
        if mesh is not None and mesh.vertices and mesh.indices:
            pos_bytes = b"".join(
                struct.pack("<3f", x * world_scale, y * world_scale, z * world_scale)
                for x, y, z in mesh.vertices
            )
            xs = [v[0] * world_scale for v in mesh.vertices]
            ys = [v[1] * world_scale for v in mesh.vertices]
            zs = [v[2] * world_scale for v in mesh.vertices]
            pos_bv = append_bytes(pos_bytes, 34962)
            pos_acc = len(accessors)
            accessors.append(
                {
                    "bufferView": pos_bv,
                    "componentType": 5126,
                    "count": len(mesh.vertices),
                    "type": "VEC3",
                    "min": [min(xs), min(ys), min(zs)],
                    "max": [max(xs), max(ys), max(zs)],
                }
            )

            idx_bytes = b"".join(struct.pack("<H", idx) for idx in mesh.indices)
            idx_bv = append_bytes(idx_bytes, 34963)
            idx_acc = len(accessors)
            accessors.append(
                {
                    "bufferView": idx_bv,
                    "componentType": 5123,
                    "count": len(mesh.indices),
                    "type": "SCALAR",
                }
            )

            attrs: dict[str, int] = {"POSITION": pos_acc}
            if mesh.uvs:
                uv_bytes = b"".join(struct.pack("<2f", u, v) for u, v in mesh.uvs)
                uv_bv = append_bytes(uv_bytes, 34962)
                uv_acc = len(accessors)
                accessors.append(
                    {
                        "bufferView": uv_bv,
                        "componentType": 5126,
                        "count": len(mesh.uvs),
                        "type": "VEC2",
                    }
                )
                attrs["TEXCOORD_0"] = uv_acc

            prim: dict[str, object] = {"attributes": attrs, "indices": idx_acc}
            if texture_uri is not None:
                prim["material"] = 0

            mesh_idx = len(meshes)
            meshes.append(
                {
                    "name": f"{BONE_NAMES[b]}_Mesh",
                    "primitives": [prim],
                }
            )
            node["mesh"] = mesh_idx
        nodes.append(node)

    root_idx = len(nodes)
    nodes.append({"name": "PlayerRoot", "children": list(range(12))})

    animations: list[dict[str, object]] = []
    if len(frames) > 0:
        times = [i / fps for i in range(len(frames))]
        time_bv = append_bytes(b"".join(struct.pack("<f", t) for t in times))
        time_acc = len(accessors)
        accessors.append(
            {
                "bufferView": time_bv,
                "componentType": 5126,
                "count": len(times),
                "type": "SCALAR",
                "min": [times[0]],
                "max": [times[-1]],
            }
        )

        samplers: list[dict[str, object]] = []
        channels: list[dict[str, object]] = []
        for b in range(12):
            trans_raw = bytearray()
            rot_raw = bytearray()
            for frame in frames:
                rx, ry, rz, px, py, pz = frame[b]
                trans_raw.extend(struct.pack("<3f", px * world_scale, -py * world_scale, -pz * world_scale))
                rot_raw.extend(struct.pack("<4f", *ps1_euler_to_gltf_quat(rx, ry, rz)))

            t_bv = append_bytes(bytes(trans_raw))
            t_acc = len(accessors)
            accessors.append(
                {"bufferView": t_bv, "componentType": 5126, "count": len(frames), "type": "VEC3"}
            )
            r_bv = append_bytes(bytes(rot_raw))
            r_acc = len(accessors)
            accessors.append(
                {"bufferView": r_bv, "componentType": 5126, "count": len(frames), "type": "VEC4"}
            )

            t_samp = len(samplers)
            samplers.append({"input": time_acc, "interpolation": "LINEAR", "output": t_acc})
            channels.append({"sampler": t_samp, "target": {"node": b, "path": "translation"}})

            r_samp = len(samplers)
            samplers.append({"input": time_acc, "interpolation": "LINEAR", "output": r_acc})
            channels.append({"sampler": r_samp, "target": {"node": b, "path": "rotation"}})

        animations.append({"name": "WE3_Anim", "samplers": samplers, "channels": channels})

    b64 = base64.b64encode(bytes(bin_buf)).decode("ascii")
    gltf: dict[str, object] = {
        "asset": {"version": "2.0", "generator": "we3-final-decomp export_skeleton_anim.py"},
        "scene": 0,
        "scenes": [{"nodes": [root_idx]}],
        "nodes": nodes,
        "meshes": meshes,
        "animations": animations,
        "buffers": [{"uri": f"data:application/octet-stream;base64,{b64}", "byteLength": len(bin_buf)}],
        "bufferViews": buffer_views,
        "accessors": accessors,
    }
    if texture_uri is not None:
        gltf["samplers"] = [{"magFilter": 9728, "minFilter": 9728, "wrapS": 10497, "wrapT": 10497}]
        gltf["images"] = [{"uri": texture_uri}]
        gltf["textures"] = [{"sampler": 0, "source": 0}]
        gltf["materials"] = [
            {
                "name": "WE3_Kit_Material",
                "pbrMetallicRoughness": {
                    "baseColorTexture": {"index": 0},
                    "metallicFactor": 0.0,
                    "roughnessFactor": 0.9,
                },
            }
        ]
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(gltf, indent=2), encoding="utf-8")


def export_obj(
    parts: list[tuple[int, TmdMesh | None]],
    frame: list[tuple[int, int, int, int, int, int]],
    out_path: Path,
    world_scale: float = 0.004,
) -> None:
    """Export a single posed frame to Wavefront .obj (including UVs)."""
    lines = ["# Winning Eleven 3 Final Ver. 12-bone player export"]
    v_offset = 1
    for b in range(12):
        _op, mesh = parts[b]
        if mesh is None or not mesh.vertices:
            continue
        rx, ry, rz, px, py, pz = frame[b]
        q = ps1_euler_to_gltf_quat(rx, ry, rz)
        tx, ty, tz = px * world_scale, -py * world_scale, -pz * world_scale
        lines.append(f"o {BONE_NAMES[b]}")
        for vx, vy, vz in mesh.vertices:
            rxv, ryv, rzv = quat_rotate_vec(q, (vx * world_scale, vy * world_scale, vz * world_scale))
            lines.append(f"v {rxv + tx:.6f} {ryv + ty:.6f} {rzv + tz:.6f}")
        if mesh.uvs:
            for u, v in mesh.uvs:
                lines.append(f"vt {u:.6f} {1.0 - v:.6f}")
            for i in range(0, len(mesh.indices), 3):
                a, b_i, c = mesh.indices[i] + v_offset, mesh.indices[i + 1] + v_offset, mesh.indices[i + 2] + v_offset
                lines.append(f"f {a}/{a} {b_i}/{b_i} {c}/{c}")
        else:
            for i in range(0, len(mesh.indices), 3):
                a, b_i, c = mesh.indices[i] + v_offset, mesh.indices[i + 1] + v_offset, mesh.indices[i + 2] + v_offset
                lines.append(f"f {a} {b_i} {c}")
        v_offset += len(mesh.vertices)

    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--mod",
        type=Path,
        default=ROOT / "assets" / "06_game_data" / "BIN" / "MOD1_01.BIN",
        help="Path to MOD1_*.BIN or MOD2_*.BIN",
    )
    parser.add_argument(
        "--anime",
        type=Path,
        default=ROOT / "assets" / "06_game_data" / "BIN" / "ANIME.BIN",
        help="Path to ANIME.BIN",
    )
    parser.add_argument("--record", type=int, default=3, help="Player record index (0..21)")
    parser.add_argument("--lod", type=int, default=0, choices=(0, 1), help="LOD level (0=high, 1=low)")
    parser.add_argument("--anim", type=int, default=2, help="Animation ID in ANIME.BIN (e.g. 1=idle, 2=run)")
    parser.add_argument("--frame", type=int, default=0, help="Frame index for --obj export")
    parser.add_argument("--gltf", type=Path, help="Output .gltf path")
    parser.add_argument("--obj", type=Path, help="Output .obj path")
    parser.add_argument("--inspect", action="store_true", help="Print animation & bone summary")
    args = parser.parse_args()

    mod_data = args.mod.read_bytes()
    anime_data = args.anime.read_bytes()
    anims = parse_anime_bin(anime_data)

    if args.inspect or (args.gltf is None and args.obj is None):
        print(f"ANIME.BIN animations parsed: {len(anims)}")
        for aid in sorted(anims)[:25]:
            print(f"  anim[{aid:3d}]: {len(anims[aid]):3d} frames")
        parts = parse_mod_with_fallback(mod_data, args.record, args.lod)
        print(f"\nRecord {args.record} (LOD {args.lod}) 12 bone slots:")
        for b, (op, mesh) in enumerate(parts):
            v_cnt = len(mesh.vertices) if mesh else 0
            t_cnt = len(mesh.indices) // 3 if mesh else 0
            print(f"  {BONE_NAMES[b]:15s} op=0x{op:02X} verts={v_cnt:3d} tris={t_cnt:3d}")

    if args.anim not in anims:
        raise SystemExit(f"Animation ID {args.anim} not found in {args.anime}")

    parts = parse_mod_with_fallback(mod_data, args.record, args.lod)
    frames = anims[args.anim]

    if args.gltf:
        export_gltf(parts, frames, args.gltf)
        print(f"Exported glTF ({len(frames)} frames) -> {args.gltf}")

    if args.obj:
        frame_idx = max(0, min(args.frame, len(frames) - 1))
        export_obj(parts, frames[frame_idx], args.obj)
        print(f"Exported OBJ (frame {frame_idx}) -> {args.obj}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
