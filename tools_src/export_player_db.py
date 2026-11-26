#!/usr/bin/env python3
"""Export the 43-team, 946-player database from Winning Eleven 3 Final Ver.
(SLPM_861.62 + SELECT.BIN) to JSON and CSV beneath assets/08_database/.
"""

from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

PLAYER_TABLE_OFFSET = 0xB8D04
NUM_TEAMS = 43
PLAYERS_PER_TEAM = 22
NAME_SLOT_SIZE = 8

# Team names in SELECT.BIN (stored in reverse order team 41 -> team 0)
SELECT_TEAM_START = 0x8D0
SELECT_TEAM_END = 0xA88


def decode_player_name(raw: bytes) -> str:
    trimmed = raw.split(b"\x00", 1)[0]
    if not trimmed:
        return ""
    if all(32 <= b < 127 for b in trimmed):
        return trimmed.decode("ascii").strip()
    try:
        return trimmed.decode("shift_jis").strip()
    except UnicodeDecodeError:
        return trimmed.decode("ascii", errors="replace").strip()


def parse_team_names(select_bytes: bytes) -> list[str]:
    chunk = select_bytes[SELECT_TEAM_START:SELECT_TEAM_END]
    raw_names = [s.decode("ascii", errors="replace").strip() for s in chunk.split(b"\x00") if s]
    # SELECT.BIN stores teams 41..0 in reverse order; team 42 is the secret/extra all-star roster
    if len(raw_names) >= 42:
        names = list(reversed(raw_names[:42]))
        names.append("All Stars / Secret (Team 42)")
        return names
    return [f"Team_{i:02d}" for i in range(NUM_TEAMS)]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--exe",
        type=Path,
        default=ROOT / "assets" / "01_executables" / "SLPM_861.62",
        help="Path to SLPM_861.62",
    )
    parser.add_argument(
        "--select",
        type=Path,
        default=ROOT / "assets" / "02_overlays" / "SELECT.BIN",
        help="Path to SELECT.BIN",
    )
    parser.add_argument(
        "--out",
        type=Path,
        default=ROOT / "assets" / "08_database",
        help="Output directory (default: assets/08_database/)",
    )
    args = parser.parse_args()

    exe_bytes = args.exe.read_bytes()
    select_bytes = args.select.read_bytes()
    team_names = parse_team_names(select_bytes)

    teams_json: list[dict[str, object]] = []
    csv_rows: list[tuple[int, str, int, str]] = []

    for t in range(NUM_TEAMS):
        team_name = team_names[t] if t < len(team_names) else f"Team_{t:02d}"
        players: list[dict[str, object]] = []
        base = PLAYER_TABLE_OFFSET + t * PLAYERS_PER_TEAM * NAME_SLOT_SIZE
        for p in range(PLAYERS_PER_TEAM):
            raw = exe_bytes[base + p * NAME_SLOT_SIZE : base + (p + 1) * NAME_SLOT_SIZE]
            name = decode_player_name(raw)
            players.append({"slot": p + 1, "name": name})
            csv_rows.append((t, team_name, p + 1, name))
        teams_json.append({"team_id": t, "team_name": team_name, "players": players})

    out_dir = args.out.resolve()
    out_dir.mkdir(parents=True, exist_ok=True)

    json_path = out_dir / "players_database.json"
    json_path.write_text(
        json.dumps({"teams": teams_json, "total_teams": NUM_TEAMS, "total_players": len(csv_rows)}, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )

    csv_path = out_dir / "players_database.csv"
    with csv_path.open("w", newline="", encoding="utf-8-sig") as f:
        writer = csv.writer(f)
        writer.writerow(["team_id", "team_name", "player_slot", "player_name"])
        writer.writerows(csv_rows)

    print(f"Exported {NUM_TEAMS} teams, {len(csv_rows)} players -> {out_dir}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
