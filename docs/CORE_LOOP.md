# Core loop and controller boundary

This document records static conclusions that are strong enough to drive the
next targeted emulator trace. Address-based names remain canonical in source;
the semantic names below are exported as debugger aliases.

## Top-level loop

The PS-X EXE startup routine transfers control to `func_80015780`. After one-
time subsystem initialization, that function enters a permanent loop at
`0x80015898`; its back edge is the jump at `0x80015B74`. This makes
`func_80015780` the resident `game_main_loop`.

Important calls in each iteration are:

1. `0x800B4878` — starts or synchronizes the frame's graphics work.
2. `0x80017258` — decodes both controller buffers.
3. `0x800B4688` — reads the current double-buffer index.
4. `0x80015C84` — dispatches the major game state.
5. `0x8001D6A8` — updates shared presentation/input-dependent state.
6. `0x800B48A8` and `0x800B4550` — finish/swap the display environment.
7. `0x800AC27C` — services a lower-level system state machine.

The exact roles of the graphics and lower-level calls remain working
hypotheses. The loop and its controller/state-dispatch boundaries are direct
control-flow facts.

## Controller state

`func_800AD13C` is the PsyQ-style `InitPAD` wrapper. Startup gives it two
scratchpad buffers at `0x1F80038C` and `0x1F8003AE`, each `0x22` bytes.

Every frame, `update_controller_state` (`func_80017258`) parses these buffers.
For each of two ports it:

- treats raw byte zero equal to `0xFF` as absent/unavailable;
- combines raw bytes two and three and inverts them, turning the controller's
  active-low protocol bits into an active-high button mask;
- recognizes controller-type nibbles `5` and `7` and maps analogue-stick
  thresholds onto directional button bits;
- stores current, previous, newly pressed, and newly released 16-bit masks in
  an eight-byte per-port block beginning at `0x1F8004D0`;
- tests newly pressed bit `0x0800`, consistent with the Start button, to enter
  the game's pause path.

These eight-byte blocks are the first stable input boundary for deterministic
record/replay. A native build can initially feed recorded masks here instead of
emulating the serial controller protocol.

## Major state dispatcher

`dispatch_game_state` (`func_80015C84`) is called once per top-level frame. If
the pause flag at `0x1F8002A0` is clear, it indexes a seven-entry table using
the state byte at `0x1F800298`:

| State | Resident handler |
|---:|---|
| 0 | `func_80015F28` |
| 1 | `func_80015F80` |
| 2 | `func_80016108` |
| 3 | `func_8001617C` |
| 4 | `func_80016F44` |
| 5 | `func_8001E778` |
| 6 | `func_80016F88` |

The controlled route and paused-kickoff capture establish two state meanings:

- state 4 calls the entry point inside `SELECT.BIN`, so it is team selection;
- state 5 is the match state. When the pause flag is set, the dispatcher takes
  its alternate in-match presentation path instead of advancing simulation.

State 6 is the match transition/loading state. Its temporary executable bank
is later overwritten by match assets. The other state names remain provisional.

## Match dispatch

State 5 calls `dispatch_match_lifecycle` (`func_8001E778`). It dispatches the
byte at `0x1F80029C` across six resident handlers. Lifecycle value 5 calls
`dispatch_match_phase` (`func_8001F3E0`), which then dispatches
`0x1F80029A` across 15 match-phase handlers:

| Phase | Handler |
|---:|---|
| 0 | `func_800769C0` |
| 1 | `func_80076E7C` |
| 2 | `func_80077270` |
| 3 | `func_8007A2A8` |
| 4 | `func_8007B39C` |
| 5 | no phase-specific call |
| 6 | `func_8007BE38` |
| 7 | `func_8007CEDC` |
| 8 | `func_80081B94` |
| 9 | `func_80083EE8` |
| 10 | `func_80084750` |
| 11 | `func_80087CCC` |
| 12 | `func_80089C70` |
| 13 | temporary bank entry `0x80188F8C` |
| 14 | `func_80075BBC` |

Every phase then runs shared match presentation/update functions. The exact
football meaning of each phase (open play, set piece, replay, and so on) is the
next dynamic-analysis question.

The paused-kickoff RAM image contains `BIN/ANIME2.BIN` exactly at
`0x80188F78`, including `0x80188F8C`. Therefore phase 13 is only valid while a
temporary code module occupies that bank; it cannot be called after the bank
has been repurposed for match animation data.

## Runtime state tracer

`run_emulator.ps1` now enables PCSX-Redux's read-only GDB server. The tracer
reads the hardware page without pausing or modifying the game:

```powershell
python -B tools_src\trace_game_state.py --watch
```

It reports changes to the top-level state, match lifecycle, match phase, pause
flag, and decoded controller masks. This replaces high-frequency manual
breakpoints for the next route.

## Useful runtime breakpoints

- `0x80017258` — controller decode, once per frame.
- `0x80015C84` — major state dispatch, once per frame.
- `0x80015D1C` — state 4 handler call site.
- `0x80015D2C` — state 5 handler call site.
- `0x80015D3C` — state 6 handler call site.

Do not leave all once-per-frame breakpoints enabled during normal play. Use
the state tracer first, then place a temporary breakpoint only on the phase
handler associated with the visible event under study.
