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

`func_801AECB4` additionally uses `-fno-strength-reduce` to retain one
six-byte record cursor for its byte and halfword accesses. This is a verified
per-function selection, not evidence for changing the global compiler profile.

`func_801C98F8` additionally uses `-fno-cse-skip-blocks`. The default
profile reused a scratchpad address across a conditional callback and added a
saved register, yielding 292 rather than the original 288 bytes. Disabling this
cross-block CSE recovered the measured RA-only frame and complete original
bytes with natural C. This selection applies only to this function; retain all
other established profiles.

`func_8019C43C` additionally uses `-fno-schedule-insns` to retain its
measured initial descriptor-store and scratch-mode-load order while keeping
branch-delay scheduling. The 480-byte match uses ordinary field views;
volatile field qualifiers were removed during minimization. This remains a
per-function selection, not a change to the global profile.

`func_80196A60` additionally uses `-fno-cse-follow-jumps` to preserve
the measured literal-zero argument at its conditional callback join. Other
profiles reused the known-zero mode register instead. This is a per-function
selection; the complete 568-byte function and full image remain the gate.

`func_8018E490` uses `gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`
to retain the original single 1,000-byte row cursor. Default strength reduction
introduces two cursors and eight extra bytes. Two empty setup inputs preserve
counter/selector narrowing, constants and address order; they emit no instructions.
This is a measured per-function selection, not a global profile change.

`func_8018A6C0` uses `gcc272-dos -quiet -O2 -G0 -fforce-addr`
to combine its indexed 1,000-byte rows into the original single cursor and retain
the dispatch-address setup order. Without the flag, the measured source emits
268 rather than 260 bytes with a separate offset cursor. The matching source
needs no register bindings, empty constraints or frame reservation. This is a
per-function choice; the complete overlay image remains the acceptance gate.

`func_8018CB78` uses `gcc272-dos -quiet -O2 -G0 -fno-schedule-insns`
to preserve the original scratch-base and constant setup order. With scheduling
enabled, the same 316-byte source differs in two setup instructions. Eight scoped
register bindings and two empty uses preserve measured allocation and captures;
an unused eight-byte reservation reproduces the original 32-byte frame, whose
purpose is unknown. A scalar numeric assembly name denotes the proved scratch
byte address without allocating data or adding a symbol. Removing the reservation
changes six frame instructions; no bounds or shift guards are invented. These
choices apply only to this function and still require full-image equality.

`func_8018CA38` also uses `gcc272-dos -quiet -O2 -G0 -fno-schedule-insns`
for its measured scratch-word, constant and address setup. Seven scoped register
bindings remain after joint prefix minimization; no empty constraints are needed.
Its measured eight-byte reservation reproduces the 32-byte frame, with original
purpose unknown. The scalar scratch-byte name allocates no new data, and both
selectors are reread after the possibly aliasing link store. No shift guards or
new table/symbol ownership is added; complete-image matching remains required.

`func_8018CCB4` uses `gcc272-dos -quiet -O2 -G0 -fno-schedule-insns`
with six measured scoped register bindings and no empty constraints. A volatile
scalar access view preserves the observed stack spill and reload across calls;
it is not a hardware-volatility claim or an artificial frame reservation. Four
submissions preserve signed field loads, halfword updates and separate scratch
reloads after possibly aliasing link stores. Original record/table meanings remain
unknown. This per-function selection still requires complete-image equality.

`func_8018AE8C` uses `gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`
with two scoped bindings and one paired empty constant identity. Ordered access
views retain overwritten mixed-width fields; volatility is not an MMIO claim.
The observed unused pointer store remains explicit, with purpose unknown, and
the original 56-byte frame needs no artificial reservation. Signed helper-word
results are narrowed only at the measured lookup. This is a per-function choice
validated by complete-image equality.

`func_8018C898` uses `gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`
with one saved counter binding and one empty identity consuming the last source
word. A measured eight-word aggregate view retains the aligned grouped copy;
field meanings and complete helper types remain unknown. The scalar scratch
byte view allocates no data, and the natural 40-byte frame needs no reservation.
All generated instructions remain subject to complete-image equality.

`func_8018BE20` uses `gcc272-dos -quiet -O2 -G0 -fno-thread-jumps`
with one scoped case-zero counter binding and no empty constraints. The local
volatile word access preserves the measured post-call reload, not a hardware
claim. Its natural 32-byte frame needs no reservation. The owned five-word
`jtbl_80189304` retains the no-op endpoint and original surrounding data.
The flag prevents duplicate state comparisons and is verified by full-image
byte equality; record meanings and complete helper types remain unknown.

`func_80189DB4` uses `gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`
with three scoped bindings for the constant 64 and five empty constraints. Inlined
identities retain the separate callback sequences and word-result capture order;
they emit no instructions. Two byte access views preserve measured reloads,
not hardware volatility. The natural 88-byte frame contains a six-halfword
local table with only its last two entries initialized as in the original.
Table meaning and complete helper prototypes remain unknown; no bounds guards
or frame reservations are invented. The flag removes twelve extra bytes and
still requires complete-image equality.

`func_801A2CA0` matches naturally with `gcc272-dos -quiet -O2 -G0`
and no bindings, empty constraints or frame reservations. Its sparse 0/1 mode
switch preserves the retail unsupported-mode register residue and uninitialized
local-byte path; it is not a portable initialized default contract. The final
callback argument uses its evidenced byte-width view, without inventing an
early caller cast or a complete original prototype.

`func_801A77A0` uses the basic GCC 2.7.2 profile with six scoped bindings
and two empty constraints. A pointer identity and a local-memory/index input
retain measured branch-delay argument copies without instructions, clobbers or
extra accesses. Its natural 104-byte frame holds an actual eight-byte copied
prefix; record meanings and complete external helper types remain unknown.

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
