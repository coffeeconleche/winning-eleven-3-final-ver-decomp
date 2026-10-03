#!/usr/bin/env python3
"""Report Winning Eleven's live high-level state and decoded pad input."""

from __future__ import annotations

import argparse
import socket
import struct
import sys
import time
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
DEFAULT_HOST = "127.0.0.1"
DEFAULT_PORT = 3333

STATE_NAMES = {
    0: "boot_0",
    1: "boot_1",
    2: "boot_2",
    3: "frontend_transition",
    4: "team_selection",
    5: "match",
    6: "match_transition",
}

BUTTONS = (
    (0x0001, "L2"),
    (0x0002, "R2"),
    (0x0004, "L1"),
    (0x0008, "R1"),
    (0x0010, "Triangle"),
    (0x0020, "Circle"),
    (0x0040, "Cross"),
    (0x0080, "Square"),
    (0x0100, "Select"),
    (0x0200, "L3"),
    (0x0400, "R3"),
    (0x0800, "Start"),
    (0x1000, "Up"),
    (0x2000, "Right"),
    (0x4000, "Down"),
    (0x8000, "Left"),
)


@dataclass(frozen=True)
class GameState:
    top: int
    transition: int
    play_phase: int
    lifecycle: int
    pause: int
    p1_current: int
    p1_pressed: int
    p2_current: int
    p2_pressed: int


class GdbRemote:
    """Minimal GDB remote-protocol client for read-only memory requests."""

    def __init__(self, host: str, port: int) -> None:
        self.socket = socket.create_connection((host, port), timeout=5)
        self.socket.settimeout(5)

    def close(self) -> None:
        self.socket.close()

    def _packet(self, command: str) -> bytes:
        encoded = command.encode("ascii")
        checksum = sum(encoded) & 0xFF
        self.socket.sendall(b"$" + encoded + b"#" + f"{checksum:02x}".encode("ascii"))

        while True:
            byte = self.socket.recv(1)
            if not byte:
                raise ConnectionError("GDB server closed the connection")
            if byte == b"$":
                break
        payload = bytearray()
        while True:
            byte = self.socket.recv(1)
            if not byte:
                raise ConnectionError("GDB server closed the connection")
            if byte == b"#":
                break
            if byte == b"}":
                escaped = self.socket.recv(1)
                if not escaped:
                    raise ConnectionError("truncated escaped GDB packet")
                payload.append(escaped[0] ^ 0x20)
            else:
                payload += byte
        received_checksum = self.socket.recv(2)
        if len(received_checksum) != 2:
            raise ConnectionError("truncated GDB packet checksum")
        expected = sum(payload) & 0xFF
        if int(received_checksum, 16) != expected:
            self.socket.sendall(b"-")
            raise ConnectionError("GDB packet checksum mismatch")
        self.socket.sendall(b"+")
        return bytes(payload)

    def read_memory(self, address: int, size: int) -> bytes:
        payload = self._packet(f"m{address:x},{size:x}")
        if payload.startswith(b"E"):
            raise ConnectionError(f"GDB memory read failed: {payload.decode('ascii', 'replace')}")
        try:
            data = bytes.fromhex(payload.decode("ascii"))
        except ValueError as error:
            raise ConnectionError("GDB server returned invalid memory data") from error
        if len(data) != size:
            raise ConnectionError(f"GDB returned {len(data):#x} bytes; expected {size:#x}")
        return data


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def decode(data: bytes) -> GameState:
    return GameState(
        top=data[0x298],
        transition=data[0x29A],
        play_phase=data[0x29B],
        lifecycle=data[0x29C],
        pause=data[0x2A0],
        p1_current=u16(data, 0x4D0),
        p1_pressed=u16(data, 0x4D4),
        p2_current=u16(data, 0x4D8),
        p2_pressed=u16(data, 0x4DC),
    )


def buttons(mask: int) -> str:
    names = [name for bit, name in BUTTONS if mask & bit]
    return "+".join(names) if names else "-"


def describe(state: GameState) -> str:
    name = STATE_NAMES.get(state.top, "unknown")
    return (
        f"state={state.top}:{name} lifecycle={state.lifecycle} "
        f"transition={state.transition} play_phase={state.play_phase} "
        f"pause={state.pause} "
        f"p1={state.p1_current:#06x}[{buttons(state.p1_current)}] "
        f"p1_new={state.p1_pressed:#06x}[{buttons(state.p1_pressed)}] "
        f"p2={state.p2_current:#06x}[{buttons(state.p2_current)}] "
        f"p2_new={state.p2_pressed:#06x}[{buttons(state.p2_pressed)}]"
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--host", default=DEFAULT_HOST, help="PCSX-Redux GDB host")
    parser.add_argument("--port", type=int, default=DEFAULT_PORT, help="PCSX-Redux GDB port")
    parser.add_argument("--watch", action="store_true", help="print whenever tracked state changes")
    parser.add_argument("--interval", type=float, default=0.05, help="poll interval in seconds")
    parser.add_argument("--save", type=Path, help="save the latest hardware-page sample")
    args = parser.parse_args()

    if args.interval <= 0:
        parser.error("--interval must be greater than zero")

    previous: GameState | None = None
    started = time.monotonic()
    try:
        remote = GdbRemote(args.host, args.port)
        try:
            while True:
                raw = remote.read_memory(0x1F800000, 0x1000)
                state = decode(raw)
                if state != previous:
                    elapsed = time.monotonic() - started
                    print(f"{elapsed:9.3f}s  {describe(state)}", flush=True)
                    previous = state
                if args.save:
                    args.save.parent.mkdir(parents=True, exist_ok=True)
                    args.save.write_bytes(raw)
                if not args.watch:
                    return 0
                time.sleep(args.interval)
        finally:
            remote.close()
    except KeyboardInterrupt:
        print("Stopped.")
        return 0
    except (ConnectionError, OSError, ValueError) as error:
        print(
            "cannot read PCSX-Redux runtime state; launch the game with "
            f"tools_src/run_emulator.ps1 ({error})",
            file=sys.stderr,
        )
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
