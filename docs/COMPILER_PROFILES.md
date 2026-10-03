# Matching compiler profiles

Compiler selection is per function, not inferred from the game title or the
SDK archive name. Every accepted source must reproduce its original bytes and
the complete linked overlay hash. The currently established profiles are:

| Profile | Local compiler | Flags |
|---|---|---|
| `gcc281` (default) | `BIN/CC1PSX.EXE`, GCC 2.8.1 SN32 build 4.0.0010 | function-specific; usually `-quiet -O2 -G0 -mno-split-addresses` |
| `gcc272-dos` | `BIN/DOS/CC1PSX.EXE`, GCC 2.7.2.SN16.3.7.0003 | function-specific; usually `-quiet -O2 -G0` |

The measured SHA-256 of the tested DOS compiler is
`6801fea8e7618f75b182306ce461ed89b4571383131f2b5a9652687b24917e87`.
The compiler itself is not distributed. Supply legally obtained local tools.

The DOS profile was introduced after a natural C implementation of
`func_8018E2C0` matched its body under GCC 2.8.1 but not its return scheduling.
GCC 2.7.2 recovered the complete 244-byte match without barriers or register
bindings. This confirms a usable profile for that function; it does not prove
that every game translation unit used the same compiler.

This profile was first established for six SELECT functions. `func_801A24E4`
and `func_801A372C` additionally use `-fno-schedule-insns` to preserve their
selector/counter or status/cursor setup order while keeping branch-delay
scheduling. Later matches may extend the profile; the per-function maps in
`build_overlay.py` are the authoritative compiler and flag selections.

Source parameter width can also affect register allocation. For
`func_801A3D3C`, a word-sized button parameter recovered the exact match without
barriers or bindings; a halfword parameter did not. A caller's halfword load
alone does not establish the original callee declaration. Keep such choices
evidence-backed without claiming that the original prototype is known.

The older compiler's epilogue handling differs from GCC 2.8.1's RTL-expanded
epilogue. Source references for investigating this difference are the
[GNU GCC 2.7.2 source archive](https://ftp.gnu.org/old-gnu/gcc/gcc-2.7.2.tar.gz)
and [GCC 2.8.1 MIPS backend](https://github.com/gcc-mirror/gcc/blob/releases/gcc-2.8.1/gcc/config/mips/mips.c).
Source comparisons are diagnostic evidence; the full binary comparison remains
the acceptance gate.

## Running the DOS profile

Use a locally supplied DOS compiler and a portable
[DOSBox-X runtime](https://github.com/joncampbell123/dosbox-x/releases).
No system installation is required. The tested Windows runtime is DOSBox-X
2026.10.01, SDL2, x64 Visual Studio build, with executable SHA-256
`a82adcfa7af2784566cfeff74c077cefed08505396db2948b7e6aa7d4cee0832`.
Keep the runtime and compiler under ignored `tools/` directories; do not commit
their downloads or binaries.

`build_overlay.py` consults `PER_FUNC_COMPILERS` and `PER_FUNC_CC1_FLAGS`.
Existing functions keep their established profile. DOS-profile functions
default to `tools/psyq45/BIN/DOS/CC1PSX.EXE` and
`tools/dosbox-x/dosbox-x.exe`; use explicit options for other local layouts:

```powershell
py -B tools_src\build_overlay.py --all --dosbox 'C:\path\to\dosbox-x.exe' --dos-cc1 'C:\path\to\DOS\CC1PSX.EXE'
```

The existing `--bin-dir`, `--psyq-bin` and `--maspsx` options still apply.
`--psyq-bin` supplies the Windows preprocessor and the default GCC 2.8.1
compiler; only explicitly selected functions run through the DOS compiler.

The wrapper mounts only a unique disposable directory containing the compiler,
preprocessed input and outputs. It runs silently, disables audio/controller
use, requires a successful compiler exit marker and nonempty assembly, and
copies the assembly verbatim. Workers may share the runtime read-only while
keeping their overlay build directories independent.

Do not pass `-mno-split-addresses` to this DOS compiler: it is unsupported.
It can emit apparently complete assembly and still exit with an error. A
`.end` directive, correct function size, or runtime exit code alone is not a
successful compilation or an exact match.

GCC 2.7.2 also rejects `+r` inline-assembly constraints. Where matching needs a
read/write register barrier, use an `=r` output and matching `0` input, supported
by instruction-diff evidence. Empty barriers must not replace recovered logic.

## Wrapper checks

The wrapper's SDK-free tests cover successful verbatim copying, failed or
partial output, missing success markers, timeouts and unsafe flag tokens:

```powershell
py -B -m unittest discover -s tools_src/tests -p 'test_dos_cc1.py'
```

Valid and malformed source were also tested with the real local DOS compiler
and runtime. Build verification must still check all overlays and the resident
executable after integrating new source.
