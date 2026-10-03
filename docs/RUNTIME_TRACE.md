# First runtime trace

The first dynamic-analysis goal is to connect visible game states to resident
code and runtime-loaded modules. Do not start by tracing every CPU instruction;
that creates far more data than we can interpret.

## Emulator setup

1. Press `Escape` to reveal the PCSX-Redux menu.
2. Open **Configuration -> Emulation**.
3. Disable **Dynarec CPU** and enable **Debugger**, then reboot the emulator.
4. Open **Debug -> CPU -> Show Assembly**.
5. In the Assembly window choose **File -> Load symbols map** and open
   `config/SLPM_861.62.pcsx.map`.
6. Open **Debug -> CD-Rom -> Show CD-ROM viewer**.

For a lightweight module check that does not require breakpoints, enable
**Configuration -> Emulation -> Enable Web Server** and run:

```powershell
.venv\Scripts\python.exe tools_src\scan_runtime_modules.py
```

The scanner reads the emulator's 2 MiB RAM snapshot and compares it with the
locally extracted module files. It does not modify emulated memory.

To catch short-lived modules while navigating the game, leave this running in
a second PowerShell window:

```powershell
.venv\Scripts\python.exe tools_src\scan_runtime_modules.py --watch
```

It reports load/unload transitions and saves the first RAM image containing
each module beneath `extracted/runtime/`. Stop it with `Ctrl+C`.

The project launcher now enables both the web server and the GDB server
automatically. To record high-level state changes without pausing the game,
run this in a second PowerShell window:

```powershell
python -B tools_src\trace_game_state.py --watch
```

The tracer is read-only. It reports the top-level state, match lifecycle,
match phase, pause flag, and decoded controller masks whenever one changes.

The interpreter is slower than the dynamic recompiler but gives reliable
breakpoints. CPU trace should remain off until a narrow function or transition
has been selected.

## Controlled route

Starting from a hard reset, record these checkpoints:

1. Konami/logo sequence.
2. Title screen before any input.
3. Main menu.
4. Exhibition/team selection.
5. Formation or lineup screen.
6. Stadium/loading screen.
7. Kickoff with neither player moving.
8. Ten seconds of neutral input.
9. Pause screen.

At each transition, note newly accessed CD regions and whether execution enters
one of the candidate banks at `0x8011A800`, `0x80138000`, `0x80188F78`, or
`0x801CD000`. These observations decide the authoritative load addresses for
the module-specific splat configurations.

## Smoke-test observations

On 2026-10-02, the Rev 1 multi-track image reached kickoff under PCSX-Redux
commit `0b2b9137` with the bundled OpenBIOS. Gameplay, audio and controller
input worked. Small regions of the image occasionally flashed or became
visually unstable. The emulator log simultaneously reported an unknown GPU
data word near PsyQ `ResetGraph`. Treat this as a likely PCSX-Redux/OpenBIOS
compatibility artifact until the same route is compared with a Japanese retail
BIOS and a second emulator; it is not evidence of a retail-game defect.

At the paused-kickoff checkpoint, `SELSND.BIN` matched the live RAM image in
full at `0x80138000`. `ENDING.BIN`, `ENTER.BIN`, `MOVIE.BIN`, `SELECT.BIN`,
`SELFORM.BIN`, `STAFF.BIN`, `TRAINING.BIN` and `UNIFORM.BIN` were absent. This
confirms the `SELSND.BIN` bank and indicates that the match loop is resident or
belongs to a module not yet included in the candidate set.

Subsequent whole-disc correlation found `BIN/ANIME2.BIN` at `0x80188F78` in
the paused-kickoff image. This bank contains match animation data at that
point, not executing match code. The football simulation and phase handlers
are resident in `SLPM_861.62`; temporary transition code that previously used
the same bank has already been overwritten.

The subsequent kickoff-to-menu-to-exhibition route produced exact first-load
snapshots for `SELECT.BIN`, `UNIFORM.BIN`, `ENTER.BIN`, and `SELFORM.BIN`.
`SELECT.BIN`, `UNIFORM.BIN`, and `ENTER.BIN` share the mutually exclusive bank
at `0x80188F78`. `SELFORM.BIN` loads at `0x8011D800`, correcting the earlier
static estimate of `0x8011A800`. On the active formation screen, most of
`ENTER.BIN` remained in its old bank while `SELFORM.BIN` had already modified a
small part of its own image; the untouched samples still identified both.

## Next analysis target

The resident main loop, controller decoder, major state dispatcher, match
lifecycle dispatcher, and 15-way match phase dispatcher are now identified.
The next controlled run records which phase value corresponds to normal open
play, kickoff, pause, throw-ins, corners, fouls, and replays. That lets the
decompilation start at the stable open-play update boundary needed for
deterministic replay and, later, rollback networking.
