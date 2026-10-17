# Matching compiler profiles

Compiler selection is per function, not inferred from the game title or the
SDK archive name. Every accepted source must reproduce its original bytes and
the complete linked overlay or resident-executable hash. The currently
established profiles are:

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

`func_8018A3A8` uses `gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`
with three measured scoped bindings and no empty constraints or frame reservation.
The natural 48-byte frame and single 1,000-byte record cursor preserve the
original allocation. Signed random adjustments and the signed comparison of
word-wrapped squared distance are retained without inventing record meanings
or complete helper prototypes. Full-image equality remains the acceptance gate.

`func_801C4FE0` uses `gcc272-dos -quiet -O2 -G0` with 21
measured register bindings and one empty input consuming the actual signed
height numerator before division. Six bindings and two other empty inputs were
removed cumulatively during minimization. The 88-byte frame and frame-pointer
allocation arise naturally; no frame reservation or register clobber is used.
Seven signed quotients retain the original zero-divisor traps, and raw coordinate
sums wrap as words before halfword narrowing. The original initializes only
11 bytes of the 20-byte local access view; its callee copies nine further bytes
from unknown stack residue. This is a matching-build observation, not defined
portable behavior for a future native implementation. Full-image matching is
still required.

`func_801CBAB8` uses the basic GCC 2.7.2 profile with two scoped bindings
and eleven empty sites: actual snapshot/counter inputs, four transparent value
copies and two empty control fences. All memory clobbers were removed during
joint minimization; these sites emit no instructions or extra accesses. An unused
32-byte reservation retains the measured 96-byte frame; removing it changes only
ten frame-adjustment/save/restore words. Its original purpose is unknown. The
owned five-word `jtbl_8018D9F0` preserves the five-state dispatch, deliberate
fallthrough and quiet out-of-range path. Signed coordinate thresholds, byte and
halfword wrapping, callback chronology and alias-sensitive restoration remain
explicit. Full object layouts and complete helper prototypes are not claimed.
Full-image equality remains the acceptance gate.

`func_80196FE8` uses the basic GCC 2.7.2 profile with eight scoped
bindings and ten empty sites for actual captures and load order. The sites
emit no instructions or extra accesses; all volatile access qualifiers and
memory clobbers were removed during minimization. Its natural 48-byte frame
needs no reservation. The two descriptor formats preserve byte wrapping and
logical shifts; the optional expanded submission rereads dimensions and mode
after the first callback. Table accesses remain unchecked, and complete object
layouts/helper APIs remain unknown. Full-image equality remains required.

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

## Assembler/linker compatibility

GNU binutils `2.47.20260726` has been verified with the established PsyQ
compiler profiles: all five confirmed overlays and the resident executable
remain byte-identical under the original uncached builders. This is an
assembler/linker compatibility result, not a change to the recovered compiler
profiles or flags. Supply local tools through `--bin-dir`; tool binaries and
downloads must remain ignored.

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

`func_8018CE40` uses `gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`
for its measured eight-bank packet/coordinate traversal. Eighteen scoped
bindings, twelve empty value/memory sites and ordered mixed-width views retain
the original captures and store chronology; they do not replace recovered
logic or claim hardware volatility. Joint minimization removed the unused
frame reservation: the matching 988-byte source now has a natural 72-byte
frame. This is a per-function selection, with full-image equality required.

`func_801B1224` uses `gcc272-dos -quiet -O2 -G0 -fno-cse-skip-blocks`
to retain the observed repeated selector reads and two-stage encoded-byte
decoder. Removing the flag shortens the measured source by twenty bytes.
Two scoped decoder bindings and one empty actual-value identity preserve
the captured arguments and setup order; the 1,768-byte function has a natural
64-byte frame, no volatile memory accesses and no frame reservation. Its
62-word switch table ends directly before the next table; no padding or other
table is claimed. This is a per-function choice, with full-image matching
still required.

`func_801B30FC` uses `gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`
to retain the measured descending 45-byte row-clear loop. With default strength
reduction, the same source produces 892 rather than the original 896 bytes.
Four scoped bindings capture the two decoded bytes and the first helper's two
actual arguments; every nonempty removal subset was measured and failed matching.
No empty constraints, volatile views, symbol additions or frame reservation are
needed. Its 112-byte frame is natural. This is a per-function selection verified
by full-image equality, not a global compiler change; complete record meanings
and original helper APIs remain provisional.

`func_801C8D00` matches all 1,040 bytes with the basic
`gcc272-dos -quiet -O2 -G0` profile. Its zero-row classifier reuses the actual
final `<12` predicate as the ordinary result variable before assigning 3 or 4.
Removing the earlier classifier binding and identity permits the original
comparison/constant delay-slot layout. Disabling cross-branch CSE was an initial
probe, not a required profile: removing either or both probe flags preserves
exact bytes. The final source has no flag override, classifier constraint,
same-address alias, frame reservation or added symbol storage.

One real result-register binding and two field-memory input sites remain.
They preserve result allocation, the backward shared return-32 target, and a
column reread after a halfword coordinate store. All nonempty removal subsets
of those three aids failed the independent comparison; no global minimum is
claimed. Its frame is naturally zero bytes. These are measured matching aids,
not MMIO declarations or a recovered original API. Complete field meanings and
the historical return declaration remain provisional. Acceptance includes the
original uncached all-five-overlay and resident image checks.

`func_801C220C` matches all 2,096 bytes with the basic
`gcc272-dos -quiet -O2 -G0` profile, without a flag override. Its row/column
labels and relation-cell submissions retain callback-driven rereads and the
observed incoming saved-register dependency. Seventeen scoped hard bindings
and nine empty capture/value sites remain, including the actual incoming `$20`
capture before that register becomes a local loop counter. These sites emit no
game instructions; they must not be replaced by an invented initial value or
an ordinary parameter without additional evidence about the original API.

A plain unused eight-byte frame extent retains the original 88-byte frame.
Its purpose is unknown: removing it changes 22 frame/save/restore instruction
words while leaving the drawing-body instructions unchanged. There are no
volatile qualifiers, blanket memory clobbers, new jump tables, symbol-storage
claims or original-assembly edits. Individual and related-group removal probes
support the remaining aids; no global minimum is claimed. Complete object
layouts and helper APIs remain provisional, not a native-PC interface.
Acceptance includes an independent function-byte comparison and the combined
original uncached all-five-overlay, resident and twelve-test checks.

`func_801B9DCC` matches all 912 bytes with the basic
`gcc272-dos -quiet -O2 -G0` profile, without a flag override. Its display setup
preserves asymmetric byte-weighted totals, captured values across callbacks,
scratchpad rereads, packet fields and six ordered glyph submissions. Fixed-point
greedy minimization removed twenty-one hard bindings and one empty site;
eleven bindings and fifteen empty actual-value sites remain. Every survivor and
ten related removal groups failed matching; no global minimum is claimed.

A scoped identity on the initialized condition clobbers only `$19` and `$30`
to retain the split saves. Initialized byte-slot identities and six numeric
scratch-address views allocate no new data. A plain unused thirty-two-byte
extent reproduces the original 168-byte frame; removing it changes only
twenty-two frame/save/restore words. Its purpose remains unknown. There are no
volatile memory qualifiers or blanket memory clobbers. Original helper APIs
and complete field meanings remain provisional.

`func_801AAE5C` matches all 1,076 bytes with the basic
`gcc272-dos -quiet -O2 -G0` profile. It preserves byte-truncated random outcomes,
the uncapped initial mode-1/2 redraw, the later 101-attempt limits, signed
random-helper thresholds and sparse result writes. A nine-byte local aggregate
places its two accessed bytes eight bytes apart, matching the observed stack
positions. The seven intervening bytes are never accessed; this is a local
layout view, not proof of an original structure declaration or gameplay type.
Its 96-byte frame is natural, with no separate frame reservation.

Fixed-point individual and related-group minimization removed five hard
bindings and six empty sites. Eight bindings and five empty actual-value sites
remain; terminal individual and four related-group probes all fail matching.
The real players-base binding prevents cross-branch hoisting, while the selected
output capture retains the original pre-store load. No volatile qualifiers,
memory-output constraints, inline game instructions or new global storage are needed.
No global minimum is claimed. Only the low incoming byte is observable; the
original parameter declaration and helper APIs remain unknown.

`func_8018E4E0` matches all 1,008 bytes with the basic
`gcc272-dos -quiet -O2 -G0` profile. Matrix setup, signed coordinate transfer,
the two-iteration packet loop and ordering-table links are C. Narrow COP2
load/store/control/command intrinsics retain real GTE hardware operations with
their register and memory effects; this is not a whole-function assembly copy
or a native implementation. Its original 72-byte frame is natural.

Six scoped bindings and two empty actual-value inputs remain after removing
redundant matrix/record bindings and an unused intrinsic input. All eight
individual removals and four related groups fail full ENTER matching; no global
minimum is claimed. Unsigned modular packet-base arithmetic retains measured
operand order. The fourth vertex uses the proved table-base-plus-24 address;
original object ownership remains provisional. Unsigned variable shifts still
assume counts below 32 in this C view, whereas MIPS uses the low five bits.
That bound is not established here: native ports must handle other counts and
replace the GTE and raw PlayStation address views. Separate ordering-table
rereads after the packet-tag store preserve the observed alias chronology.

These three profiles are accepted only with independent function-byte checks
and the combined original uncached overlay, resident and tooling-test gates.
No original ASM, reference hash, jump-table ownership or linker placement was
changed to obtain the matches.

`func_8018A008` matches all 928 bytes with the basic
`gcc272-dos -quiet -O2 -G0` profile, without a flag override. A real byte
offset starts at 1,006 and advances by 1,000 for every row; ordinary C computes
the field address from that offset. Strength reduction eliminates the offset
and creates the walking field cursor after invariant constant motion, recovering
the original setup order. The earlier redundant outer loop is unnecessary.
This is a matching source shape, not a claim about the original declarations.

Seven allocation aids were removed cumulatively. Four scoped bindings for the
populated-record position and coordinate temporaries, plus one empty signed
remainder input, remain. Individual and related-group removals were rechecked
at the local fixed point; no global minimum is claimed. The 80-byte frame is
natural, with no reservation, volatile views, register clobbers or inline game
instructions. The regenerated 43-word `jtbl_80189030` ends immediately before
the unrelated table at `0x801890DC`; no neighboring words or padding are owned.
Complete record meanings and historical helper APIs remain provisional.
Acceptance requires the independent function/table comparison and original
uncached overlay, resident-executable and tooling-test gates.

## Resident C builds

The first resident substitution, `func_8001E6B8`, matches all 120 bytes with
`gcc272-dos -quiet -O2 -G0` and one result-register binding. Removing that
binding yields 124 bytes with an extra result move; an alternative single
sum-register binding also matches, but is not needed in the accepted source.
There are no empty assembly statements, register clobbers or frame reservations;
the 24-byte frame is natural. Function SHA-1 is
`b4cffd357cedc068509bf8c8688031285e0d6ac0`.

Zero returns without calling the random helper or reading scratch memory.
Otherwise, the post-callback scratch word is added with explicit unsigned
32-bit wrapping and converted to the measured signed remainder domain. The
PS1 compiler emits a trap for `INT_MIN % -1`; this exceptional input is outside
the defined C view and requires explicit handling in a future native lane.
The raw scratch address and original helper API also require native adaptation.

`func_8001E730` also matches with the basic DOS profile: 56 bytes, function
SHA-1 `2a2f48834e1113e97ad36ddf543db204ea493ebd`. Its ordinary C needs no
register bindings, empty assembly statements, volatile access views or frame
reservations. The 24-byte frame is natural. It always calls
`func_8001E6B8(100)`, then compares the signed result against the incoming
low signed halfword and returns zero or one. Do not clamp the threshold or
skip the callback for out-of-range values. This is a measured ABI view, not
a claim that the original formal type or gameplay name has been recovered.

Six small resident helpers additionally match with the basic DOS profile:
`func_800171A0` (36 bytes), `func_800171C4` (24), `func_800171DC` (32),
`func_8001720C` (32), `func_8001723C` (28), and `func_8001E694` (36).
Their 188 matching bytes require no flag overrides, register bindings, empty
assembly statements, volatile qualifiers, padding or frame reservations.

The five leaf helpers use numeric scalar assembly names as views of proved
scratch-byte addresses. These declarations allocate no storage and add no
linker symbols; they retain the measured separate address materialization and
store scheduling. Increment stores wrap modulo 256, and the low-byte/low-bit
stores remain ordered. Their frames are naturally zero bytes. Raw PS1 addresses
still need replacement in the native lane; these views are not MMIO claims.

`func_8001E694` has a natural 24-byte frame. It adds 64 using unsigned word
arithmetic, narrows the first argument to its low byte, forwards the second word
unchanged to `func_8001E5A4`, and returns that helper's word result. The call is
unconditional. Original formal types and gameplay meanings remain provisional.
Acceptance includes independent instruction-byte comparisons and the original
uncached overlay, both resident-mode and tooling-test gates.

Another five resident helpers match the basic DOS profile:
`func_80017178` (40 bytes), `func_8001E138` (32), `func_800174E0` (72),
`func_80017528` (60), and `func_80016F44` (68). None needs flag overrides,
register bindings, empty constraints, volatile views or frame reservations.
The first two preserve ordered low-byte stores through no-storage numeric
scalar declarations. The mask helpers preserve unsigned halfword loads and
selector-1 versus all-other-value dispatch. `func_800174E0` uses ordinary
unsigned word address arithmetic and a full signed `>=` comparison, not an
invented equality test. `func_80017528` retains two numeric halfword views
and the shared shift in the initial branch delay slot. Raw indexed PS1 address
views require proper storage/layout and valid-index handling in a native port.

`func_80016F44` has a natural 24-byte frame. It forwards incoming `$a0-$a3`
unchanged to the overlay's `func_8018DB58`, reads scratch byte `0x1F800299`
after that callback, and conditionally calls `func_8001722C(0)` then
`func_8001714C`. The four-word forwarding declaration is an ABI view, not a
recovered complete prototype. The known caller ignores the result; the void
source view does not establish the original return contract, while the match
retains its observed register residue.

`func_8001E768` matches all 16 bytes with the default
`gcc281 -quiet -O2 -G0` profile, without a compiler-map change or matching aids.
Signed 64-bit multiplication followed by unsigned 32-bit narrowing preserves
the original low product word for every signed 32-bit input without signed
overflow. Its frame is naturally zero bytes. This verified compiler selection
does not identify the historical compiler or original API. Together, these
six helpers add 288 matching bytes and require the same independent instruction,
uncached full-image, both resident-mode and tooling-test gates.

Six further resident helpers match with `gcc272-dos -quiet -O2 -G0`:
`func_8001714C` (44 bytes), `func_8001DD10` (64), `func_8001951C` (72),
`func_80019B1C` (72), `func_8001E0F4` (68), and `func_8002F6C8` (68).
Their 388 bytes need no additional flags, register bindings, empty constraints,
volatile views, padding or frame reservations. Frames are natural: zero for
the byte-advance and classifier helpers, 24 bytes for the four call wrappers.

`func_8001714C` captures the unsigned scratch byte before two ordered clears,
then stores the increment with byte narrowing. Its measured `$v0` still holds
the full captured byte plus one, including 256; the void source view does not
establish an original return contract. `func_8001DD10` uses four no-storage
numeric byte views for ordered clears before unconditional `func_8001723C(0)`.

`func_8001951C` preserves four direct calls and the second global pointer load
after the first `func_80019564` call. `func_80019B1C` preserves five calls and
loads its global pointer after the initial two. Both forward incoming `$a0-$a3`
unchanged to `func_800B6D78`; those declarations are ABI views, not complete
recovered prototypes or nested callback contracts. `func_8001E0F4` needs only
direct C word stores and three calls: its real argument address is naturally
materialized early, without an allocation aid. Raw addresses, object layouts,
helper APIs and original return contracts still require native-lane research.

`func_8002F6C8` uses ordinary unsigned division by 768. Updating the actual
input variable before division retains the original subtraction and multiply
allocation; a separate expression temporary did not. The quotient is bounded
by 5,592,403 after subtracting 1,024, so its signed conversion and addition are
defined for every incoming word. Independent reciprocal/shift checks establish
the divisor; the early return and signed `>=9` cap remain explicit. Acceptance
requires independent instruction comparisons and the unchanged full-image,
both resident-mode and tooling-test gates.

The next six resident matches add 444 bytes with the same basic
`gcc272-dos -quiet -O2 -G0` profile: `func_800171FC` (16 bytes),
`func_8001722C` (16), `func_800179D0` (80), `func_80016108` (116),
`func_800219F4` (116), and `func_8002A7D8` (100). No flag overrides,
register bindings, volatile memory views or frame reservations are needed.
Four have natural zero-byte frames; the two call wrappers have 24-byte frames.

The two setters use no-storage scalar scratch-byte views and store only the
incoming low byte. A GCC 2.8.1 probe for `func_800171FC` instead materialized
the address in `$v0` and moved the store to the return delay slot. The matching
DOS profile leaves `$v0` untouched, as in the original. The word parameters
and void declarations remain provisional ABI views.

`func_800179D0` preserves five ordered calls, unchanged incoming `$a0-$a3`
at its first helper, and both global pointer loads after their preceding calls.
`func_80016108` captures scratch byte `2E6` after its first callback and before
overwriting it, then preserves all seven stores and the final callback.
A no-storage scalar view for that byte avoids the direct-pointer draft's
address reuse and different capture allocation. No additional aid is required.

`func_800219F4` retains two table reads around a potentially aliasing store,
low-byte key and flag tests, and full-word unsigned offset arithmetic.
Its explicit word result preserves measured `$v0` residue and branch scheduling
while the stored result narrows to a byte. Known callers ignore the result;
this does not establish the original return declaration. Existing overlay
call-site declarations were not changed.

`func_8002A7D8` uses a partial field-access struct and a no-storage scratch
halfword table view. One empty input consuming the real loaded signed value
retains the nonzero-mode early-return path; it emits no instructions, accesses
or clobbers. Removing it merges the threshold flow into 88 rather than 100
bytes. Three explicit word-return probes did not eliminate the need for this
site. Signed halfword negation is widened to a word, including at -32,768;
all 65,536 values passed an independent comparison audit for modes 0, 1 and
255 (196,608 cases). The table extent, valid selector domain, complete object
layout, gameplay meanings and original APIs remain unknown. Acceptance still
requires independent instruction checks and unchanged complete-image gates.

The first group of the 180-resident-function run adds 740 bytes using basic
`gcc272-dos -quiet -O2 -G0`: `func_800198B4` (52 bytes), `func_80015F28` (88),
`func_80020DB8` (120), `func_8001CEE0` (124), `func_8001DD50` (128), and
`func_8002283C` (128). None needs extra flags, register bindings, empty
constraints, volatile memory views or artificial frame reservations.

The unsigned halfword loop has a natural eight-byte frame under DOS GCC;
GCC 2.8.1 omitted that frame. Its zero guard and unsigned post-decrement retain
word wrap, and the known caller ignores the original result residue.
The four-call setup wrapper needs only direct byte stores; three numeric
scratch declarations were removed together after a successful minimization
probe. Its unspecified `func_8001951C()` call-site view deliberately retains
post-callback argument-register residue, not a complete recovered helper API.

The three-byte mode updater uses two no-storage numeric scratch views and a
shared first-only-store label to retain both original store blocks and branch
scheduling. The typed eight-parameter wrapper forwards sixteen arguments;
its final signed-halfword formal produces the measured full-word load followed
by shift/sign extension, unlike the word-plus-cast probe's halfword load.
Its 72-byte outgoing-argument frame is natural.

The buffer-state setup captures the byte before publishing pointers and words,
then its ordinary switch selects the callback for states 3, 5 and 6 without
generated rodata. Four incoming words remain unchanged at that callback.
The record traversal clears two descriptor bytes in order, visits 22 records
at a 1,000-byte stride and conditionally calls the helper before the next
record read; its two saved cursors give a natural 32-byte frame. The setup,
mode, buffer-state and traversal GCC 2.8.1 probes differ in
instruction scheduling or allocation. These measured access/ABI views do not
recover complete object ownership, valid domains, historical APIs or gameplay
meanings. Independent function and complete-image gates remain mandatory.

The run's second group adds 192 bytes: `func_8005CE14` (28 bytes),
`func_8005CE30` (28), `func_8005E0E8` (28), `func_8006FDB4` (32),
`func_8006EC5C` (36), and `func_8005A1F0` (40). The first uses default
`gcc281 -quiet -O2 -G0` without a compiler-map entry; DOS GCC also matches.
The other five use basic `gcc272-dos -quiet -O2 -G0`. None needs extra flags,
bindings, empty constraints, volatile memory views or reservations. The four
leaf helpers have zero-byte frames; the two wrappers have 24-byte frames.

The classifiers explicitly narrow the incoming word, initialize their respective
results and conditionally replace them; ternary probes changed branch direction.
The lookup retains logical shift and an even byte-offset mask selecting eight
evidenced halfwords. The guarded clear leaves the pointer untouched for zero,
otherwise clears its byte and returns one. The first wrapper's helper consumes
only three argument registers, so its source passes the incoming pointer and
14/15 without invented fourth-argument forwarding. The second masks `$a1` in
place, narrows `$a0`, and passes their word sum while preserving untouched
`$a2/$a3` and unknown result residue. Historical formal/return types, helper
contracts, table ownership and layouts remain provisional. All accepted code
still requires independent bytes and unchanged complete-image gates.

The third group adds 212 bytes: `func_8006FA60`, `func_8006FA84`,
`func_8009D35C`, `func_8009D380`, `func_8009D3A4` (36 bytes each), and
`func_8009F554` (32). The scratch comparison against 2 uses default
`gcc281 -quiet -O2 -G0`; the other five use basic DOS GCC with the same flags.
All have natural zero-byte frames and need no extra flags or allocation aids.
The first five also need no volatile accesses. The halfword-copy helper retains
two scoped volatile read casts: individual and combined removal fail to retain
the measured physical rereads. Store-wide volatility was removed. These casts
do not assert MMIO or general record volatility. Void views retain the three
comparison constants in `$v0` without asserting historical return contracts;
the halfword helper's word result models its first reread. Strides, offsets and
access widths are evidenced, but complete layouts, ownership and APIs are not.

The fourth group adds six 48-byte functions (288 bytes): `func_80059E4C`,
`func_8005A4C4`, `func_8006F84C`, `func_800898D0`, `func_80089BD8` and
`func_80094444`. The descending halfword reset uses default GCC 2.8.1;
both basic profiles match it. The other five use basic DOS GCC. All use
`-quiet -O2 -G0` without extra flags, bindings, constraints, volatile views or
reservations. Three wrappers have natural 24-byte frames; three leaves have
zero-byte frames.

The reset's final ordinary C initializes scratch/fill before its loop variables;
cumulative removal eliminated every provisional aid. Its 120 descending stores
end at `0x800FB5D0`, with the unused next address represented as integer arithmetic
to avoid a before-array pointer. The selector helper retains three ordered byte
stores; the clamp narrows the actual bound register to unsigned low 16 bits before
its signed comparisons/negation. The conditional wrappers preserve callback and
register chronology without inventing unused arguments or historical return
contracts. Layouts, ownership, valid domains and original APIs remain provisional.

The fifth group adds 320 bytes: `func_8004A07C`, `func_8004FCE0`,
`func_80067F78`, `func_8006F1EC`, `func_8009568C` (52 bytes each), and
`func_80049D58` (60). All six use basic `gcc272-dos -quiet -O2 -G0`
without extra flags, bindings, constraints, volatile accesses or reservations.
The callback wrapper has a natural 24-byte frame; the five leaves have none.

The conditional lookups preserve selected-source access and unsigned-byte
results, without claiming table extents or selector domains. The reset retains
18 ordered stride-90 clears and its final separate clear. The classifier keeps
sentinel 255 distinct from the remaining 0/1 predicates. Scratch and halfword
stores occur before the callback; the state predicate preserves short-circuit
reads (all 65,536 byte pairs were checked). The interleaved lookup retains both
record captures and its conditional companion-byte access. Numeric scratch
views allocate no storage; full layouts, APIs and gameplay meanings remain
provisional. Complete independent byte and unchanged-image gates still apply.

The sixth group adds 364 bytes: `func_8006FAF4`, `func_8006FB90`,
`func_8006FBCC`, `func_80089C70`, `func_80094474` (60 bytes each), and
`func_800484B8` (64). All use basic `gcc272-dos -quiet -O2 -G0`, with
ordinary C and no matching aids or extra flags. The two wrappers have natural
24-byte frames; the four leaves have none.

The setters narrow both selectors to bytes, load a pointer at a 40-byte
stride, then store a byte at offsets `0x0A`, `0x03` or `0x04` of a
12-byte-stride item.
The dispatcher preserves all four incoming argument words. The clamp retains
upper-first signed-low-halfword tests, including inverted bounds, and the
observed raw result-register residue without claiming a return API. The last
wrapper stores a signed scratch halfword before forwarding signed/unsigned
low-halfword arguments and returning the helper's low byte. Access views add
no storage; complete layouts, domains, ownership and APIs remain provisional.

The seventh group adds 388 bytes: `func_8004ED28`, `func_80050888`,
`func_8005A72C`, `func_800659E0`, `func_800807B0` (64 bytes each), and
`func_800597C8` (68). The halfword lookup uses default GCC 2.8.1 (both basic
profiles match); the other five use DOS GCC 2.7.2. All use `-quiet -O2 -G0`
without extra flags. Three wrappers have natural 24-byte frames; three leaves
have none.

Only `func_800659E0` retains matching aids: two empty control fences keep its
measured return branches. Removing the first, second or both gives 52, 56 or
44 bytes instead of 64; ordinary/profile probes also failed. No instructions,
memory accesses, bindings, clobbers or reservations are emitted by these fences.
The other five sources are ordinary C without aids. Word updates use explicit
unsigned wrapping; the lookup narrows before indexing; callbacks preserve
ordered pre/post-call field reads and stores, low-byte stores and full result
register residue. Table extents, layouts, helper APIs and meanings are provisional.

Resident run group 8 adds 416 matching bytes:

All six use basic gcc272-dos quiet/O2/G0. Only func_8006FFC4 retains matching aids: its
actual secondary-byte v1 capture binding and one empty actual-value input on the equality
path; individual and joint removals fail. The other five use ordinary C without aids.
Capture-before-store, ordered global clears, callback-relative byte reads and full
result-register residues remain explicit; complete layouts, domains and original APIs are
provisional.

Resident run group 9 adds 436 matching bytes:

func_8005BD1C uses the default GCC 2.8.1 profile without an override or matching aids. The
other five use basic DOS GCC. Only func_80067E34 has one empty control fence and
func_800526C8 two extended empty fences; their individual and joint removals fail. The
latter's trial predicate binding and input were removed jointly. The other four have no
matching aids. These sites emit no instructions or extra accesses; APIs and complete
layouts remain provisional.

Resident run group 10 adds 460 matching bytes:

All six use basic gcc272-dos quiet/O2/G0 and ordinary C without matching aids.
func_8005C7A0's two helper calls are ordered left-first by the matching compiler in an
unsigned expression; standard C does not specify that expression's call order. A native
adaptation must explicitly sequence them. Separate ordinary locals changed the measured
24-byte frame to 32 bytes. No historical helper APIs or complete layouts are claimed.

Resident run group 11 adds 488 matching bytes:

All six use DOS GCC. Only func_8006F310 adds -fno-strength-reduce: removal changes its 80
bytes to 88. Only func_80052E68 retains one conditional empty input of the actual state;
the other five have no source matching aids. These per-function choices do not change the
global compiler profile or establish historical layouts, domains or APIs.

Resident run group 12 adds 532 matching bytes:

All six use basic DOS GCC. Minimized matching aids are: func_8009F500's incoming-step a2
binding; func_8009FDC8's one actual-value input; func_80095FF8's v0 result capture and
identity; func_80049D94's scratch-pointer identity and two narrowly qualified physical
byte rereads; func_8004FB68's actual v0 result binding; and func_80055700's one empty
fence. Three trial bindings in 49D94 were removed jointly. Reread qualifiers describe
measured accesses, not a hardware-volatility claim; no original full APIs or layouts are
claimed.

Resident run group 13 adds 576 matching bytes:

func_8005AD84 uses default GCC 2.8.1 and one actual v0 result binding. func_8006F07C uses
basic DOS GCC, a matching-only scalar reservation with a memory operand for the observed
eight-byte frame, actual v1/saved-a1 capture bindings and real argument constraints;
individual and related removals fail. func_8009E244 uses DOS GCC with -fno-schedule-insns
and its actual v0 result binding; single and paired removals fail. The other three use
basic DOS GCC without aids. Frame reservations do not establish historical stack data. The
5AD84 worker commit preceded its running restore gate; sources stayed frozen, the original
restore completed successfully, and post-completion independent audit/tests passed before
acceptance. Root independently revalidated the combined checkpoint.

Resident run group 14 adds 624 matching bytes:

All six use DOS GCC. Only func_8009F62C adds -fno-strength-reduce, with no source aid;
removing it changes 100 bytes to 108. Only func_800502A0 retains one empty identity of the
actual keyword, verified across 327724 unsigned cases. The other four use the basic
profile and ordinary C without aids. Layouts, domains and complete original APIs remain
provisional.

Resident run group 15 adds 696 matching bytes:

All six use basic DOS GCC. Only func_8006F220 retains an actual v1 capture binding and a
matching-only scalar/memory reservation reproducing its measured 32-byte frame; individual
and joint removals fail. The other five use ordinary C without aids. The reservation's
historical purpose is unknown, and full layouts and APIs are not claimed.

Resident run group 16 adds 724 matching bytes:

All six use basic DOS GCC and ordinary C without matching aids. func_8005A76C preserves
signed-halfword weighted interpolation divided by 10. func_8005A7E4 preserves
complementary signed-halfword interpolation divided by 100 with the weight clamped to
0..100; it is not a mask helper. Defined word arithmetic and exhaustive/boundary numerator
checks preserve measured narrowing. Original complete layouts and APIs remain provisional.

Resident run group 17 adds 756 matching bytes:

All six use basic DOS GCC. Only func_8009D3C8 retains two identities of initialized record
pointers; func_8003DB08 retains two actual depth identities and a matching-only 16-byte
reservation for the observed 40-byte frame. Individual/related removal tests fail. The
other four have no aids. func_8006FF48's byte-typed shade and actual sixteen-word call
need no frame aid; func_8006F290's compound assignment naturally reproduces the 32-byte
RA-only frame after its trial reservation was removed. Historical frame purpose and
complete helper APIs remain unknown.

Resident run group 18 adds 768 matching bytes:

All six use basic DOS GCC and ordinary C without matching aids. Measured frames are
40/0/0/24/24/24 bytes in table order. func_8006F360's actual mixed-width local argument
retains untouched padding; 65536 cases and the inspected callee's accesses were checked.
Its padding/layout view is not a recovered historical structure contract. No frame
reservation, emitted assembly or new storage is introduced.

Resident run group 19 adds 784 matching bytes:

All six use basic DOS GCC and ordinary C without matching aids, with natural 24-byte
frames. Partial access views retain original widths, callback chronology and
result-register behavior without claiming full historical APIs, layouts or gameplay
meanings.

Resident run group 20 adds 812 matching bytes:

All six use basic DOS GCC. Only func_80087BF8 retains one input-only empty constraint on
its actual masked value, with a zero-byte frame. The other five use ordinary C without
aids; frames are 24 bytes except func_8004FC54's natural 32 bytes. No source instruction,
reference hash, storage or linker placement is patched.

Resident run group 21 adds 896 matching bytes:

All six use DOS GCC and ordinary C without source matching aids. Only func_800537D0 adds
the paired -fno-schedule-insns/-fno-schedule-insns2; either alone or neither fails. Other
profiles are basic, and measured frames are 24/32/0/24/24/24 bytes. Unresolved
func_8001BCF4 remains assembly-backed and uncounted; func_8008820C is its verified
same-scope replacement. Original APIs and layouts remain provisional.

Resident run group 22 adds 868 matching bytes:

All six use basic DOS GCC. Only func_8004FBC4 retains its actual v0 result binding; its
related trial word binding was removed. Other sources are ordinary C without aids. Frames
are 24/24/24/112/24/24 bytes. func_800500B0's measured eight-byte request and 64-byte
passed buffer are access/frame views, not a full format or capacity contract.
func_8001DC80's local unprototyped DD50 call preserves actual a1-a3 residues after
preceding callbacks/syscall; a native adaptation requires explicit arguments. B908 caller
coverage includes all known callsites/dataflow and representative whole callers, not every
whole caller body or indirect API. Commit authors use privacy-safe noreply addresses.

Resident run group 23 adds 912 matching bytes:

All six use basic DOS GCC and ordinary C without matching aids. Frames are 24/24/0/0/24/24
bytes. func_80067A88's actual difference updates and no-storage scratch-base access view
eliminated all provisional pointer identities, volatile qualifiers and bindings jointly,
retaining its full ten-record scan and conditional pointer rereads. Original complete
layouts, domains and APIs remain unknown.

Resident run group 24 adds 940 matching bytes:

All six use basic DOS GCC. Only func_8006FEA8 retains an actual base-address a1 binding;
other sources use ordinary C without aids. Frames are 0/24/24/112/24/0 bytes.
func_80042B44 uses defined wide squares, low-word sum wrapping and signed interpretation
at threshold 0x90000, checked against original instruction bytes. func_80094FF4's
no-storage numeric pointer-slot view preserves the physical post-store pointer reread
without volatility or a matching constraint. func_80050140's request (16,1) and measured
64-byte passed buffer do not establish a full buffer format/capacity contract.

Resident run group 25 adds 980 matching bytes:

All six use basic DOS GCC. Only func_80087AB8 retains one empty input of the existing data
pointer on its false-flag branch; other sources are ordinary C without matching aids.
Frames are 24/0/0/32/72/72 bytes. func_8005B864 preserves the captured phase/update and
defined wrapping helper-word additions before halfword stores. func_8001CF5C retains
twelve measured incoming word/low-width views and its sixteen outgoing slots, forwarding
the third word unchanged. func_8004FAC0 compares the full signed state and uses defined
full-word unsigned subtraction/multiplication, narrowing only the calculated shade rather
than the incoming state. APIs, layouts and domains remain provisional.

Resident run group 26 adds 1112 matching bytes:

All six use basic DOS GCC. func_80068FC0 retains two actual magnitude/first-word bindings
and one tied magnitude identity consuming the first word; all seven
individual/related/cumulative removal probes fail. func_8004840C retains one empty memory
scheduling boundary; pointer inputs/outputs were removed and dropping the boundary or
clobber fails byte comparison. func_80049778 retains only its actual base-address a1
binding. The other three use ordinary C without aids. These constraints emit no
instructions; original frame purposes, layouts and APIs remain provisional. Unresolved
53728 and 6DA9C remain assembly-backed and uncounted, replaced by verified 68FC0 and
495B8. The latter preserves callback-relative selector/scratch rereads and defined
low-word squared-sum arithmetic without assuming binary selectors. Group size is 1112
bytes after replacements.

Resident run group 27 adds 1108 matching bytes:

All six use basic DOS GCC and ordinary C without matching aids. Frames are
24/32/32/24/24/24 bytes. Unresolved 54BA4 and 6FCFC remain assembly-backed and uncounted,
replaced by verified 17414 and 823C4. The latter's no-explicit-argument call-site views
preserve actual original raw register residues; 2283C forwards them into the inspected
66A94/66BD8 pre-use definitions, while 51810 forwards residues through several switch arms
whose nested APIs remain unresolved. A native adaptation must explicitly reconcile this
forwarding. Root narrowed only the overly broad coverage comment before independent
resident/audit checks, leaving instruction-generating C unchanged. The 79BA0 caller
coverage includes all known callsites/dataflow plus representative whole callers, not
every whole large caller body or indirect API. Full original layouts and meanings remain
provisional.

Resident run group 28 adds 1184 matching bytes:

All six use basic DOS GCC. func_80095E8C retains two actual adjustment/record-byte
bindings, with individual and joint removal failures. func_8004FE30 retains one identity
on the initialized selector 50; its trial binding was removed. func_80083CC0 retains a
no-storage numeric pointer-slot view and a narrowly qualified second physical counter
reread; individual and joint removals fail. func_8006FDD4 retains only its actual
base-address a2 binding. The other two use ordinary C without matching aids. Frames are
32/0/40/0/24/24 bytes. Qualifiers describe measured rereads, not hardware volatility.
Unresolved 2A83C, 6F87C and 6F934 remain assembly-backed and uncounted, replaced by
verified 4FD5C, 83CC0 and 6FDD4. Complete layouts, domains and original APIs remain
provisional.

Resident run group 29 adds 1128 matching bytes:

All six use DOS GCC. Only func_8009F574 adds -fno-strength-reduce and two narrowly
qualified physical-read views: its separate unsigned halfword read and post-store byte
reread. All seven nonempty removal subsets fail; the trial tied scratch constraint was
removed. func_8005E9D4 retains only one conditional empty input of its actual base
pointer; trial base identity and state input were removed jointly. The other four use the
basic profile and ordinary C without matching aids. Frames are 24/32/24/24/32/24 bytes.
func_80095F40 retains the full signed coordinate quotient, signed-low-half helper argument
and post-callback pointer/coordinate rereads before its clamp. func_80081FE0 explicitly
forwards its initial raw argument words to the original dispatcher. No full
layout/domain/historical API is claimed; read qualifiers describe matching accesses rather
than hardware volatility. Original 5E9D4 matched, so its conditional replacement 9FEDC was
not used or counted.

Resident run group 30 adds 1204 matching bytes:

All six use basic DOS GCC. Only func_800501DC retains one empty memory input of its actual
initialized second halfword; the trial explicit register clobber and extra pointer
variable were removed. Other sources are ordinary C without matching aids. Frames are
0/24/32/32/32/0 bytes. Unresolved 1BC30 remains assembly-backed and uncounted, replaced by
verified 814EC. The replacement preserves signed halfword branches, signed remainder,
physical coordinate rereads and target stores before the callback. func_8009FE1C reads
both source bytes even when the first qualifies; func_80072904 preserves conditional
overlapping byte rereads. func_80056A98 interprets the helper's low-word squared sum only
as an unsigned result. The 59D84 caller coverage is the approved complete
callsite/register-flow/result-use audit, not every whole large caller body or recovered
indirect API. Complete original layouts and APIs remain provisional.

Resident 90-function run round 1 adds 116 matching bytes:

AD088 retains an initialized high-address $1 binding and an empty identity of that actual
base; individual and joint removals fail. The other five have no matching aids. BA798 uses
the basic DOS compiler and forwards four incoming words through the partial callback
table; the others use basic GCC281. AA7B4 remains assembly-backed: its GP-relative access
needs unsupported infrastructure, so BA798 replaces it. First-slot worker2 exits were
observed directly and logs/proofs persisted before status-array recording was added.
Worker3's first wrapper failed only in metadata writing after successful gates and git
commit; recovery rechecked five views and tests, with the original failure preserved.
Rejected mutated baselines were rerun unchanged before acceptance.

Resident 90-function run round 2 adds 172 matching bytes:

C0B78 retains an initialized high-page $1 binding and one empty input of that real page;
all individual and joint retained-aid removals fail. The other five have no matching aids.
989B4 uses a no-storage fixed scratch-halfword view. 989B4 and AD1D4 use basic DOS GCC;
the other four use basic GCC281. AD1D4 forwards the original four incoming words to its
first BIOS wrapper; nested callbacks remain provisional. A96EC and A9700 remain uncounted
after reasoned unmatched ORI/source-shape probes; AF1FC and AD1D4 replace them
respectively. B6E88 has a preserved historical baseline log but no persisted baseline exit
receipt. A fresh after-commit recheck of its immutable 33-C parent passed with actual exit
zero, full retail byte equality and frozen parent-source evidence; it does not recreate
the missing historical pre-commit receipt.

Resident 90-function run round 3 adds 120 matching bytes:

All six are ordinary ordered packet-byte setters with no matching aids or extra flags.
ADD44 uses the basic DOS profile; the other five use basic GCC281. ADD58's initial
resident-only caller inventory was corrected before integration to include two overlay
callers, with argument/result flow inspected and unchanged source/byte evidence. Proved
byte offsets are partial access views, not recovered complete packet types or historical
APIs.

Resident 90-function run round 4 adds 120 matching bytes:

All six are ordinary ordered packet-byte setters with no matching aids or extra flags.
ADDBC uses basic DOS GCC; the other five use basic GCC281. Known caller dataflow and
original bounds were inspected; complete packet layouts and historical APIs remain
provisional.

Resident 90-function run round 5 adds 120 matching bytes:

B01F4 retains only an empty identity of the real initialized high-address base; a trial
hard binding was removed, and removing the last identity changes an addu operand-order
word. The other five have no aids. ADE34 uses basic DOS GCC; the others use basic GCC281.
B01F4 preserves unsigned word-wrap address arithmetic and one unsigned byte read; its
dispatch-table reference is known but exhaustive dynamic coverage is not claimed. The five
setters preserve their ordered byte accesses.

Resident 90-function run round 6 adds 192 matching bytes:

B7020 and B9510 each retain one initialized store-page $1 binding and two empty uses of
actual previous-word/address values; all seven nonempty removal subsets fail. The other
four have no aids. BC628, ADFD4 and 6845C use basic DOS GCC; the others use basic GCC281.
BC628 forwards the original four words through its first call; nested callback contracts
remain provisional. ADFD4 uses ordinary predicate/result reuse and conditional packet
writes. 6845C accesses the existing scratch byte through a no-storage numeric view. ADB14
preserves target signed right shift and unsigned left shift. B700C and BB218 remain
unmatched and uncounted, replaced by BC628 and ADFD4; instruction-copy fallback C5C54 was
skipped.

Resident 90-function run round 7 adds 184 matching bytes:

ADC40 retains one initialized low-mask a3 binding. Either initial mask binding could be
removed separately while matching, but their joint removal fails; only one was retained
and its final removal fails. It preserves the tag reread after a potentially aliasing tail
store. The other five have no allocation aids. C546C uses basic DOS GCC and a volatile
pointee for the initialized hardware status port; AF9EC's unnecessary qualifier was
removed, and native ports must model hardware reads explicitly. All others use basic
GCC281. AA9CC remains assembly-backed after ORI/GP-address mismatch and is replaced by
ADC40; no complete dispatch lifecycle or historical API is claimed.

Resident 90-function run round 8 adds 180 matching bytes:

All six use ordinary C with no matching aids or extra flags. ADE5C uses basic DOS GCC; the
others use basic GCC281. AF950 uses bounded unsigned coordinate masks and shifts. B652C
returns zero for nonpositive signed values before its positive right-shift/count loop.
ADE5C, ADE7C and ADE9C preserve their byte stores and pattern words at proved distinct
offsets; these are partial access views, not recovered complete packet layouts. ADBE8
tests only the low 24 bits.

Resident 90-function run round 9 adds 208 matching bytes:

AF800 retains one initialized masked-bits v0 binding; a trial empty input was removed and
final binding removal fails. The other five have no aids. BA768, B53D8, B6FCC and B6FEC
use basic DOS GCC; ADEBC and AF800 use basic GCC281. BA768 forwards four incoming words
through the proved callback slot at +8. B53D8 forwards its word to the unchanged original
COP2-writing callee; no new handwritten hardware instructions are introduced. B6FCC and
B6FEC preserve two-word forwarding and raw returns, with nested APIs provisional. B6E98
remains assembly-backed because its declared span contains two return bodies, replaced by
BA768 without boundary edits.

Resident 90-function run round 10 adds 196 matching bytes:

All six use ordinary C without matching aids or extra flags. B7474 and C11B8 use basic DOS
GCC; the others use basic GCC281. B73F0 preserves four-word forwarding and constant
return, B7410/B7430 preserve their unconditional two-word call and result predicate, B7474
forwards its word and result, and ADC7C preserves one masked word read/modify/write.
C11B8's one-word call is a matching MIPS view, not a complete native API: C11D8 initially
forwards inherited a1-a3 into BA738 before later definitions, with dynamic callback
consumption unresolved. Native conversion must reconcile that flow; current exact-byte
evidence is unchanged.

Resident 90-function run round 11 adds 292 matching bytes:

ACFB4 retains an initialized narrow v1 binding and one empty identity of that actual
value; all three nonempty retained-aid removal subsets fail, and an extra full-selector
input was removed. Other functions have no aids. BA738, ACFB4, AAC48 and AAC90 use basic
DOS GCC; AF198 and AF2B4 use basic GCC281. BA738 forwards four incoming words through the
proved +0x0C callback slot. ACFB4 narrows the selector before its conditional halfword
read and requires hardware adaptation for a native port. B01D0, A961C, AAC24 and AAC6C
remain assembly-backed after reasoned unmatched probes, replaced by AF198, BA738, ACFB4
and AF2B4 respectively; ambiguous fallback C4DF8 was skipped.

Resident 90-function run round 12 adds 232 matching bytes:

All six have no matching aids or extra flags. B02C0, B7450, ADCB8 and ADCE0 use basic DOS
GCC; AF2F4 and AF31C use basic GCC281. B02C0 remaps its third incoming word to the fourth
helper argument with a zero third argument. B7450 preserves raw inherited a2/a3 in
addition to its constant selector and remapped value. ADCB8/ADCE0 retain conditional byte
reads and full-word flag tests. AF2F4/AF31C preserve their proved byte/word writes.
Complete indirect APIs, packet layouts and historical return declarations remain
provisional.

Resident 90-function run round 13 adds 336 matching bytes:

ADC04 retains one initialized low-24-bit mask a2 binding; its only retained-aid removal
fails. ADF08 retains only an initialized length-five a0 binding: the trial destination
binding was removed, and final length removal fails. The other four have no aids. C1DC0,
C1DE8 and ADC04 use basic DOS GCC; the others use basic GCC281. C1DC0/C1DE8 preserve one
read/mask/write through the existing hardware pointer, which will require native hardware
adaptation. ADC04 retains the alias-sensitive tag reread. AF1CC preserves four-word
callback forwarding and its high-bit result predicate; AED30 copies the existing 92-byte
block and returns the captured destination. ADF08 preserves ordered conditional rectangle
reads and packed packet stores as a partial access view. BA88C and C4E2C have multiple
return bodies in their declared spans, C3F88 has an unmatched store scheduling shape, and
A91E4 has an unmatched ORI argument; they remain uncounted and are replaced by AF1CC,
ADF08, ADC04 and AED30 respectively. No complete callback lifecycle, packet layout or
historical API is claimed.

Resident 90-function run round 14 adds 260 matching bytes:

ADEDC retains one initialized masked-input v0 binding; its lone removal fails, with no
empty constraints. The other five have no aids. ADEDC uses basic GCC281; the others use
basic DOS GCC. AD2B4 forwards four raw incoming words into its first BIOS wrapper, then
preserves the ordered constant/pointer call and final syscall. AA9E8 passes the existing
output-byte array to the unchanged original 24-entry helper. B10B0 retains the callback
pointer and raw result; its four known address registrations and callback initializer were
inspected. A96C4 and AA7C4 preserve their ordered calls; AA7C4's last callee result
escapes unchanged, so its void declaration represents observed result non-use, not a
recovered complete return API. ADEDC preserves flag tests and low-bit packet writes as a
partial access view. A95C0 remains unmatched and uncounted after an ORI-versus-addiu
probe, replaced by AD2B4. Nested BIOS/callback contracts, full object layouts and
historical return declarations remain provisional.

Resident 90-function run round 15 adds 284 matching bytes:

ACFEC retains one initialized four-byte table-offset a0 binding; its only retained-aid
removal differs in two words. B0290 uses volatile pointees for the proved GPU registers,
which are hardware semantics rather than allocation aids. The other four have no aids.
ACFEC, B0290 and AD204 use basic DOS GCC; the others use basic GCC281. B49E8 preserves
ordered halfword/word resets through a partial access view, BA344 preserves unsigned-count
forward word-copy chronology including zero count, and B4A14 preserves calls to unchanged
original GTE matrix-load helpers. ACFEC keeps the original un-clamped index and result
predicate, and B0290 keeps the ordered GPU command write and masked read. AD204 forwards
four words to its first callback and preserves subsequent call order and the global clear;
its later no-argument AD2B4 declaration is only a matching MIPS view, while AD2B4
initially forwards inherited argument words to its syscall. Native APIs must reconcile
that flow rather than assume those words are unused. C3E18 remains unmatched and uncounted
after reasoned switch/store-scheduling probes, replaced by AD204. Complete historical
APIs, callback behavior, object extents and native hardware adaptation remain provisional.

The reviewed small-resident handoffs integrated on 2026-10-13 add six functions
and 196 matching bytes (the five-function follow-up contributes 188 bytes).
`func_800AC074`, `func_800156BC` and `func_8005A4F4` are empty eight-byte
functions; `func_800ADAD8` is a 60-byte masked bit-pack leaf. These four use
basic `gcc281 -quiet -O2 -G0` without allocation aids or compiler-map entries.
`func_800B0A80` uses basic `gcc272-dos -quiet -O2 -G0`, one compiler-map entry
and no aids; its 52-byte implementation retains the natural 24-byte RA frame,
the original helper call with -1, the 0xF0 addition and two ordered global stores.
Its helper contract and host-side wrapping arithmetic remain provisional.

`func_800ADA9C` uses basic GCC281 with one initialized real-value `$2` pointer
binding and no other aids. Removing that binding independently reproduces a
56-byte allocation instead of the original 60 bytes. The retained binding
preserves the initial fifth-argument load, base copy and twelve ordered stores
through a partial 20-byte access view; no new storage or full packet API is
claimed. The absence of discovered static callers does not establish runtime dead code.
Empty-function result-register residue can escape through caller epilogues;
void declarations are matching MIPS views, not recovered complete native APIs.

All six integrated sources were freshly compiled and checked against original
instructions, independently assembled original ASM, retail slices and full-linked
C. The original uncached resident C/ASM/restored-C modes, all five overlays and
all 18 tests pass; original bytes, storage and placement remain unchanged.

The medium-resident batch reviewed on 2026-10-13 adds five functions and 1,760
matching bytes. All five use basic `gcc272-dos -quiet -O2 -G0`, with one own-target
compiler-map entry each and no extra flags. `func_8001D568` (320 bytes, frame 24),
`func_80026B3C` (472 bytes, frame 32), `func_80081A6C` (296 bytes, frame 40), and
`func_800A3450` (320 bytes, frame 0) need no allocation aids or new storage.

`func_80020AB4` matches 352 bytes with its natural 24-byte frame. One scoped,
initialized `$2` binding retains the second real byte load and copy. Two empty
identities consume actual narrowed units values before their word-width shifts.
Removing any one retained aid emits 348 bytes; cumulative removal emits 340.
Two earlier tens identities and a selected-value input were removed together.
No artificial frame, clobbers, instruction-producing ASM or output patches remain.

Scratch scalar/array aliases are access views of existing addresses, not new
storage or MMIO claims. The constructor and formatter can leave result-register
residue that survives caller epilogues; provisional void views do not establish
complete historical return APIs. The distance routine's signed squares can
overflow before their unsigned casts: exact tested legacy compiler output is
not a portable/native arithmetic contract. Full layouts and helper APIs remain
provisional. At that first checkpoint, `func_8004B2E0` remained uncounted
research with five differing words, not an accepted conversion.

Worker and root isolated proofs, full resident C/ASM/restored-C verification,
all five overlays and all 18 tests preserve the complete original image bytes.
The matrix-copy source had an inaccurate padding comment corrected before its
final commit; both runs remain separate and the corrected source was reverified.

The resumed sixth target, `func_8004B2E0`, now matches all 308 bytes with basic
`gcc272-dos -quiet -O2 -G0`, one own-target compiler entry and its natural
48-byte frame. It needs no allocation bindings, empty constraints, volatile
accesses, frame reservations or extra flags, and introduces no storage.
Changing the scratch base from a symbolic array to `(u8 *)0x1F800000` changes
raw compiler output from `LA` outside the initial branch's delay slot to `LI`
inside it; the latter assembles to the original single `LUI`. The associated
index initialization also moves into its original load-delay gap. These
scheduling changes are observed; different compiler treatment of symbolic
and literal address expressions is the inferred explanation, not a claim to
have recovered the historical source. The former volatile halfword access
was then removed without losing the match. Two unsuccessful extra-flag trials
and all earlier near-match evidence remain separate and are not counted as
successful proofs.

This function preserves ordered descriptor-to-scratch copies, per-callback
word and halfword reloads, byte-count narrowing and its conditional low-byte
early return. Descriptor layouts and complete historical APIs remain
provisional. The known callers pass 255 and discard the return value; static
searches do not disprove undiscovered indirect references. The six accepted
medium functions contribute 2,068 matching bytes in total.

The resumed committed source passed worker and independent root function
proofs, then fresh combined-master resident C/ASM/restored-C builds, all five
overlays and all 18 tests. Five function-byte views agree, complete retail
images are unchanged, and before/after source/input file sets and hashes match.

`build.py` uses the shared per-function compiler map for `src/resident/`, with
the same `--psyq-bin`, `--maspsx`, `--dosbox` and `--dos-cc1` local-tool options.
For shared read-only installations, use your actual local paths:

```powershell
py -B tools_src\build.py --bin-dir 'C:\path\to\mips\bin' --psyq-bin 'C:\path\to\psyq45\BIN' --maspsx 'C:\path\to\maspsx\maspsx.py' --dosbox 'C:\path\to\dosbox-x.exe'
```

`--assembly-only` bypasses resident C compilation and preserves the original
assembly baseline. Unknown resident C slots and generated resident rodata fail
closed; overlay switch-table placement is not automatically a resident feature.

### Eleven verified resident matches (2026-10-14)

`func_80017258`, `func_8006EE60`, `func_8001CDAC`, `func_8006F714`, `func_8004419C`, `func_80081210`, `func_800B0248`, `func_800B0208`, `func_800AC06C`, `func_800189E8`, `func_80057074`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Medium resident batch 1 of 8 (2026-10-14)

`func_80054A68`, `func_80068E24`, `func_80050738`, `func_80052C6C`, `func_800551C8`, `func_80095090`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Medium resident batch 2 of 8 (2026-10-14)

`func_800688B8`, `func_800730F8`, `func_80087924`, `func_800489A8`, `func_80049398`, `func_80094DC4`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Medium resident batch 3 of 8 (2026-10-14)

`func_80098628`, `func_8009F690`, `func_80020C14`, `func_8002EB3C`, `func_8003172C`, `func_80033DC8`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Medium resident batch 4 of 8 (2026-10-14)

`func_8007A154`, `func_8003D99C`, `func_8004B0F0`, `func_8004E5A8`, `func_8005B61C`, `func_800815C8`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Medium resident batch 5 of 8 (2026-10-14)

`func_80081744`, `func_800882D8`, `func_800944B0`, `func_80095384`, `func_80096808`, `func_80097C04`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Medium resident batch 6 of 8 (2026-10-14)

`func_800987CC`, `func_8009D008`, `func_800A7C2C`, `func_800A7D58`, `func_800ABC34`, `func_8004A114`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Four reviewed small resident matches (2026-10-14)

`func_800AC07C`, `func_8006FDAC` and `func_800ACE10` are eight-byte
empty hooks that match with the default `gcc281 -quiet -O2 -G0` profile.
Their original return contracts and historical purposes remain unknown;
the replacements do not manufacture return values.

`func_800B6648` matches all 60 original bytes with
`gcc272-dos -quiet -O2 -G0` and one `PER_FUNC_COMPILERS` entry.
It masks the input magnitude to 12 bits and negates the helper result
for negative input. Unsigned subtraction preserves the original `negu`
word wrapping, including `INT_MIN`, without changing the original frame
or instructions. The signed input/result remain measured 32-bit target
ABI views, not complete historical declarations or a finished native ABI.

Fresh combined-master resident C, all-assembly and restored-C builds,
all five confirmed overlays and all 18 tests pass. Independent five-view
proofs cover all four functions. Complete new input manifests include
every new C source; there are no matching aids, added game storage,
resident rodata, output patches or global compiler-default changes.

### Reviewed resident func_8002BAEC (2026-10-14)

`func_8002BAEC` matches all 396 original bytes with
`gcc272-dos -quiet -O2 -G0` and one measured compiler-map entry.
Its shared `near`/`squared`/`zero` control graph preserves separate
masked-delta tests that other source shapes tail-merged. No register
bindings, artificial frame reservations or instruction patches are used.

Integration converts coordinate differences to `u32` before multiplication;
casting a signed product afterward does not prevent overflow. The resulting
word products and wrapped sum retain the original `mult`/`mflo`/`addu`
instructions and signed threshold comparison. Signed result interpretations
remain measured 32-bit target ABI views, not a complete native contract.

Fresh resident C/all-assembly/restored-C builds, all five confirmed overlays
and all 18 tests pass. Independent five-view proof and complete input freezes
cover the final integrated source. There is no added storage or resident rodata.

### Six reviewed medium resident matches (2026-10-15)

`func_80035944`, `func_8003EF94`, `func_8004F66C`, `func_80052A68`, `func_80055974`, `func_80055B84`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
All six use `gcc272-dos` with `-quiet -O2 -G0`; only their measured
compiler-map keys are added. The six real-value bindings and two empty
constraints in `func_80052A68` are independently removal-tested against
the final source hash. The other five sources need no such constraints.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

### Second six reviewed medium resident matches (2026-10-15)

`func_8005653C`, `func_8005A580`, `func_8006A16C`, `func_80075A14`, `func_80056240`, `func_8006C3D8`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
Compiler selections and any per-function flags are measured separately;
no global defaults or unrelated map entries are changed.
All six use `gcc272-dos -quiet -O2 -G0`; there are no new flag-map keys.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

`func_8005653C`: Preserves gate order, bounded signed-halfword negation, byte modulo-three selection and the counter reload after the callback. Both known callers discard the result; full historical APIs and record extents remain provisional. No matching aids.

`func_8005A580`: Preserves both ten-record loops, the 1,000-byte stride, mixed-width reset stores, signed switch default and later byte rereads. Difference negation is bounded to byte-derived values. Three direct calls are known; complete state layouts and extents remain unproved. No matching aids.

`func_8006A16C`: Uses unsigned operands before low-word products and subtraction, including direction -1 with INT_MIN, while preserving the target's signed comparison and halfword narrowing. Two initialized register bindings remain; independent final-hash removal tests differ by 4, 6 and 4 words (each binding and both). Phase and empty constraints were removed. This is measured target codegen, not a complete native arithmetic or table-bounds contract.

`func_80075A14`: Preserves 18/22-byte strides, post-helper pointer/value reloads, dependent byte lookups and unsigned subtraction after refreshed bounds. All trial constraints were removed. One caller propagates result-register residue, so a historical return API is not established. The explicit 32-bit address view and unknown table extents require separate native-port work. No matching aids.

`func_80056240`: Keeps the short-circuit random/helper gates, signed coordinate test, unsigned byte remainder and callback-mutated counter reload. Two static callers ignore the return. Pointer layouts, helper contracts and indirect users remain provisional. No matching aids.

`func_8006C3D8`: Preserves the early state-change path, duplicated helper/store sequences, current-pointer reread and mask-gated callbacks. Captured byte indices and halfword masks need no register constraints. One static caller is known; full helper APIs, mask-table bounds and alias contracts remain provisional. No matching aids.

### Nine-function medium request: 9 reviewed resident matches (2026-10-15)

`func_8004E2A0`, `func_8004E410`, `func_8004F25C`, `func_80050380`, `func_8008C204`, `func_80054F1C`, `func_80056ED0`, `func_8005965C`, `func_8005C2AC`.

Profiles remain individually verified through complete function and image
equality; these additions do not change global compiler defaults. Their
source comments and matching annotations describe observed legacy codegen,
not complete historical declarations or native-portability guarantees.
Compiler selections and any per-function flags are measured separately;
no global defaults or unrelated map entries are changed.
No generated resident rodata, added storage, instruction-output patches
or artificial frame reservations are introduced by this publication.

`func_8004E2A0`: Circular byte adjustment uses explicit unsigned low-word products and preserves both scratch-pointer reloads. Known caller discards the result; helper APIs, record extents and gameplay meanings remain provisional. Natural 40-byte frame; no matching aids.

`func_8004E410`: Squared coordinate sums wrap as unsigned words before the measured signed comparison; scratch pointer/angle are reloaded after callbacks. One removal-tested identity retains the actual final returned byte; independently removing it changes 16 words (404 versus 408 bytes). No pointer binding or extra flags remain. Four direct callers use the byte result; layouts and complete native APIs remain provisional. Natural 40-byte frame.

`func_8004F25C`: Four display digits retain full unsigned quotients until their measured halfword/byte narrowing; no helper value-range assumption is used. Six discovered direct callers ignore the result. Resource record bounds and full helper contracts remain unknown. Natural 40-byte frame; no matching aids.

`func_80050380`: Preserves 140 then 320 ordered unit-copy calls and both eight-byte rectangle requests. Selector arithmetic wraps as unsigned words before coordinate narrowing; final branching uses the whole selector. Driver callbacks/resource extents remain provisional. Natural 56-byte frame; no matching aids.

`func_8008C204`: Preserves state/callback updates, scratch halfword masks and the helper-result halfword store even when its narrowed byte is zero. Coordinate magnitude widens before negation; counters wrap only at byte stores. One discovered dispatch caller ignores the result. Natural 32-byte frame; no matching aids. Full layouts and nested helper APIs remain provisional.

`func_80054F1C`: Preserves near/far coordinate gates, original scratch OR indexing and signed arithmetic shift for negative helper bounds. A natural late zero-result join eliminated every trial matching aid. Both known callers test the full Boolean word; record/table extents and helper contracts remain provisional. Natural 24-byte frame.

`func_80056ED0`: Preserves unsigned input thresholds, circular byte-angle gates and conditional submission chronology. Existing bank counter is reloaded after callbacks, including the path with no submission; no helper purity or input-square range is assumed. One known caller ignores the result. Natural 32-byte frame and no matching aids; full layouts/APIs remain provisional.

`func_8005965C`: Preserves sparse selector cases, unchecked signed table indexing and post-callback byte-counter reload. Actual signed remainders bound constant additions safely but do not establish a nonnegative index. Known caller discards the result; table extents and callback APIs remain provisional. Natural 24-byte frame; no matching aids.

`func_8005C2AC`: Preserves five byte/stack-argument views, ordered matrix/GTE helper calls and unsigned word additions before output-halfword narrowing. Two independently removal-tested aids bind the actual scratch base and consume its initialized final vector halfword (15/8 changed words singly, 19 together). No volatile memory views or extra flags remain. All 40 direct callsite contexts were inspected, not all 32 complete caller bodies. Native GTE lanes, alias contracts and full record/helper layouts remain provisional; natural 40-byte frame.

### Resident func_8002F0FC takeover (2026-10-15)

`func_8002F0FC` (b2be577): 436 exact bytes, individually measured
`gcc272-dos -quiet -O2 -G0 -fno-schedule-insns`. Global defaults and
unrelated profile/flag entries are unchanged. The disabled first scheduling
pass is necessary for this source, not a general recommendation.

Preserves signed-halfword coordinate views, unsigned low-word squared-distance arithmetic, the fifth word's signed-low16 use, alias-sensitive pointer reloads, helper/counter order and final halfword copies. The sole known direct caller discards the return value; prior boolean-result speculation was corrected. Eleven individually and cumulatively removal-tested matching aids remain: five initialized value bindings, two initialized cursor identities, one existing-scratch alias, one pointer-read access view, an unused eight-byte stack-layout area, and the per-function first-scheduler option. Single removals change 102/9/2/2/48/5/5/51/81/9/51 words; removing all changes 104 words and produces 420 bytes instead of 436. The frame area is never accessed and its historical purpose is unknown; it is not recovered game data. No phantom operand, fake helper argument or instruction patch is used. Complete historical APIs, indirect users, pointer/alias contracts and termination remain unproved.

The stack-layout reservation is explicitly a matching aid: it is never
read, initialized, address-consumed or passed as an asm memory operand.
It explains emitted frame size only; the historical purpose of those eight
retail bytes is unknown. No generated resident rodata, data/BSS allocation
or instruction-output patch is introduced. Historical APIs and native
pointer, aliasing and termination contracts remain provisional.

### Resident func_8005C8D0 (2026-10-15)

`func_8005C8D0` (`b92bda1`): 1,348 exact bytes (337 instruction words),
`gcc272-dos -quiet -O2 -G0`, natural 56-byte frame. Only its compiler-map
entry is added; global defaults and unrelated profiles are unchanged.
No flag override, hard-register binding, empty asm identity, stack padding,
new data/BSS/rodata or instruction-output patch is used.

Typed 11/22-byte rows and 12/264-byte element/row access strides reproduce
the observed address calculation and frame without temporary frame padding.
These are access views, not complete table extents or validated indices.
Byte narrowing, unsigned initial divisions and the separately reread packed
fields' signed decimal arithmetic are preserved; packet/record/table aliasing
has not been excluded.

One matching aid remains: a numeric asm-name alias for the existing byte at
`0x1F800298`, used at its post-helper reread. It allocates no storage and makes
no volatile/MMIO claim. Independent single/all removal produces 1,356 bytes
and 337 changed instruction words; the retained control is exact.

The eight-word caller view of `func_8001CEE0` deliberately preserves the
retail call ABI, but is not a compatible shared/native C API with that
helper's existing narrower matching declaration. Reconciliation or a
native-only adapter is still required. Helper implementations are unchanged:
`func_8001CEE0` already has matching C; `func_8001D004` remains assembly-backed.
Complete record layouts, bounds, indirect users and native pointer/alias
contracts remain provisional.

### Three large resident functions (2026-10-15)

All three use `gcc272-dos -quiet -O2 -G0`; three compiler-map entries and
one per-function flag override are added. Global defaults, helpers, original
assembly and data are unchanged.
No instruction-output patch, fake helper argument, artificial frame padding,
new data/BSS/rodata or resident jump-table placement is used.

| Function | Code commit | Exact bytes | Natural frame | Extra flag |
| --- | --- | ---: | ---: | --- |
| `func_8001FF7C` | `727fc4f` | 1,372 | 80 | `-fno-strength-reduce` |
| `func_8009A278` | `3babda4` | 1,668 | 0 | none |
| `func_800C34E8` | `8f04318` | 1,232 | 0 | none |

`8001FF7C` initializes packet and coordinate groups. Its 40-byte packet and
8-byte coordinate structures are observed access views, not recovered complete
types. Both selector bytes are reread on each of 23 outer iterations; signed
bank/offset counters are real loop state with compiler-generated spills. The
helper declarations agree with the existing matching implementations, which
are unchanged. Four unnecessary identities/bindings were removed cumulatively
after the final source made them redundant.

Six source aids remain: argument register `$22`, case-zero coordinate registers
`$4`/`$3`, an actual CLUT/UV value capture, default-path depth register `$3`,
and an actual depth/extent constant capture. The empty captures emit no asm
instructions and make no memory-volatility claim; all operands are initialized
values consumed by real C operations. In particular, the input-only `u8` value
255 also supplies two actual UV stores. Independent single-removal controls
produce 39, 166, 163, 20, 10 and 50 changed word positions respectively.
All-source removal produces 1,396 bytes / 204 changed positions; flag-only
removal 1,432 / 274; removing both 1,464 / 304. The retained control is exact.

`8009A278` has no retained matching aids, extra flags or inline asm. Two earlier
register bindings were removed singly and together without changing bytes.
Mode-dependent six-byte updates and the byte timer retain unsigned wrapping;
packet updates retain each alias-sensitive byte reread. Its final reverse loops
form a cursor one byte before the table after the last store: this reproduces
the legacy compiler/machine behavior, not a portable C array-bound contract.
An index-only alternative did not match. Adjacent byte symbols and the scratch
word interpreted as a 32-bit packet pointer also need native API reconciliation.

`800C34E8` has no matching aids or extra flags. Its observed 68-byte request
contains a mask and 32 halfwords; mask zero selects all writes. Unsigned bit
tests are defined through bit 31 and selected halfwords are written in ascending
order. The existing destination pointer initializes to SPU MMIO base
`0x1F801C00`, with writes at `0x1F801DC0..0x1F801DFF`. Only the pointee is
volatile, not the pointer object; removing that qualifier still matches, but
it is retained for the hardware access. A native backend must replace MMIO.

Complete historical layouts, indirect users, table/buffer bounds and native
pointer/alias contracts remain provisional for these matches.

### Resident 24-function run, batch 1 of 4 (2026-10-15)

These six functions use `gcc272-dos -quiet -O2 -G0` without extra flags.
Only six compiler selections are added; global defaults, helpers, original
assembly/data and unrelated profiles remain unchanged. No instruction-output
patch, fake helper argument, artificial frame padding or new storage is used.

| Function | Code commit | Exact bytes | Natural frame | Retained artificial source aids |
| --- | --- | ---: | ---: | --- |
| `func_8001E5A4` | `6533c4e` | 240 | 0 | none |
| `func_800494C0` | `2841223` | 248 | 0 | none |
| `func_80054D2C` | `5d3c370` | 496 | 0 | 6 bindings, 3 empty identities |
| `func_80086930` | `7ea410f` | 712 | 16 | none |
| `func_80091518` | `8fc0339` | 728 | 32 | 2 bindings |
| `func_800C5138` | `b90f14a` | 240 | 24 | 2 empty value captures |

`8001E5A4` implements a low-byte phase/scale lookup with cardinal cases,
reflected quarter-wave entries, low-word multiplication/negation and an
arithmetic right shift. The two resident table symbols are physical access
bases into overlapping data, not independent native arrays. Existing callers
`8003172C` and `80096808` have different unsigned result/scale declarations;
their machine-word ABI is retained, but a shared native API needs reconciliation.

`800494C0` selects a 1,000-byte-stride row through scratch bytes and returns
squared coordinate distance. Widened signed products followed by unsigned
low-word addition avoid signed-overflow UB without changing instructions;
the final signed-word conversion follows the legacy target implementation.
Its earlier base-register binding was removed after exact omission controls.

`80054D2C` retains initialized, genuinely used pointers, coordinates, loaded
level values and distance/result values. Its six binding removals differ by
6, 6, 42, 6, 8 and 34 word positions; the three identity removals by 124, 117
and 79. Removing all aids gives 492 bytes / 118 changed positions. The empty
identities emit no asm instructions and make no memory-volatility claim.
Squared distances use explicit low-word products and a wrapping unsigned sum.

`80086930` uses a natural two-case switch and an observed 12-byte digit-record
view. All ten discovered call contexts support six real arguments, including
two outgoing stack words. No artificial hints remain; its equivalent if/else
source-shape control emits 704 bytes / 169 changed word positions. The byte
wrap in the rightmost-position test is retained. Complete record capacities
and the lookup helper's native contract remain unproved.

`80091518` retains two real direction-value bindings, with individual removal
differences of 3 and 2 words, and 2 for all removal. A compatible helper
declaration agrees with the existing `8005B7CC` word API. The observed caller's
byte directions and the extracted scale range 100..227 bound its signed
arithmetic. Post-helper scratch reads are not combined with earlier snapshots.

`800C5138` retains the actual mode and initialized message-page captures;
their single removals differ by 10 and 1 word positions, and all removal gives
236 bytes / 10 changed positions. The existing global pointer declaration
agrees with its volatile-pointee view elsewhere. Legacy stores explicitly cast
away that qualifier to retain measured delay-slot scheduling; only the actual
discarded hardware read is volatile. This is not a portable MMIO API: native
code must replace hardware/BIOS access. Its caller is an unlabeled interior
entry, and a historical return contract is not established by result residue.

Complete historical types, indirect users, allocation bounds and native
pointer/alias contracts remain provisional. Deferred padded and multi-entry
slots were not forced into this batch; the builder and function inventory
are unchanged.

### Resident 24-function run, batch 2 of 4 (2026-10-15)

Five functions select `gcc272-dos -quiet -O2 -G0`; `800B0C98` uses
`gcc281` with those defaults plus `-mno-split-addresses`. These are scoped
per-function entries; global defaults and original assembly/data are unchanged.

| Function | Code commit | Exact bytes | Natural frame | Retained artificial source aids |
| --- | --- | ---: | ---: | --- |
| `func_80019A44` | `f805cba` | 216 | 0 | 3 actual-value bindings |
| `func_8003D274` | `153fcf4` | 628 | 48 | 8 bindings, 3 argument-value captures |
| `func_800547A4` | `c339e54` | 632 | 0 | 5 bindings, 2 actual-value identities |
| `func_8008A65C` | `7466185` | 228 | 24 | none |
| `func_8009FEDC` | `9ed5ef6` | 212 | 0 | none |
| `func_800B0C98` | `d62d731` | 236 | 32 | 1 actual-status binding |

`80019A44` decodes literals and bytewise forward backreferences, preserving
overlapping-copy behavior. The three binding omissions differ by 17, 2 and
2 word positions; ordinary terminal-constant materialization differs by 46;
all-source omission differs by 48. A redundant terminal register binding was
removed. The two-pointer caller ignores the returned next-output pointer;
input termination, malformed-stream behavior and output capacity remain unknown.

`8003D274` calls the real five-argument byte helper before height/distance
tests and an alias-sensitive sequence of halfword writes. Its eight binding
omissions differ by 27, 5, 7, 2, 2, 3, 107 and 7 word positions; the three
initialized helper-argument captures by 5, 4 and 2. Separate selector/index
operand omissions also fail (4 and 3 words). All-source omission differs by
41 words. Every captured input is genuinely consumed; no residual register
was promoted to a fictitious argument. Widened products and unsigned sums
preserve low-word arithmetic; original signed/unsigned comparisons remain.

`800547A4` retains player/ball pointers, distances and direction values.
Five binding omissions differ by 12, 16, 3, 73 and 37 word positions; the
two value identities by 58 and 55. Removing the selected-ball dependency
alone differs by 56; all-source omission gives 628 bytes / 58 changed words.
The input operand is the initialized pointer actually used for the facing
load. Low-word products/negation, post-store rereads and the signed halfword
increment/narrowing before its cap preserve the original edge cases.

`8008A65C` needs no artificial aid. Its natural three-state switch selects
existing helpers and preserves post-call byte rereads; an equivalent if/else
control gives 200 bytes / 52 changed words. `8009FEDC` also needs no aids:
both earlier address aliases were removed exactly. Its full-word unsigned
result agrees with the existing caller declaration; unsigned identifier
remainder and signed scratch remainder are deliberately distinct.

`800B0C98` polls actual MMIO status and submits an image callback. Removing
the status binding differs by 5 words, removing the extra compiler flag gives
228 bytes / 32 changed words, and removing both gives 228 bytes / 37. Existing
global pointer views agree; casts expose only the observed callback slot.
This is not a recovered portable SDK interface. In particular `800BA798`
forwards four machine words, while this call explicitly sets only two. No
fictitious residual arguments were added; a native callback adapter/shared API
must reconcile this legacy call view, pointer widths and table effective types.

All aids and extra flags have independent single and cumulative controls.
Empty asm value captures emit no instructions and assert no memory volatility.
No instruction patch, new storage, fake frame padding or original-data edit
is used. Complete record capacities, historical types, indirect users and
native pointer/alias contracts remain provisional for all six functions.

### Resident 24-function run, batch 3 of 4 (2026-10-15)

Five functions select `gcc272-dos -quiet -O2 -G0`; `800B0D84` uses
`gcc281` defaults plus `-mno-split-addresses`. Global defaults, helper bodies,
original assembly/data and unrelated profiles remain unchanged.

| Function | Code commit | Exact bytes | Natural frame | Retained source choices |
| --- | --- | ---: | ---: | --- |
| `func_8001D470` | `bba3adb` | 248 | 48 | none |
| `func_8004968C` | `a09bd60` | 236 | 32 | none |
| `func_8005C1CC` | `aae3c16` | 224 | 32 | 1 mirrored-coordinate binding |
| `func_8008A144` | `bde1428` | 252 | 24 | ordinary source shape only |
| `func_8009D148` | `bd11bc0` | 264 | 32 | none |
| `func_800B0D84` | `3906b63` | 236 | 32 | 1 status binding; extra flag |

`8001D470` initializes an existing 0x90-byte record and calls its setup and
transform helpers. All nine incoming slots are populated by actual callers
and consumed; the frame is natural, not argument padding. No matching aids
remain. The existing ENTER caller's nine word-sized formal declaration differs
from the narrowed byte/halfword access view here. The machine ABI matches,
but a native shared signature must reconcile both, including guest-address
words, pointer widths and complete record/table capacities.

`8004968C` calls the four-argument selector helper, reloads the selector after
it, and returns a squared distance using narrowed input coordinates. Widened
products and an unsigned low-word sum avoid signed-overflow UB. No aids remain;
the signed result interpretation follows the legacy target implementation.
Scratch selector domains, storage extents and the native result API are unknown.

`8005C1CC` follows word-address point tables, optionally mirrors a signed
halfword, invokes the three-argument transform helper and writes three wrapped
halfword results. Its only retained binding is the actual mirrored coordinate;
single/all omission gives 248 bytes / 60 changed words. Unnecessary bindings,
empty identities and an earlier `-fno-schedule-insns` flag were removed. The
shared `u32 *D_8014A000[]` declaration was reconciled and reproved. The helper
reads eight input bytes although the caller writes only six: scratch+0x132 is
preserved, not initialized speculatively. Native address translation, aligned
accesses, aliasing, allocation bounds and a shared helper API remain provisional.

`8008A144` counts qualifying coordinates in eleven records and returns a
boolean word. No artificial bindings/asm remain. Ordinary split bank capture,
modulo byte cast and helper-result byte view have omission differences of
15, 42 and 56 words; all-source omission gives 244 bytes / 53 changed words.
The helper's existing `s32(u32)` declaration agrees. Halfword +/-128 arithmetic
is bounded, but complete native record/table extents remain unknown.

`8009D148` preserves helper-sensitive scratch rereads, byte counter wrap,
a sentinel branch that bypasses a pointer read, and both reset sites. Signed
halfword promotion makes abs(-32768) safe in s32. No artificial aids or extra
flags remain. Full selector domains, guest pointers and ownership are unproved.

`800B0D84` is a distinct GPU readback wrapper: its observed table slot points
to the independently inspected readback callback, not the batch-2 upload slot.
Status-binding removal differs by 5 words; flag removal gives 228 bytes / 32
changed words, both removal 228 bytes / 37. Only real MMIO reads are volatile.
The existing four-word `800BA798` forwarding helper is called through the two
explicitly set word view; no residual registers were invented as arguments.
Native MMIO/callback adapters, table effective types and shared declarations
remain unresolved. Binary matching is not proof of native API compatibility.

All frozen sources have independent original/C/retail proofs and individual
and cumulative matching-aid controls. No new storage, artificial frames,
instruction patches or original data changes are used.

### Resident 24-function run, batch 4 of 4 (2026-10-15)

Five functions select `gcc272-dos -quiet -O2 -G0`; `800B0FB4` uses
`gcc281` defaults plus `-mno-split-addresses`. Only per-function compiler
settings change; original assembly/data, global defaults and helpers do not.

| Function | Code commit | Exact bytes | Natural frame | Retained source choices |
| --- | --- | ---: | ---: | --- |
| `func_80028F98` | `d5aad01` | 220 | 24 | none |
| `func_80049F90` | `25b6715` | 236 | 32 | natural status switch |
| `func_80068474` | `14e2756` | 224 | 0 | none |
| `func_80083D94` | `1b5ca35` | 244 | 0 | fixed-address reread; ordinary source shape |
| `func_8009D250` | `ae9c504` | 268 | 24 | none |
| `func_800B0FB4` | `df9ab86` | 252 | 24 | 1 actual-status binding; extra flag |

`80028F98` writes boundary targets around four actual helper calls and
conditionally updates record state. Its provisional target-coordinate binding
was removed after exact single/all omission tests. Scratch and coordinate
reads remain after the helpers that may mutate them; signed-halfword negation
is bounded in s32, including -32768. Numeric scratch symbols refer to existing
storage, not new data. Historical types, ownership and capacities are unknown.

`80049F90` uses a natural status switch: 2, 4, 27, 38 and 89 dispatch the
four-argument helper; 1 takes the direction/word update directly; the default
resets a selector and falls through to that same update. No artificial aids
remain. The direction snapshot survives helper calls, while later record
reads are fresh. The threshold and subtraction are unsigned. Helper semantic
names and full native record/API definitions remain provisional.

`80068474` is a zero-argument leaf operating on two existing scratch entries.
Its two state checks are independent, not if/else; the count is read after
any possible clear. The lone located caller ignores the result register.
No bindings, asm, extra flags or new storage are needed. Byte arithmetic is
bounded; absolute scratch addresses and historical state meanings still need
native adaptation.

`80083D94` compares two byte inputs using the existing mode byte. Ordinary
shared-tail labels preserve the low-default path's initial value and the
high-default path's second load. The latter uses a fixed-address u8 view of
the same linker-proved `D_8010A400` storage: it adds neither data nor invented
volatility. Replacing only this view by the canonical symbol yields 232 bytes /
51 changed words because GCC removes the observed reread. Other source-shape
controls are parity if/else (240 bytes / 15 words), expanded absolute value
(268 / 53), and removing the unsigned comparison suffix (244 / 2); all-source
omission gives 252 / 54. Absolute differences are at most 255. There are no
register bindings, operand asm or extra flags. Native code must unify these
symbol/literal storage views; complete original API semantics remain unproved.

`8009D250` preserves distinct unsigned identifier and signed scratch remainder
domains, a guard's early return, and the flag reread after its helper. The
helper consumes only the actual record pointer: incoming a1/a2 are overwritten
before use, so no residual registers are invented as helper arguments. No aids
remain. Full selector domains, scratch extents and native alias bounds are unknown.

`800B0FB4` conditionally invokes the observed variadic logger and submits the
existing ordering-table callback at offset 0x18. Its callback's complete body
and existing `void(u32)` view were inspected. Status-binding removal differs by
5 words; flag omission gives 244 bytes / 30 words; removing both gives 244 /
35. Real hardware reads are volatile; no memory clobber or instruction-output
asm is used. The two-explicit-word call view of the existing four-word
`800BA798` forwarder still requires a native adapter, along with MMIO, callback
table effective types and pointer-width translation. Binary equality does not
settle that native API contract.

Independent single/all source-aid and flag controls cover each retained choice.
All six have original/C/retail proofs; no fake arguments, forced frames, new
storage, post-link patches or changes to original data are used.

### Resident 96-function run, batch 1 of 16 (2026-10-15)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_80026A64` | `9749490` | 216 | 24 | `gcc272-dos` / `defaults` | Natural three-case switch including idle case2 |
| `func_8004F58C` | `bb38ac1` | 224 | 72 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_80054C54` | `0481d30` | 216 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_800827D4` | `aabf996` | 244 | 40 | `gcc272-dos` / `defaults` | Ordinary initialized mark source shape |
| `func_800A2684` | `d81ecda` | 316 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_800B6464` | `9251716` | 200 | 0 | `gcc272-dos` / `defaults` | One real-value binding, one empty identity |

`80026A64`: Width-narrowing subtraction/increment preserve wrapping. Idle-case omission single/all differs by 12 words. All helper mutation rereads retained. Existing B864 RecordView* vs local opaque byte-pointer helper view requires shared native declaration reconciliation; target ABI exact, full layout/table bounds unknown.

`8004F58C`: Natural 72-byte frame includes 64 outgoing bytes for sixteen actual constructor arguments, matching existing narrow signature. Selector lowbyte and ten 40-byte strides bound arithmetic; helper-sensitive scratch/store ordering kept. Native record capacities and helper historical return contracts unknown.

`80054C54`: Full-word selector sentinel 255 and boolean/byte results match four caller contexts. Existing s32(u32) helper signature agrees. Byte/remainder narrowing and stride1000 preserved, no writes. Native table allocation/bounds and complete layout unknown.

`800827D4`: No artificial aids; inline mark variant differs by 2 words. Scratch pointer reloads after helpers retained; FBC4 prototype corrected to existing s32(u32). No-argument 2283C call differs from existing fourword forwarding declaration; do not invent residual arguments, native API/adapter reconciliation required. Historical record/table extents unknown.

`800A2684`: Unnecessary empty identity removed exactly. Signed count / 300 multiplication stays within s32 for all inputs; signed modulo100 retained. Neither incoming registers nor helper results consumed; second flag reread after callbacks retained. Native scratch/record bounds and helper APIs provisional.

`800B6464`: All six negations corrected to unsigned lowword subtraction then target signed reinterpretation, including INT_MIN. No signed overflow. Raw binding removal: 15 words; identity: 2; all: 17, all 200 B; no extra flags. Signed comparisons preserve target INT_MIN behavior rather than mathematical unsigned abs. Native input extent/alignment and target signed conversion remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `80026A64`: remove-idle-case2: 216 B / 12 words; remove-all-source-aids: 216 B / 12 words.
- `800827D4`: remove-extra-ordinary-inline-mark-source-shape: 244 B / 2 words.
- `800B6464`: remove-raw-v0: 200 B / 15 words; remove-first-next-identity: 200 B / 2 words; remove-all-source-aids: 200 B / 17 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 2 of 16 (2026-10-15)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8002B1E4` | `828be7e` | 424 | 32 | `gcc272-dos` / `defaults` | One initialized result register binding and measured equivalent range-test expression |
| `func_8003495C` | `c7149c4` | 368 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_80056694` | `fb74e8c` | 208 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_80071F24` | `10d7b6e` | 372 | 32 | `gcc272-dos` / `defaults` | Ordinary decrement source shape |
| `func_8009D4C4` | `44a0332` | 428 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_800B9448` | `1441153` | 200 | 40 | `gcc281` / `defaults` | One initialized clock register binding |

`8002B1E4`: Signed halfword square bounds fit s32; the sum is unsigned. Signed random remainders may be negative; both derived divisors remain positive. Helper side effects and result words follow the target, while native record bounds and historical types remain provisional.

`8003495C`: Unsigned coordinate differences/products preserve low-word arithmetic; signed halfword absolute values fit s32, including -32768. Existing helper views and both pointer inputs were inspected. Native bounds and full shared record types remain provisional.

`80056694`: One record argument and ignored result match the caller. The scratch coordinate and record flag are read after the first helper; the counter is reread after callbacks. Unsigned low-word addition preserves the unrestricted helper result, and byte narrowing preserves counter wrap. Native scratch/roster allocation and helper API meanings remain provisional.

`80071F24`: Both inputs use their low bytes; the divisor must be nonzero, matching the console division-trap domain. A native trap adapter or explicit precondition is needed. Four real helper arguments and one packet-selector argument are verified; no residual second packet-helper argument was invented. Byte/halfword narrowing is bounded. Native packet alignment, extents and shared helper return views remain provisional.

`8009D4C4`: Five real helper APIs are inspected. Signed scratch remainder and unsigned byte identifier remainder stay distinct; halfword coordinates are extended into the existing word ABI. Identifier, scratch coordinates and final state are reread after stores/helpers. No invented residual helper arguments. Complete native record bounds, selector domains and scratch mapping remain provisional.

`800B9448`: Actual CD helper arguments and ignored returns were inspected. Deadline arithmetic uses unsigned wrap before target signed interpretation, with post-helper state reloads. The contiguous eight-word physical view crosses split labels: native array, alias and layout contracts remain unresolved; do not infer a portable shared array from binary equality.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8002B1E4`: remove-result-v1-binding: 424 B / 1 words; remove-mixed-square-shape: 416 B / 78 words; remove-all-source-aids: 416 B / 78 words.
- `80071F24`: remove-extra-ordinary-decrement-source-shape: 372 B / 1 words.
- `800B9448`: remove-clock-s1: 200 B / 3 words; remove-all-source-aids: 200 B / 3 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 3 of 16 (2026-10-15)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8002CE60` | `4f569a5` | 252 | 32 | `gcc272-dos` / `defaults` | Three initialized bindings and one single-input operand identity |
| `func_80036230` | `20f013a` | 392 | 32 | `gcc272-dos` / `defaults` | Two initialized used register bindings |
| `func_8005726C` | `3275fd8` | 260 | 32 | `gcc272-dos` / `defaults` | One real halfword-load identity |
| `func_80071D94` | `ea58815` | 400 | 40 | `gcc272-dos` / `defaults` | Measured ordinary postincrement source shape; no artificial aids |
| `func_8009D670` | `52f116a` | 428 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_800B7494` | `38ad405` | 260 | 0 | `gcc272-dos` / `defaults` | No artificial aids |

`8002CE60`: Phase arithmetic uses unsigned low-byte wrapping. Negative absolute word arithmetic uses unsigned negation before signed division by 736, preserving INT_MIN without signed overflow. Real helper arguments agree with inspected views; post-helper state reloads remain. Native record layouts, scratch mapping and historical shared types remain provisional.

`80036230`: Actual initial helper result lies -8..16 and signed remainders can be negative; full helper analysis bounds every score intermediate to -33..37. The random helper has one argument, including its defined zero-divisor path. No extra flags or phantom residual arguments. Post-helper record/scratch reloads and full-word result are preserved; native allocation and shared-layout contracts remain provisional.

`8005726C`: The initialized halfword load has one necessary empty identity: removing it singly or cumulatively gives 252 bytes / 40 changed words. Signed-halfword promotion makes negation and abs(-32768) safe in s32. The event counter is reread after callbacks. No residual a1 was added to the one-word helper API; native layouts and scratch mapping remain provisional.

`80071D94`: Six real four-argument calls preserve packet transitions. Byte divisor must be nonzero; the target traps outside that domain. Halfword updates narrow after safe promotion, and byte postincrement compares the old value. Private pointer/word helper views need native shared-type recovery; no fake helper arguments.

`8009D670`: Sibling of 8009D4C4 with scratch byte 007 and selector one. Actual helper arguments, post-helper coordinate reloads and final state reloads are preserved. Signed scratch modulo differs intentionally from unsigned identifier modulo. Native record bounds, scratch mapping and historical helper contracts remain provisional.

`800B7494`: The actual v0 return is the destination pointer, though inspected callers ignore it. Sector bias uses explicit unsigned wrap; positive-constant division and bounded decimal arithmetic avoid signed overflow for every s32 input. Three byte stores remain ordered. Historical SDK naming and portable shared declarations are not asserted.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8002CE60`: remove-initial-phase-binding: 248 B / 59 words; remove-initial-phase-identity: 248 B / 59 words; remove-low-phase-binding: 252 B / 7 words; remove-final-phase-binding: 252 B / 3 words; remove-all-source-aids: 248 B / 59 words.
- `80036230`: remove-record-binding: 392 B / 22 words; remove-maximum-binding: 392 B / 2 words; remove-all-source-aids: 392 B / 24 words.
- `8005726C`: remove-load-identity: 252 B / 40 words; remove-all-source-aids: 252 B / 40 words.
- `80071D94`: remove-extra-ordinary-separated-result-source-shape: 400 B / 6 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 4 of 16 (2026-10-15)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_80017564` | `0482a6f` | 288 | 32 | `gcc272-dos` / `defaults` | No artificial aids; reconciled pointer-return helper declaration |
| `func_80034734` | `d8f56d3` | 552 | 64 | `gcc272-dos` / `defaults` | Three initialized bindings and one single-pointer operand identity |
| `func_8005A100` | `3fb1c8d` | 240 | 24 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_80076D44` | `b5519aa` | 312 | 32 | `gcc272-dos` / `-fno-strength-reduce` | Ordinary loop constants; measured -fno-strength-reduce |
| `func_8009D81C` | `91fb39d` | 424 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_800BF364` | `2db0e70` | 236 | 32 | `gcc272-dos` / `defaults` | No artificial aids; raw selected word retained until final argument conversion |

`80017564`: The B7494 helper declaration now agrees with its queued pointer-return definition; ignored result stays ignored. Selector arithmetic and byte-count shift preserve unsigned wrapping. Three extern names are strided overlapping physical views, not separate native arrays. Retry loads and status stores remain ordered; descriptor extent, BIOS return contract and guest-pointer resolution remain provisional.

`80034734`: Three real choices account for stack locals, with bounds checked before writes. Signed fallback arithmetic is bounded by halfword/remainder ranges. The original selection-index precondition is explicit: random(count) must be nonnegative and below count; negative signed remainders would index before the original list too. No preceding stack storage is invented. Native bounds and exceptional-state adaptation remain unresolved.

`8005A100`: Four-case low-byte dispatch preserves the incoming word and unsigned low-word helper-result additions. One caller explicitly sets selector one; another inherits the argument through callers. Do not invent a zero-argument API from that path. Native shared signatures and global-state invariants remain provisional.

`80076D44`: All five real helper signatures agree with known definitions; the final state helper consumes only one argument, not residual loop registers. Scratch2EE is a halfword store. Bounded 23-record loop arithmetic is safe; post-helper scratch reads remain ordered. Absolute aliases add no storage. Native scratch mapping, roster extent/alignment and historical shared layouts remain provisional.

`8009D81C`: Actual FB84 consumes only the record; residual argument registers are overwritten before use. Signed scratch modulo and unsigned byte modulo remain distinct. Coordinate and final state reloads preserve helper/store alias behavior. No generated storage; native scratch mapping, complete record bounds and historical helper types remain provisional.

`800BF364`: Caller explicitly supplies six ABI words; the fourth real slot is ignored by this implementation, not invented. Keeping the selected u32 until the helper's u16 conversion naturally preserves full stack-word loads. Branches prove nonzero denominators and bounded numerator/pan arithmetic. Helper return is forwarded; transitive native audio contracts remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `80034734`: remove-record-binding: 552 B / 22 words; remove-record-identity: 552 B / 6 words; remove-z-binding: 548 B / 73 words; remove-value-binding: 548 B / 79 words; remove-all-source-aids: 548 B / 89 words.
- `80076D44`: remove-extra-ordinary-inline-loop-constants-source-shape: 312 B / 3 words; remove-flag-0: 320 B / 40 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 5 of 16 (2026-10-15)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8001E158` | `2e81dd8` | 440 | 24 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_80035184` | `d00cc80` | 412 | 32 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_80069094` | `756b2e4` | 276 | 0 | `gcc272-dos` / `defaults` | One initialized magnitude binding and two measured operand identities |
| `func_8008A8A4` | `e4097e8` | 304 | 40 | `gcc272-dos` / `defaults` | No artificial aids; explicit observed halfword result conversion |
| `func_800A3590` | `fb9f32e` | 416 | 40 | `gcc272-dos` / `-fno-strength-reduce` | No source aids; measured -fno-strength-reduce |
| `func_80068378` | `551f365` | 228 | 0 | `gcc272-dos` / `defaults` | One initialized active binding, absolute byte view and measured ordinary address/reset choices |

`8001E158`: Eight genuine four-word event registrations and single-word enable calls are corroborated by dispatcher stubs and local SDK declarations. Opaque handles retain 32-bit bits through signed/unsigned views; globals reload between callbacks. ROM bodies and callback semantics beyond null remain unavailable; native long width and shared handle declarations require explicit reconciliation.

`80035184`: Signed-half position negation is safe even for -32768; unsigned speed subtracts only above the threshold. Helper-mutated state and scratch pointers reload in target order, including speed only after both direction helpers. Actual one-pointer/void caller view and six helper interfaces are inspected. Native record layouts, animation table bounds and scratch mapping remain provisional.

`80069094`: Existing void(byte pointer,word,word) ABI is preserved with explicit signed-half narrowing. Wide squares narrow to unsigned low words before addition and target signed comparison; halfword absolute values are safe. All four capture dependencies have failing removal controls. Stores and subsequent alias-sensitive reloads follow the target; native record bounds and scratch translation remain provisional.

`8008A8A4`: Actual first animation call takes object, selector 94 and index zero. Loop checks indices six down to zero. Signed-half random result plus two is bounded; the real five-argument helper explains the natural frame. Scratch pointer reload follows callbacks. Known production signatures are used, with older narrow B36C views explicitly unresolved for native shared-header recovery.

`800A3590`: Both ten-record loops preserve selector reload between helper-mutating passes. Signed-half values promote before abs, including -32768. A0F30 consumes a0/a2/a3: its actual caller-loaded mode occupies the unused a1 position, not a phantom residual argument. Native record bounds, post-loop pointer extent and shared helper contracts remain provisional.

`80068378`: Two byte-selector inputs and void result are supported by both callers. Scratchpad is ordinary PS1 RAM, not MMIO; all accesses are bytes. Integer address additions and bounded ten-row increments preserve target bits. Every retained component has a failing removal control, while two unnecessary bindings were removed. Native address translation, backing-row/scratch extents and complete layouts remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `80069094`: remove-binding-magnitude: 276 B / 14 words; remove-entry-capture: 272 B / 68 words; remove-scratch-capture: 276 B / 21 words; remove-extra-entry-z-dependency: 276 B / 1 words; remove-extra-entry-x-dependency: 272 B / 68 words; remove-extra-scratch-pointer-dependency: 280 B / 42 words; remove-extra-scratch-x-dependency: 276 B / 12 words; remove-all-source-aids: 268 B / 65 words.
- `8008A8A4`: remove-extra-ordinary-no-halfword-cast-source-shape: 296 B / 27 words.
- `800A3590`: remove-flag-0: 424 B / 67 words.
- `80068378`: remove-active-v0: 228 B / 6 words; remove-absolute305-view: 224 B / 41 words; remove-clear-address-order: 228 B / 1 words; remove-set-address-order: 228 B / 1 words; remove-used-reset-capture: 228 B / 2 words; remove-all-source-aids: 224 B / 46 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 6 of 16 (2026-10-15)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8001DF74` | `c9ce0d4` | 384 | 48 | `gcc272-dos` / `defaults` | Four actual initialized argument bindings and one input-only capture; measured dependencies |
| `func_800381F4` | `afcff1d` | 516 | 56 | `gcc272-dos` / `defaults` | No artificial aids; compatible existing helper access type |
| `func_80055EEC` | `739b4b9` | 276 | 32 | `gcc272-dos` / `defaults` | Two initialized single-pointer operand identities; no bindings or flags |
| `func_8008A740` | `4ac67ad` | 356 | 32 | `gcc272-dos` / `defaults` | No artificial aids; ordinary signed angle remainder and halfword conversion |
| `func_800A3730` | `afb992b` | 496 | 40 | `gcc272-dos` / `-fno-strength-reduce` | No source aids; measured -fno-strength-reduce |
| `func_800652EC` | `fe6e3c6` | 232 | 32 | `gcc272-dos` / `defaults` | Two initialized coordinate register bindings; no identities or flags |

`8001DF74`: The eight-byte rectangle is real state, and the frame includes a genuine fifth helper argument. Four capture values are actual ClearImage inputs; every binding, each capture input and all aids have independently failing removal controls. Width/height narrow to u16; signed-half origin multiplication by two is bounded and avoids negative left-shift UB. SDK word/typed views, native rectangle/header reconciliation and scratch/bank bounds remain provisional.

`800381F4`: Unsigned deltas/products/sums preserve original low words and unsigned distance comparisons. Signed-half position negation is safe. Chosen pointer is initialized whenever best leaves its sentinel, and tied distances replace the earlier candidate. Existing helper struct/prototypes agree; post-callback coordinate/identifier reloads remain. Native bank allocation, record bounds and scratch mapping remain provisional.

`80055EEC`: Signed-half position negation is safe in s32, while the shifted sign test uses unsigned bits before target signed interpretation, including -32768. Four-halfword table index is masked to 0..3. Counter reload follows the callback before byte increment. Actual helper and caller views agree with existing declarations; full record/global allocation and native scratch adaptation remain provisional.

`8008A740`: The real 94FF4 object argument is retained and agrees with production. Heading difference is 193..448, so signed remainder/multiply is safe; random halfword plus two fits s32. Five genuine helper arguments explain the frame. Callback-dependent scratch reads are preserved. Native layouts, shared helper invariants and scratch mapping remain provisional.

`800A3730`: Signed-half differences and promoted absolute values are safe; squares use wide products narrowed to unsigned words before wrapped addition and target signed comparison. Spacing stores narrow to u16 before fresh pointer/coordinate reads; trig additions use unsigned wrapping. Existing helper types and partial struct view are preserved. Native allocation, post-loop pointer extent, scratch translation and effective-type contracts remain provisional.

`800652EC`: Both coordinate differences are bounded to +/-65535, so signed negation is defined for the full halfword domain. Absolute distances compare against unrestricted u32 threshold. Actual two-input/count return and pure selector helper agree with inspected callers. Each binding/all-source omission fails. Native table extent includes final formed cursor, halfword alignment and record ownership remain required.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8001DF74`: remove-rectangle-argument-binding: 384 B / 8 words; remove-red-argument-binding: 384 B / 8 words; remove-green-argument-binding: 384 B / 6 words; remove-blue-argument-binding: 384 B / 4 words; remove-argument-preparation-capture: 384 B / 10 words; remove-extra-capture-clearRect-dependency: 384 B / 10 words; remove-extra-capture-red-dependency: 384 B / 8 words; remove-extra-capture-green-dependency: 384 B / 6 words; remove-extra-capture-blue-dependency: 384 B / 4 words; remove-all-source-aids: 384 B / 10 words.
- `80055EEC`: remove-base-identity: 276 B / 17 words; remove-record-identity: 280 B / 62 words; remove-all-source-aids: 280 B / 62 words.
- `8008A740`: remove-extra-ordinary-no-halfword-cast-source-shape: 348 B / 19 words; remove-extra-ordinary-angle-mask-source-shape: 336 B / 48 words; remove-extra-ordinary-both-source-shapes: 328 B / 48 words.
- `800A3730`: remove-flag-0: 512 B / 123 words.
- `800652EC`: remove-dx-v0: 232 B / 7 words; remove-dz-v0: 232 B / 7 words; remove-all-source-aids: 232 B / 19 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 7 of 16 (2026-10-15)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8001DDD0` | `d2e990d` | 420 | 40 | `gcc272-dos` / `defaults` | One initialized enable-word register binding |
| `func_80049DF0` | `ffdc258` | 416 | 48 | `gcc272-dos` / `defaults` | Two measured symbolic scratch call-input views; no register aids or flags |
| `func_80056360` | `a2b56ea` | 476 | 32 | `gcc272-dos` / `defaults` | Two initialized bindings and two minimized operand identities |
| `func_8008A9D4` | `25d9f60` | 468 | 24 | `gcc272-dos` / `defaults` | No artificial aids; measured ordinary inverse-branch shape |
| `func_800A5810` | `e0e7858` | 368 | 48 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_80067E7C` | `368c369` | 252 | 32 | `gcc272-dos` / `defaults` | One initialized magnitude binding, two scalar identities and ordinary used one constant |

`8001DDD0`: Rectangle and fifth helper argument account for the natural frame; binding is a real value stored twice and fails removal controls. Actual geometry helper returns status, ignored here. Only six camera words are initialized; untouched words are not assumed zero. Post-helper matrix copy reads existing state. Native buffer bounds, typed alias/layout, callback APIs and scratch/header reconciliation remain provisional.

`80049DF0`: All four real inputs and actual fifth outgoing helper byte are retained. Wrapped unsigned negation precedes target signed /736; index+1 lies 1..256 and squared distance stays low-word unsigned. Record ID is captured before a potentially aliasing scratch store; call/distance coordinates reload separately. Sqrt remains the original opaque helper, not an unrestricted mathematical replacement. Native types, aliases and scratch mapping remain provisional.

`80056360`: Signed-half position negation fits s32 and range checks intentionally narrow to target halfwords. Masked counter arguments and byte increment are bounded. Random calls, owner/identifier rereads and callback-dependent counter reloads retain original sequencing. Both load-capture dependencies have failing controls. Native global allocation, record layouts and scratch mapping remain provisional.

`8008A9D4`: Signed coordinate differences fit s32; products and sum use defined unsigned low-word arithmetic before target signed comparison. Byte-derived thresholds and state increments are bounded. No fake incoming a3 or fourth animation-helper argument. Known production views are retained; older narrow angle-helper declarations, native layouts and scratch mapping remain unresolved.

`800A5810`: The position helper writes both signed-half stack outputs on every normal return; no uninitialized output is assumed. Signed clamp values fit s16 and raw-word helper conversions preserve sign bits. Existing helper declarations/partial struct views agree, branch-specific animation calls preserve sequencing. Native record and post-loop pointer extents, scratch mapping and historical contracts remain provisional.

`80067E7C`: Signed-half absolute values promote to s32, including -32768. Genuine side-one coordinate reread is retained without volatility; sides other than zero/one cannot succeed. Actual one-pointer/boolean caller and pure selector helper are inspected. Four unnecessary bindings/identity were removed; each retained component fails removal. Native table extent includes formed cursor, alignment and record ownership remain required.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8001DDD0`: remove-enable-word-value-binding: 420 B / 6 words; remove-all-source-aids: 420 B / 6 words.
- `80049DF0`: remove-scratch-f0-call-view: 416 B / 45 words; remove-scratch-f4-call-view: 416 B / 53 words; remove-all-source-aids: 424 B / 100 words.
- `80056360`: remove-base-binding: 476 B / 13 words; remove-argument-binding: 476 B / 6 words; remove-load-capture: 484 B / 94 words; remove-base-identity: 472 B / 80 words; remove-extra-ball-dependency: 476 B / 7 words; remove-extra-side-dependency: 484 B / 94 words; remove-all-source-aids: 480 B / 94 words.
- `8008A9D4`: remove-extra-ordinary-inverse-branch-source-shape: 468 B / 2 words.
- `80067E7C`: remove-selector-tie: 256 B / 59 words; remove-side-tie: 248 B / 44 words; remove-ax-v0: 252 B / 1 words; remove-one-capture: 252 B / 11 words; remove-all-source-aids: 248 B / 59 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 8 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_80019C34` | `bb37b86` | 604 | 40 | `gcc272-dos` / `defaults` | One initialized field-cursor operand identity; no bindings or flags |
| `func_80033B88` | `2aa1b00` | 576 | 24 | `gcc272-dos` / `defaults` | One initialized real second-argument binding |
| `func_80055CD4` | `0ddf23b` | 536 | 32 | `gcc272-dos` / `defaults` | One initialized argument binding and one loaded-value identity |
| `func_8008A460` | `88d1f7e` | 508 | 40 | `gcc272-dos` / `defaults` | No artificial aids; ordinary turn capture and halfword conversion |
| `func_800A4630` | `9c9696a` | 540 | 48 | `gcc272-dos` / `-fno-strength-reduce` | No source aids; measured -fno-strength-reduce |
| `func_8006682C` | `fdc8d49` | 432 | 48 | `gcc272-dos` / `-fno-schedule-insns` | Three initialized-used register bindings, actual row intermediate and -fno-schedule-insns; all individual/cumulative controls measured |

`80019C34`: Both three-input rendering helpers consume actual descriptor/entry/selector arguments. The terminal part renders before its post-helper sentinel test. Byte selectors and halfword arithmetic are bounded, with defined u16 narrowing; alias-sensitive selector reloads remain. Native target-pointer layout, part termination/buffer extents, GPU/GTE contracts and shared ordering-entry views remain provisional.

`80033B88`: Initial discarded-result call and repeated direction calls remain sequenced. Full-byte side shifts and masked unsigned angular differences avoid overflow; signed-half position negation is safe. Each facing read follows its helper and actual return narrows to a byte. Sole binding fails removal controls. Native record/helper types, scratch mapping and table bounds remain provisional.

`80055CD4`: Promoted signed-half absolute values include -32768 safely. Each bound dispatch argument is assigned after all preceding callbacks, never retained in a caller-saved register across one. Table indices are 0..2 and counter reload follows callbacks. Actual two-pointer caller/helper views are inspected; native allocation and scratch translation remain provisional.

`8008A460`: Actual typed RecordView/u16 helper declaration mirrors its existing definition; older byte-pointer/word views require later native reconciliation. Direction is deliberately captured before the random helper here, unlike adjacent handlers. Bounded byte/halfword arithmetic avoids overflow, the real fifth stack argument explains the frame, and search indices run six to zero. Table index requires 0..19; full native layouts/scratch mapping remain provisional.

`800A4630`: Position helper and its dependency initialize both signed-half outputs on every normal return. Bounded signed clamps and direction products are safe; raw-word conversions preserve coordinate bits. Associated pointers/coordinates reload between the two real four-argument helpers. Side byte is not assumed binary. Native storage, post-loop pointer extents, helper tables and scratch mapping remain provisional.

`8006682C`: One record argument; void result agrees caller. Unsigned wrapped angle subtraction, bounded modulo24 row choice, eleven iterations and count classification preserve arithmetic. Repeated opaque heading calls and coordinate rereads retained. Native mapped pool alignment, cursor extent through23006 and state/table ownership remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `80019C34`: remove-field_cursor_identity: 620 B / 149 words; remove-all-source-aids: 620 B / 149 words.
- `80033B88`: remove-second-argument-binding: 576 B / 3 words; remove-all-source-aids: 576 B / 3 words.
- `80055CD4`: remove-argument-binding: 536 B / 11 words; remove-load-identity: 528 B / 111 words; remove-all-source-aids: 528 B / 111 words.
- `8008A460`: remove-extra-ordinary-no-halfword-cast-source-shape: 500 B / 29 words; remove-extra-ordinary-direct-turn-source-shape: 512 B / 116 words; remove-extra-ordinary-both-source-shapes: 504 B / 115 words.
- `800A4630`: remove-flag-0: 556 B / 134 words.
- `8006682C`: remove-coordinate-s0: 448 B / 111 words; remove-count-s4: 432 B / 7 words; remove-total-v1: 432 B / 3 words; remove-row-capture: 432 B / 2 words; remove-all-source-aids: 448 B / 111 words; remove-flag-0: 432 B / 6 words; remove-all-aids-and-flags: 448 B / 110 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 9 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8001E310` | `7f3f93a` | 660 | 8 | `gcc272-dos` / `defaults` | No artificial aids or extra flags |
| `func_800332EC` | `e7d5c40` | 608 | 32 | `gcc272-dos` / `defaults` | One initialized-used record pointer identity after speed store; omission controls measured |
| `func_80056B5C` | `b56e1da` | 260 | 32 | `gcc272-dos` / `defaults` | One initialized mode/constant operand identity |
| `func_8008EAAC` | `300a57d` | 532 | 32 | `gcc272-dos` / `defaults` | No artificial aids; ordinary angle remainder and pointer-add shape |
| `func_800A557C` | `68adc38` | 660 | 48 | `gcc272-dos` / `-fno-strength-reduce` | No source aids; measured -fno-strength-reduce and ordinary used one constant |
| `func_80065440` | `6565045` | 380 | 48 | `gcc272-dos` / `defaults` | Two initialized-used cursor/index bindings; individual/all controls measured, no flags or identities |

`8001E310`: Leaf void(void) matches sole caller. Bounded2/43/22 loops, descending indices, duplicate stores and original order retained. Interleaved86-byte table crosses split labels; native ownership must canonicalize shared backing. Settings scalar/array declarations and bank/scratch native layouts remain provisional.

`800332EC`: One pointer argument, ignored return; callback argument counts and byte/word widths reviewed. Defined unsigned speed clamp and promoted byte arithmetic; callback/field/phase rereads retained. Existing C6C44[7] reads adjacent label and C6C04 byte index spans256 bytes; no invented bounds or new storage. Native shared table backing and mapped scratch/record layout remain provisional.

`80056B5C`: Position halfword negation fits s32, including -32768. Both captured inputs are initialized after the random call and genuinely compared; each dependency has a failing removal control. Existing signed distance-helper return is explicitly compared as u32, matching target sltu. Four-entry table mask and post-callback counter reread are preserved; native storage/layouts remain provisional.

`8008EAAC`: Only frames one to six move; six checks first and nineteen changes state, while other frames skip movement. Bounded angle remainder and unsigned word movement updates avoid overflow. Real void-pointer event helper signature matches production; scratch pointers/flags reload after callbacks. No invented unreachable frame domain or table ownership. Native layouts/helper contracts remain provisional.

`800A557C`: Classifier return 255 is tested as a whole nonzero word. Actual state aliases clear base+10/+11, and primary/secondary marker store orders differ intentionally. Signed-half positions and constants are bounded; modulo24 indices remain full-byte derived. Associated pointers reload after potentially aliasing stores. Native state/record extents, final formed pointers and scratch mapping remain provisional.

`80065440`: Four actual inputs and tested boolean return match caller; shared selector/heading APIs inspected. Signed-wide coordinate squares narrowed to unsigned words and wrapped sum preserve full signed-halfword domain without signed overflow. Angular subtraction unsigned and byte-masked, counter bounded10. Opaque helper calls and coordinate rereads preserved. Native pool/input alignment, allocation and final formed cursor through22006 remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `800332EC`: remove-post-speed-store-record-identity: 604 B / 77 words; remove-all-source-aids: 604 B / 77 words.
- `80056B5C`: remove-mode-capture: 256 B / 47 words; remove-extra-mode-dependency: 256 B / 47 words; remove-extra-one-dependency: 260 B / 2 words; remove-all-source-aids: 256 B / 47 words.
- `8008EAAC`: remove-extra-ordinary-initial-angle-mask: 512 B / 110 words; remove-extra-ordinary-active-angle-mask: 512 B / 56 words; remove-extra-ordinary-pointer-add-order: 532 B / 1 words; remove-extra-ordinary-all-source-shapes: 492 B / 110 words.
- `800A557C`: remove-flag-0: 676 B / 152 words.
- `80065440`: remove-coordinate-s0: 396 B / 95 words; remove-index-s4: 380 B / 15 words; remove-all-source-aids: 396 B / 95 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 10 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8001C5A8` | `f320374` | 1112 | 0 | `gcc272-dos` / `defaults` | Two initialized-used value identities and existing no-storage numeric scratch-word view; all omission controls measured, no flags or bindings |
| `func_8003F0D0` | `1f396af` | 488 | 40 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; separate real temporal captures and direct product/state branches |
| `func_80056D10` | `22e58d1` | 448 | 32 | `gcc272-dos` / `defaults` | One initialized argument binding and one two-value operand identity |
| `func_8008B518` | `9d5fbf1` | 488 | 32 | `gcc272-dos` / `defaults` | No artificial aids; ordinary distance/heading variable lifetimes |
| `func_8009D9C4` | `cedffba` | 764 | 32 | `gcc272-dos` / `defaults` | One initialized-used coordinate extension identity; omission changes two words, no extra flags |
| `func_80067B20` | `b1728bb` | 496 | 32 | `gcc272-dos` / `defaults` | Four real-value bindings, one initialized-used scratch identity and two actual comparison captures; all single/cumulative controls measured, no flags |

`8001C5A8`: No consumed input or meaningful observed return, no helpers, natural zero-byte leaf frame. Bounded margin arithmetic safe; unrestricted word negations explicitly wrap unsigned then preserve PS1 signed interpretation, including negative INT_MIN threshold behavior. Named globals and bank-relative bytes physically overlap and require canonical native ownership. Scratch/actor pointer mapping, alignment and shared flag views remain provisional; numeric address view creates no storage.

`8003F0D0`: Two actual pointers, ignored return; real512B8 pointer input and compatible typed52D90 predicate retained. Unsigned lowword products and final signed interpretation preserve wrapped distance; state16 path deliberately bypasses lower clamp and passes negative amount bits. Discarded random calls, alias-sensitive field/pointer reloads and callback order retained. Native scratch mapping, partial layouts and helper types remain provisional.

`80056D10`: Promoted signed-half coordinate product fits s32 for its entire domain; position negation is safe. Six/three-entry modulo indices and byte increment are bounded. Both captured dependencies have failing controls and feed the actual product; callback-sensitive counter reload remains. Existing one-pointer caller/helper interfaces are used. Native scratch, record/global allocation and historical semantics remain provisional.

`8008B518`: Existing one-pointer typed classifier view is mirrored; unused residual registers are not arguments. Unsigned first distances and signed final low-word comparison intentionally differ. Signed-half differences and byte selector arithmetic are bounded, but side-derived scratch mapping may exceed RAM for invalid domains and is not assumed binary. Native pool/layout/helper contracts remain provisional.

`8009D9C4`: True one-pointer void API, no residual helper arguments. Halfword abs promoted safely; fullword INT_MIN negation uses unsigned wrapping then signed comparison. Signed frame remainder and all side-byte cases preserved. Position and scratch coordinate captures retain callback/alias order. Mapped scratch extents, partial record views and native ownership remain provisional.

`80067B20`: Void zero-input API and real zero-input reset helper agree caller/definitions. Timer decrement guarded; signed-halfword magnitudes safely widen including -32768. Actual selector helper bounds row choice while full-byte accesses retained. State/pointer/coordinate rereads and callbacks preserve ordering. Scratch identity changes saved-base allocation, not read count or volatility. Native bank/record ownership, mapping and alignment remain provisional; external67860 excluded.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8001C5A8`: remove-mask_identity: 1108 B / 124 words; remove-wrapped_negation_identity: 1112 B / 1 words; remove-scratch_word_address_view: 1112 B / 35 words; remove-all-source-aids: 1108 B / 91 words.
- `80056D10`: remove-argument-binding: 448 B / 6 words; remove-halfword-capture: 444 B / 55 words; remove-extra-no-loaded-dependency: 444 B / 55 words; remove-extra-no-coordinate-dependency: 452 B / 53 words; remove-all-source-aids: 444 B / 58 words.
- `8008B518`: remove-extra-ordinary-reuse-distance-locals: 488 B / 27 words; remove-extra-ordinary-reuse-heading-local: 488 B / 6 words; remove-extra-ordinary-reuse-both: 488 B / 33 words.
- `8009D9C4`: remove-first-extension-identity: 764 B / 2 words; remove-all-source-aids: 764 B / 2 words.
- `80067B20`: remove-absolute-v0: 496 B / 1 words; remove-second-absolute-a0: 496 B / 8 words; remove-third-absolute-v1: 496 B / 3 words; remove-result-v0: 520 B / 39 words; remove-scratch-reread-identity: 496 B / 13 words; remove-middle-comparison-capture: 496 B / 2 words; remove-second-comparison-capture: 500 B / 16 words; remove-all-source-aids: 508 B / 51 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 11 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_800267D8` | `51812ec` | 652 | 32 | `gcc272-dos` / `defaults` | One measured no-storage scratch-byte store address view, no bindings/identities/extra flags; typed B864 API harmonized before acceptance |
| `func_8003F2B8` | `e098a80` | 680 | 40 | `gcc272-dos` / `defaults` | Eleven initialized-used scalar bindings across disjoint near/far lifetimes; every/all omission measured, no identities or extra flags |
| `func_80055610` | `fba3ef2` | 240 | 0 | `gcc272-dos` / `defaults` | No artificial aids after identity removal |
| `func_8007C9B0` | `f5e3d2c` | 592 | 24 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; separate ordinary angle lifetimes and direct selector calls |
| `func_8009E318` | `cc3e14a` | 844 | 40 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; redundant predicate identity removed after controls |
| `func_800AE958` | `0ede3d5` | 200 | 32 | `gcc281` / `-mno-split-addresses` | Plain C with actual loop-mask/terminal-pointer captures and measured -mno-split-addresses; all bindings/identities removed |

`800267D8`: One actual actor input and ignored return; B864 RecordView/u16 now matches existing definition member-for-member. Genuine helper args and BD1C word return retained. Halfword decrement and byte counters narrow unsigned; signed RNG/jitter arithmetic bounded without positivity assumptions. Arbitrary motion-word negation uses unsigned wrap then PS1 signed interpretation including INT_MIN. Callback field/pointer rereads and overlapping scratch views preserved. Native pointer mapping, partial layouts and runtime animation-table ownership remain provisional. Unsafe shift candidate1F7C4 deferred uncounted.

`8003F2B8`: One consumed record input, full boolean return; real52A68 pointer restored and existing APIs retained. Halfword negation promoted safely. Unsigned squares/sum then PS1 signed reinterpretation preserve wrapped distance threshold; angular differences masked unsigned. Each binding assigned on its actual path, caller-saved values do not survive helpers, and shared comparison reads only initialized outer values. Callback/branch-specific coordinate rereads preserved. Native mapped scratch/pool extent, alignment and complete APIs remain provisional.

`80055610`: Caller genuinely supplies two record pointers and a full-word scale, and consumes the boolean result. Product, shift and threshold updates use unsigned low-word arithmetic; byte differences are bounded. Scratch pointer reload and unsigned result comparison are preserved. No helpers or new storage. Native scratch/record allocation and target halfword narrowing remain provisional.

`8007C9B0`: One actual object argument and ignored return. Random remainder3 can be negative and correctly follows nonzero branch. Real helpers consume their stated arguments only; no residual pool arguments. Bounded signed angle remainder and modulo24 pool selection preserve defined arithmetic. Object/pool/scratch alias visibility and post-helper state/cursor/heading reloads retained. Existing narrow B36C prototype needs native reconciliation; mapped pool, scratch and nested runtime table ownership remain provisional.

`8009E318`: One actual object input, ignored return. Original loaded unused A0F30 middle slot retained to keep real output pointers in correct ABI positions. Wide signed squares reduced to unsigned words preserve wrapped signed-distance comparison; halfword abs safely promoted. Callback-sensitive associated pointers, counters, fields and outputs reread in original order. Full-byte side indices and10-record scan preserved without invented bounds. Native mapped scratch/pool ownership, helper contracts and complete partial layouts remain provisional.

`800AE958`: Two consumed words; unreferenced discovered SDK entry has no resident caller to prove historical signature or count bounds. Pointer-valued exit observed and preserved, not claimed historical API. Positive count and that many live aligned words give n-1 safe next-pointer updates and final tag store; unsigned decrements wrap without signed overflow. Real variadic BIOS callback matches existing declaration/format. Byte alias then word reread and terminal/global store order preserved. Native32-bit pointer representation, array domain, BIOS and storage ownership remain provisional; external67860 excluded.

Independent omission measurements (changed word positions, not a matching
percentage):

- `800267D8`: remove-scratch_byte_store_address_view: 648 B / 106 words; remove-all-source-aids: 648 B / 106 words.
- `8003F2B8`: remove-distance: 680 B / 2 words; remove-threshold: 680 B / 2 words; remove-farX: 680 B / 5 words; remove-farZ: 680 B / 5 words; remove-farFirstProduct: 692 B / 86 words; remove-farSecondProduct: 688 B / 74 words; remove-nearX: 680 B / 5 words; remove-nearZ: 680 B / 5 words; remove-nearFirstProduct: 692 B / 75 words; remove-nearSecondProduct: 688 B / 74 words; remove-recordX: 680 B / 2 words; remove-all-source-aids: 680 B / 26 words.
- `8007C9B0`: remove-extra-ordinary-angle16-mask: 572 B / 85 words; remove-extra-ordinary-angle33-mask: 572 B / 31 words; remove-extra-ordinary-shared-selector-call: 588 B / 123 words; remove-extra-ordinary-all-source-shapes: 548 B / 122 words.
- `800AE958`: remove-loop-low-mask-capture: 200 B / 3 words; remove-terminal-pointer-capture: 204 B / 18 words; remove-all-source-aids: 204 B / 20 words; remove-flag-0: 200 B / 9 words; remove-all-aids-and-flags: 200 B / 12 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 12 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_80027140` | `f35f334` | 692 | 32 | `gcc272-dos` / `defaults` | One measured no-storage scratch-byte store address view, no bindings/identities/extra flags; compatible B864 partial type |
| `func_8004D7D4` | `3922660` | 580 | 40 | `gcc272-dos` / `defaults` | Four real-value bindings, two single-input identities and two no-storage live-memory address views; every/all omission measured, no flags |
| `func_800550C8` | `ea09daa` | 256 | 24 | `gcc272-dos` / `defaults` | No artificial aids; ordinary side-offset/key locals |
| `func_800791A0` | `f38a0ac` | 448 | 56 | `gcc272-dos` / `defaults` | One initialized-used heading identity; no bindings or extra flags, single/all controls measured |
| `func_800A24E4` | `b4e5247` | 416 | 48 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; ordinary forward signed state check |
| `func_80059250` | `8081747` | 464 | 32 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; delegated logicalw6 slot executed by w3 |

`80027140`: One consumed actor input and ignored result. Case0 deliberately falls through case1 only on its active path; speed word+48 wraps before clamp44. Halfword abs widened safely; arbitrary motion negation unsigned-wraps then PS1 signed interpretation. Flag3D1 computed before movement, unlike adjacent handler. Callback field rereads and byte-counter narrowing preserved. BA78 physical maps cross split labels, no invented16-byte bounds. Native actor/scratch/pointer/table ownership remains provisional.

`8004D7D4`: One actual record input and defined boolean return; C1CC/E5A8/trig real arguments restored and compatible existing helper declarations retained. Lowword unsigned squares/sum then signed interpretation preserve wrapped distance; unsigned speed product/div192, bounded height arithmetic and coordinate wrapping avoid signed overflow. Ball pointer/height reload after each callback and each target store, including alias-sensitive repeated pointer reads. Native scratch/object/table mapping, extent and historical ownership remain provisional.

`800550C8`: Signed-half differences fit s32, squares widen before low-word extraction, and unsigned sum wraps before original signed comparison. Negative wrapped distances remain accepted as in the target. Full halfword switch and nonbinary byte-side domain are preserved. Actual one-pointer/boolean caller and single random-helper argument are inspected. Native layout, scratch-table extent and target signed conversions remain provisional.

`800791A0`: Two consumed inputs and real byte result agree caller; full requested-heading word handled by unsigned modular differences. Unsigned squares/sum preserve lowword wrapping. Eleven-record scan picks later equal-angle candidate, chosen pointer initialized whenever sentinel changes. Post-helper captures and field reads retained. Quantized B1128 GTE/table behavior remains opaque and called; older narrow B36C type needs native reconciliation. Native scratch/pool alignment, extent and ownership remain provisional.

`800A24E4`: One actual pointer input, ignored return. Real A23BC record parameter restored and explicitly loaded unused A2374 first ABI slot retained. Both helper8-entry tables reviewed. Captured selector persists across callbacks while fresh selector/state reads follow both score helpers. Signed negative RNG remainders remain eligible even at zero threshold; second success overrides first. Full-byte selector ranges preserved. Native scratch/state extent, record ownership and complete helper APIs remain provisional.

`80059250`: One consumed pointer and ignored result match caller. Existing helper word/byte signatures retained; full-byte selector and explicitly narrowed increments preserved. Signed random remainder2 may be negative but event additions bounded. Mode, selector and score reloads remain after callbacks, including optional second-side check if parity changes. Native scratch translation, shared storage extents, historical helper APIs and complete record layouts remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `80027140`: remove-scratch_byte_store_address_view: 692 B / 15 words; remove-all-source-aids: 692 B / 15 words.
- `8004D7D4`: remove-record-binding: 580 B / 25 words; remove-scratch-binding: 580 B / 23 words; remove-selected-binding: 580 B / 7 words; remove-value-binding: 580 B / 7 words; remove-record-identity: 580 B / 12 words; remove-scratch-identity: 580 B / 1 words; remove-ball-view: 572 B / 126 words; remove-height-view: 576 B / 108 words; remove-all-source-aids: 568 B / 137 words.
- `800791A0`: remove-heading-value-identity: 448 B / 5 words; remove-extra-ordinary-preassigned-choice: 452 B / 48 words; remove-extra-ordinary-literal-scratch-accesses: 424 B / 109 words; remove-extra-ordinary-all-source-shapes: 428 B / 107 words; remove-all-source-aids: 448 B / 5 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 13 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_800264CC` | `6ddbda4` | 780 | 32 | `gcc272-dos` / `defaults` | Two initialized-used single-coordinate identities before actual scratch pointer loads; each omission changes3 words, combined6. No bindings/address views/flags. |
| `func_8003F7A4` | `5858e99` | 792 | 56 | `gcc272-dos` / `defaults` | Six initialized-used bindings and four single-input real-pointer identities, every/all omission independently measured. No extra flags; ordinary earlier bank pointer calculation removed quotient captures. |
| `func_80059C38` | `e18bb79` | 260 | 24 | `gcc272-dos` / `defaults` | No artificial aids |
| `func_8008BF7C` | `2dd70ac` | 648 | 24 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; neutral source variation adopted rather than claimed necessary |
| `func_8009B888` | `49ca6a3` | 460 | 56 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; real final UV-byte capture preserves pre-RGB read order |
| `func_80052D90` | `e674782` | 216 | 0 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; ordinary GNU case ranges, delegated logicalw6 slot by w3 |

`800264CC`: One genuine actor input and ignored return; compatible4840C partial type. Fake45504 third and BD1C second arguments rejected. Unsigned speed update wraps before clamp; byte/half copies and post-helper rereads remain ordered. Default still calls B908; constraint tail applies only designated states. Original479B8 division trap when reached byte3B5==2 is an external runtime caveat, not excused by guessed bound. Native mapped scratch/pool/table domains and complete helper/record layouts remain provisional.

`8003F7A4`: One real record input/ignored return, compatible52A68/CE30/B36C APIs. Signed halves widened before negation including-32768; all squares/sums and thresholds unsigned-wrap, fullbyte angles masked. Repeated B36C calls and later record/side/scratch reloads preserved, only original halfword captures reused. Existing record-bank extent, native scratch translation and signed casts/shifts remain target contracts. No fake helper inputs, pads, data or narrowed-domain assumptions.

`80059C38`: Byte promotions and explicit masks preserve signed/unsigned comparisons over the full byte domain; signed-half position negation is safe. Signed random remainder is not assumed nonnegative: table displacement explicitly uses wrapping guest-word address arithmetic and can read before the label as retail does. Accessible address domain and native mapping remain unresolved, not clamped or hidden. Actual one-pointer/void caller and helper interfaces are inspected.

`8008BF7C`: One consumed object input, ignored return; direct helper declarations harmonize. Signed-halfword abs widened safely, unsigned range test and bounded angle remainder defined. Byte counters wrap before thresholds; state2 intentionally falls through default after transition. Each selection result publishes3C2 before branch and callbacks retain field rereads. Native scratch/object/pool extent, animation cursor and nested helper/GTE contracts remain provisional.

`8009B888`: Void zero-input API and four real packet-helper signatures match caller/definitions. Bounded2-by30 loops and byte/halfword narrowing defined. Packet base reloads every iteration before callbacks; final UV byte captured before RGB writes, preserving aliases. Existing40-byte UV region spans eight split linker labels and must share canonical native backing. Dynamic packet bank allocation, scratch pointer mapping and complete packet/native layouts remain provisional.

`80052D90`: One actual pointer input, defined byte boolean output; all14 caller bodies/19 sites reviewed. Shared partial typedef duplicates existing3EF94 and queued3F0D0 declarations member-for-member. Single unsigned-byte read classifies all256 states,43 true and213 false, without arithmetic or helpers. No emitted table/storage. Complete native record allocation and historical state meanings remain provisional; valid addressable byte396 required.

Independent omission measurements (changed word positions, not a matching
percentage):

- `800264CC`: remove-case0_coordinate_identity: 780 B / 3 words; remove-case32_coordinate_identity: 780 B / 3 words; remove-all-source-aids: 780 B / 6 words.
- `8003F7A4`: remove-bank-identity: 792 B / 6 words; remove-first-scratch-identity: 800 B / 118 words; remove-record-identity: 792 B / 1 words; remove-last-scratch-identity: 796 B / 73 words; remove-scratch-1: 792 B / 32 words; remove-targetX-1: 784 B / 115 words; remove-targetZ-1: 784 B / 115 words; remove-gateX-1: 788 B / 51 words; remove-finalX-1: 788 B / 50 words; remove-finalZ-1: 788 B / 44 words; remove-all-source-aids: 776 B / 124 words.
- `8008BF7C`: remove-extra-ordinary-positive-angle-mask: 628 B / 82 words; remove-extra-ordinary-early-rejected-state: 664 B / 30 words; remove-extra-ordinary-all-source-shapes: 644 B / 84 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 14 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8001F134` | `d2eb7b9` | 412 | 24 | `gcc272-dos` / `defaults` | Two singleton declaration-only existing scratch-byte views, first occurrences remain ordinary numeric accesses; each/all omission independently measured. No bindings/identities/flags. |
| `func_80034470` | `4e86540` | 708 | 32 | `gcc272-dos` / `defaults` | Plain C zero aids/default flags; neutral low-angle binding removed and fresh normalized source reproduced. |
| `func_80069660` | `a976079` | 416 | 24 | `gcc272-dos` / `defaults` | Three initialized real-value register bindings; no identities or flags |
| `func_80081374` | `fcfb2e3` | 376 | 40 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; bounded signed remainder and byte slot views |
| `func_80098428` | `77df77b` | 512 | 56 | `gcc272-dos` / `-fno-strength-reduce` | One initialized-used bank-offset binding and -fno-strength-reduce; fresh individual/all controls measured after redundant aids removed |
| `func_80057AE4` | `e9af201` | 244 | 32 | `gcc272-dos` / `defaults` | One initialized-used low-byte second-flag binding; single/all controls measured; delegatedw6 by w3 |

`8001F134`: Zero consumed arguments and ignored result; all twelve helper APIs reviewed. Honest one-arg DD50 view explicitly conflicts with old four-word residue-forwarding C; native reconciliation separate, no fake parameters. Fresh mode/global reads follow callbacks, stores retain widths/order, signed-6144 half constant representable. Target has no overflowing arithmetic. Native scratch aliases, broader global/table ownership and old helper contracts remain provisional. DeferredD14C not counted.

`80034470`: One actual record pointer and ignored return, two callers/nine helper APIs reviewed with compatible4840C type. Unsigned masked angle differences and +/-64word arithmetic safe. Near/far record-pointer/read order retained; repeated direction calls not merged; fresh396 reread handles5385C returning0 after setting24. Existing34734 RNG valid-index contract remains inherited, not padded or invented. Native mapped scratch, runtime animation-table/record owners and full aliases remain provisional.

`80069660`: Actual helper s16 return and weight signatures agree with definitions. Weighted halfword average is bounded; arbitrary target-word products and cutoff/clamp arithmetic use unsigned low words before signed target interpretation. Margin narrows explicitly and post-store side/selector reloads remain. No binary-side domain is invented. Native scratch/table extents and full record contracts remain provisional.

`80081374`: One actual object input, ignored return; six real67860 outgoing words explain natural frame. Common u32 helper return view matches33DC8; older void533F4 and narrow B36C views require native reconciliation. Signed mode division preserves quotient-zero interval; unsigned negation/halfword narrowing then PS1 signed interpretation handles -32768. Side/coordinates reread after selection and heading after callback. Native scratch/pool/object mappings, full-byte side-derived extents and ownership remain provisional; reserved67860 untouched.

`80098428`: Zero consumed inputs and no observed meaningful result; eleven direct callers plus propagated return-residue path reviewed. Four packet-helper APIs match existing definitions. Bounded loops preserve coordinate-copy interleaving, per-packet buffer reload and final UV capture before RGB stores. Signed-byte narrowing uses PS1 low-byte representation for arbitrary mutated table values. Existing coordinate/UV labels span shared backing; complete native table/packet allocations, scratch pointer layout and alias ownership remain provisional.

`80057AE4`: Three actual word/pointer inputs and full boolean return agree20 callers/25 sites. Zero-vs-any-nonzero side picks fixed table rows; full-byte index preserved as numeric guest displacement beyond nominal22-byte rows. Event argument calculated before conditional; record394 reread after callback before shared halfword update. Native runtime BSS initialization/extent, mapping and historical dispatcher API remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8001F134`: remove-second-state-byte-address-view: 420 B / 97 words; remove-second-clear-byte-address-view: 412 B / 58 words; remove-all-source-aids: 420 B / 90 words.
- `80069660`: remove-record-binding: 416 B / 12 words; remove-directed-target-binding: 416 B / 4 words; remove-cutoff-binding: 416 B / 10 words; remove-all-source-aids: 416 B / 16 words.
- `80081374`: remove-extra-ordinary-wide-remainder: 364 B / 75 words; remove-extra-ordinary-wide-slot: 372 B / 30 words; remove-extra-ordinary-all-source-widths: 360 B / 75 words.
- `80098428`: remove-bank-offset-binding: 512 B / 10 words; remove-all-source-aids: 512 B / 10 words; remove-flag-0: 516 B / 124 words; remove-all-aids-and-flags: 516 B / 124 words.
- `80057AE4`: remove-flag-v0-binding: 252 B / 55 words; remove-all-source-aids: 252 B / 55 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 15 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8006DB48` | `a64aeb2` | 540 | 32 | `gcc272-dos` / `defaults` | Plain C zero aids/default flags after individually and jointly removing provisional phase binding and result identity; actual agent3 delegated logical worker1 |
| `func_8004F994` | `a77b18f` | 300 | 8 | `gcc272-dos` / `defaults` | Plain C zero aids/default flags after removing all provisional bindings/identities; natural8-byte leaf frame from real signed-short lowering, no pads. Actualagent4 delegatedworker2. |
| `func_80057CEC` | `a05ec83` | 472 | 40 | `gcc272-dos` / `defaults` | No artificial aids after scalar identity removal |
| `func_8007C09C` | `7504987` | 456 | 48 | `gcc272-dos` / `defaults` | No artificial aids or extra flags after redundant slot identity removed |
| `func_800972AC` | `a661e56` | 756 | 24 | `gcc272-dos` / `defaults` | Seven declaration-only existing numeric scratch cell views; no bindings, identities or extra flags. Independent individual/all omission controls differ. |
| `func_8005A29C` | `497a172` | 552 | 32 | `gcc272-dos` / `defaults` | One two-input initialized-used event/comparison identity; each dependency plus single/all omissions independently measured, no flags/bindings; delegatedw6 by w3 |

`8006DB48`: One real record argument, full boolean return observed among three callsites. Canonical95FF8 type and existing494C0 signed result retained, explicit unsigned threshold comparison. Coordinates square/sum wrap unsigned before signed threshold; no small-coordinate bounds. Fullbyte angle/index domain and callback-sensitive record/scratch/pointer reloads retained. Both incoming update paths initialize result/phase. Native scratch translation, pointer/alias contracts and full helper ownership remain provisional.

`8004F994`: One consumed lowbyte word argument/ignored residue agrees sole caller; no helpers/tables. Scaleupdates fit promotedint then narrowlow16 before signed comparisons. Countdown decrements unsigned/narrowsu16, defined u32left16 test handles initialzero wrap. Stateincrement paths known0/1; actualfixed locations disjoint withoutcallbacks. Existing signed-array views retained. Native signed-half reinterpretation, fixed scratch mapping and shared global ownership remain provisional.

`80057CEC`: Actual selector stays full-word and all default paths remain. Signed random remainders keep their negative possibilities; small bounds prove all event arithmetic safe. Callback-dependent packed flags/scores reload in target order. Actual pointer-plus-word update helper and scalar caller ABI are inspected; native record/global layouts and scratch mapping remain provisional.

`8007C09C`: No consumed incoming words or meaningful observed result. Existing537D0 partial type harmonized; no residual helper arguments invented. Known2283C/51810 forwarding prototype mismatches, nested BA30 pointer and older AB620 signedness remain explicit native adapter work. Bounded22-record loop and unsigned timer narrowing preserve wrap; negative RNG remainder2 follows nonzero branch. Callback/selector/timer rereads retained. Native pool/scratch mapping, full helper ownership and historical callback/API contracts remain provisional.

`800972AC`: Full weighted numerators wrap as unsigned words before signed divide10; signed-half averages fit and arithmetic right shift rounds negative odd values down. Sole direct wrapper and nineteen propagated post-call contexts ignore return residue. Coordinates alias existing record23; reads and stores retain callback order. Native arithmetic shifts, signed casts, scratch alias mapping and complete helper APIs remain explicit PS1 contracts.

`8005A29C`: One consumed record input, ignored return; real one-word random/dispatch APIs retained. Full-byte angle/side domains, widened signed-halfword abs and unsigned event subtraction avoid overflow. Both two-u16 tables have verified index0/1 bounds. Callback current/event/counter rereads preserved, including counter capture before flag store. Both identity operands genuinely feed later comparisons. Native fixed scratch/pool mapping, ownership and historical event API remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8004F994`: remove-extra-ordinary-direct-state-increment: 296 B / 47 words; remove-extra-ordinary-direct-zero-test: 300 B / 1 words; remove-extra-ordinary-all-shapes: 296 B / 47 words.
- `8007C09C`: remove-extra-ordinary-inline-mode: 456 B / 7 words; remove-extra-ordinary-wide-remainder: 452 B / 75 words; remove-extra-ordinary-all-shapes: 452 B / 81 words.
- `800972AC`: remove-cell-scratch2E7: 760 B / 170 words; remove-cell-scratch200: 756 B / 49 words; remove-cell-scratch1FC: 756 B / 120 words; remove-cell-scratch204: 756 B / 152 words; remove-cell-scratch1F0: 756 B / 31 words; remove-cell-scratch1F4: 756 B / 26 words; remove-cell-scratch1F8: 752 B / 84 words; remove-all-source-aids: 764 B / 179 words.
- `8005A29C`: remove-event-and-comparison-identity: 548 B / 39 words; remove-extra-event-input-dependency: 548 B / 39 words; remove-extra-constant-input-dependency: 552 B / 4 words; remove-all-source-aids: 548 B / 39 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident 96-function run, batch 16 of 16 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8006C6B8` | `3903de3` | 928 | 32 | `gcc272-dos` / `defaults` | Seven genuinely initialized-used register bindings after29-to10-to7 reduction; root repeated each/all controls, no identities or extra flags. Actualagent3 delegatedworker1. |
| `func_80028C68` | `49e22e2` | 816 | 56 | `gcc272-dos` / `defaults` | Plain C zero aids/default flags, natural56-byte frame including real fifth-argument outgoing area; actualagent1 delegatedworker2. |
| `func_80059E7C` | `bb28eac` | 644 | 32 | `gcc272-dos` / `defaults` | No artificial aids or extra flags; normal no-storage scratch byte address view |
| `func_8007BED0` | `62d23c6` | 460 | 32 | `gcc272-dos` / `defaults` | Plain C, zero artificial aids or extra flags; ordinary shape variants independently measured |
| `func_8009787C` | `c408113` | 904 | 40 | `gcc272-dos` / `defaults` | Five necessary existing numeric scratch cell views, seven neutral views removed individually; each/all omission independently measured. No bindings/identities/flags. |
| `func_8006F624` | `349cdeb` | 240 | 0 | `gcc272-dos` / `defaults` | Two initialized-used increment/final-sum bindings; each/all controls measured, no identities or flags; delegatedw6 by w3 |

`8006C6B8`: One actual pointer/ignored result, full target/caller reviewed; canonical fourword helper views. Bounded packed-field height math, safely widenedhalf abs/negation; squares/sum wrapu32 before signed threshold. Indexed fulls32 limit negation uses unsigned zero-minus includingINT_MIN. Fullbyte side/phase indices retained: scratch314+phase*4 canreach710 beyond1KiB, packedoffsetup70380; native valid-address/owner contract unresolved not narrowed. Callback/pointer/record reloads and capture-before-store ordering preserved. Guestpointer mapping and complete native layouts/APIs provisional.

`80028C68`: One actor input/full0-1 return consumed by fullcaller; all nine helper APIs reviewed and compatible existing types reused. Signed-half differences fit but squares/sum explicitlyu32wrap. Anyu32 B1128 result/6 fits s32 without a narrow sqrt bound, clamp<=259; all laterhalf*6/additions and boundedangle shift safe. Originalhandwritten helper highbit/GTE/table domain remains unproved, passed unchanged. Callback coordinate/field reloads and finalcapture-before-store order retained. Native scratch/pointer/alias/table ownership provisional.

`80059E7C`: One consumed record argument; caller also supplies unused second word, not fabricated as a consumed formal. Helper flags0/0 and word APIs reviewed. Byte counter and mode rereads remain after callbacks. Signed previous remainder preserves counter0 behavior; bounded halfword negation safe. Negative random remainder table access and full-byte row selection preserve numeric guest addresses without invented bounds. Native scratch/table/record backing and historical API remain provisional.

`8007BED0`: Zero consumed arguments and ignored return. Fixed scratch views allocate no storage; word differences/squares/sum/result-times9 intentionally wrap unsigned. Post-helper scratch and record reads and captured selector before stores preserved. Original GTE/table B1128 receives unchanged unrestricted word; high-bit table domain unproved, not treated as generic sqrt. Older 2283C, 96050/B53D8 and B36C private APIs need explicit native reconciliation, as do scratch/record alias mapping and full allocations.

`8009787C`: Zero consumed inputs, caller propagation reviewed with no observed meaningful result. Signed64 products reduced to lowu32, summedunsigned before signed divide; positivebyte divisors exclude-1 but each read must be nonzero for defined C (original exact machine has zero traps). Setup six-row and helper5x6 regions are not proved bounds for fullbyte selectors; complete physical footprints inspected, native mapping/domain unresolved. Scale/divisor/mode/counter/focus callback reloads retained. Shared APIs agree existing views; scratch/table ownership, aliases and native arithmetic remain provisional.

`8006F624`: Three consumed inputs and full boolean return agree three caller bodies/four sites including overlay. Selector lowbyte stride40 and fullword unsigned increment preserve wrapped low-byte updates, not mathematical saturation. Each target byte reread after provisional destination store preserves source/destination aliases across components. Verified128/128/128 target tables unchanged. Existing byte descriptor view reused; native ownership/counts/addressability remain provisional.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8006C6B8`: remove-binding-0-offset: 928 B / 4 words; remove-binding-13-recordX: 928 B / 7 words; remove-binding-15-firstSquare: 928 B / 2 words; remove-binding-16-secondSquare: 928 B / 2 words; remove-binding-17-recordZ: 928 B / 4 words; remove-binding-26-branchZ: 928 B / 7 words; remove-binding-28-oppositeZ: 928 B / 7 words; remove-all-source-aids: 928 B / 18 words.
- `8007BED0`: remove-extra-ordinary-narrow-slot: 464 B / 34 words; remove-extra-ordinary-literal-coordinate-views: 472 B / 116 words; remove-extra-ordinary-all-shapes: 476 B / 114 words.
- `8009787C`: remove-cell-scratch2F0: 884 B / 216 words; remove-cell-scratch32C: 900 B / 166 words; remove-cell-scratch2E7: 904 B / 184 words; remove-cell-scratch2E8: 904 B / 211 words; remove-cell-scratch2EA: 900 B / 200 words; remove-all-source-aids: 884 B / 208 words.
- `8006F624`: remove-amount-binding: 236 B / 60 words; remove-value2-binding: 236 B / 15 words; remove-all-source-aids: 236 B / 60 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident additional 12-function run, batch 1 of 2 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8001F53C` | `ca3c998` | 648 | 72 | `gcc272-dos` / `defaults` | Plain C with no aids or extra flags; neutral integer-address view removed after ordinary scratch-plus-index local remained exact. |
| `func_80048D94` | `f69d656` | 560 | 48 | `gcc272-dos` / `defaults` | Six initialized-used bindings and four single-input identities, reduced from21 aids; root independently measured every/all final omission. No extra flags. |
| `func_80065A20` | `9a4b272` | 664 | 24 | `gcc272-dos` / `defaults` | Two initialized-used bindings and one single-input side identity; each/all omission independently measured, no extra flags. |
| `func_8001BCF4` | `54bfc90` | 132 | 32 | `gcc272-dos` / `defaults` | gcc272-dos/default flags and natural 32-byte frame. Single initialized-used block+4 cursor identity retained; three redundant post-step identities, cursor binding and slot masks removed before frozen source. Root separate single/all omission plus ordinary destination-base/direct-offset controls reproduced. No extra data, frame pads or helper arguments. |
| `func_80094EEC` | `12b720c` | 264 | 32 | `gcc272-dos` / `defaults` | gcc272-dos/default flags and natural 32-byte frame with genuine five-argument outgoing area; one initialized-used result/v0 binding remains, independently measured alone and with all aids removed. No extra flags, identities or application storage. Early failure branch topology and post-callback fresh coordinate loads retained. |
| `func_80079360` | `dbd1fe7` | 428 | 24 | `gcc272-dos` / `defaults` | gcc272-dos/default flags, natural 24-byte RA-only frame; four initialized-used caller-saved bindings and one two-input capture, all individually and collectively necessary on the corrected final source, including both capture dependencies. Separate side/current-pointer rereads retained; bounded signed products feed unsigned wrapping distance addition. No added application data or artificial frame object. |

`8001F53C`: Zero consumed inputs and ignored result agree six callers; fourteen helper APIs reviewed. Genuine initialized byte phase is passed synchronously by address, with real ten-argument D14C and compatible narrow nine-argument D470 calls. Counters, byte sums and modulo24 addressing are bounded; fresh pointer and mode reads preserve store/callback order. Native scratch translation, complete record/packet backing and opaque helper domain contracts remain provisional. No instruction asm, new data or frame padding.

`80048D94`: Four genuine record/angle/limit inputs and ignored result agree nine full callers. Compatible helper APIs retained; 54A68 may change state even returning0, so later fields are freshly read. Unsigned fullword angular differences, adjustments and speed addition preserve modulo32 before masking/clamping; limit uses original low16. All shared-call predecessor pointers and actual selector constants are initialized. Native record/alias mapping and opaque animation-table helper domains remain provisional; no fake arguments, new data or frame padding.

`80065A20`: Canonical pointer/word-return API agrees caller; actual random helper has one signed divisor. Signed halfword magnitude widens safely including -32768; nonzero negative remainders retain original behavior. Full-byte side selectors preserved, scratch 2DD+index reaches3DC and table quotient0..25 fits reviewed44-byte storage. Every path initializes its real divisor/result; no memory snapshot reused after terminal callbacks. Native scratch/guest pointers, complete record ownership and historical meanings remain provisional.

`8001BCF4`: Three actual inputs; sole complete caller explicitly supplies low-byte slot and ignores return residue. u8 slot prototype required for native C callers, no conflicting existing declaration. Full relocation helper and sibling API reviewed. Postcallback source loads stay interleaved with destination stores, without disjointness assumptions. Slot arithmetic bounded0..1020, words copied unchanged. Native mapped object/block extents, alignment, effective type and relocation-buffer validity remain provisional.

`80094EEC`: Two real inputs, record and unrestricted radius word; 13 complete callers cover 17 sites, without narrowing radius to their observed constants. Five byte/record helper arguments agree established API, including real stack argument. Signed-half differences and absolute Y are bounded within +/-65535; unsigned squares/sum retain low-word wrap and unsigned comparisons. Native guest layout, selected vector extents, GTE/helper state and alignment contracts remain provisional.

`80079360`: One actual player argument; known caller stores only low eight return bits, while target retains the full selected word. Packed nibble permits divisors -6 through 9, including zero; existing helper skips RNG and returns zero for zero divisor. Inherited INT_MIN%-1 native trap domain is not excluded. Native guest record/table pointer, alignment, alias and live-entry contracts remain provisional; no recovered full table bound or binary-side restriction.

Independent omission measurements (changed word positions, not a matching
percentage):

- `80048D94`: remove-identity-adjusted: 572 B / 110 words; remove-identity-selector: 560 B / 2 words; remove-identity-current: 556 B / 43 words; remove-identity-savedLimit: 560 B / 11 words; remove-binding-initialFirst: 548 B / 137 words; remove-binding-adjusted: 560 B / 44 words; remove-binding-argumentRecord: 564 B / 90 words; remove-binding-difference: 560 B / 3 words; remove-binding-facing: 560 B / 5 words; remove-binding-lowFirst: 560 B / 3 words; remove-all-source-aids: 556 B / 130 words.
- `80065A20`: remove-position-binding: 664 B / 3 words; remove-result-binding: 660 B / 32 words; remove-side-load-identity: 668 B / 163 words; remove-all-source-aids: 664 B / 144 words.
- `8001BCF4`: remove-cursor-value-identity: 124 B / 28 words; remove-extra-ordinary-destination-base: 132 B / 5 words; remove-extra-ordinary-direct-offsets: 124 B / 28 words; remove-all-source-aids: 124 B / 28 words.
- `80094EEC`: remove-result-v0-binding: 268 B / 21 words; remove-all-source-aids: 268 B / 21 words.
- `80079360`: remove-z-binding: 428 B / 16 words; remove-squaredZ-capture: 408 B / 96 words; remove-shiftedAgain-binding: 436 B / 85 words; remove-distance-product-capture: 428 B / 4 words; remove-limit-capture: 428 B / 7 words; remove-extra-all-bindings-only: 428 B / 17 words; remove-extra-squaredZ-binding-only: 428 B / 5 words; remove-extra-limit-binding-only: 428 B / 7 words; remove-extra-distance-capture-distance-input: 428 B / 4 words; remove-extra-distance-capture-operand-input: 428 B / 4 words; remove-all-source-aids: 428 B / 17 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident additional 12-function run, batch 2 of 2 (2026-10-16)

Per-function compiler selections are listed below; global defaults, helpers,
original assembly/data and unrelated profiles remain unchanged. All sources
were independently reviewed and reproduced before integration.

| Function | Code commit | Bytes | Natural frame | Compiler / extra flags | Retained source choices |
| --- | --- | ---: | ---: | --- | --- |
| `func_8002AFE0` | `6cfeeb2` | 516 | 40 | `gcc272-dos` / `defaults` | gcc272-dos/default flags; natural 40-byte frame. Eight neutral exploratory aids removed; final two real initialized-used amount/stat bindings and one single-input branch-record identity independently measured alone and cumulatively. Ordinary labels retain side/coordinate rereads without clobbers. Reverse lookup uses unsigned target-address subtraction rather than a pointer preceding its anchor object. |
| `func_80048AD8` | `f4e1b73` | 700 | 48 | `gcc272-dos` / `defaults` | gcc272-dos/default flags; natural 48-byte frame without local padding. Seven real initialized-used bindings and four single-input identities independently necessary; neutral aids removed before final hash. Actual record copy, straight/turn limit uses and captured real counter preserved without memory claims. Unsigned angle/counter word arithmetic wraps before masks and clamp comparisons. |
| `func_80053728` | `ae56210` | 168 | 0 | `gcc272-dos` / `defaults` | gcc272-dos/default flags and natural zero-frame leaf. All identities and entry/row bindings removed; sole initialized-used literal-one comparison binding independently necessary, single/all controls172B/29 words. Unsigned numeric guest address arithmetic and explicit signed-word loop comparison retain full selector behavior rather than replacing it with host pointer ordering. |
| `func_800B6548` | `7cd08fc` | 64 | 0 | `gcc272-dos` / `defaults` | gcc272-dos/default flags, natural zero-frame leaf. Four initialized-used bindings for actual destination and three reusable loaded words plus one single-input destination identity; neutral result binding/identity and duplicate scalar bindings removed. Root reproduced each/all omission and ordinary store-order/signed-half-load controls on final hash. No instructions asm, padding or data definitions. |
| `func_800A2310` | `ad2aa10` | 100 | 0 | `gcc272-dos` / `defaults` | gcc272-dos/default flags, natural zero-frame leaf. One initialized-used single-input index identity after the real increment store; separate root single/all omission controls fail 88B/14 words. Same direct guest base on every access; no volatility, memory clobber, fixed binding or distinct-base alias workaround. |
| `func_80078CE4` | `06da34f` | 532 | 48 | `gcc272-dos` / `defaults` | gcc272-dos/default flags, natural 48-byte frame. Two initialized-used player/angle bindings, one single-input conditional-player capture and ordinary byte captures; root independently repeated all source removals and binding components. Unnecessary bindings/captures removed. Unsigned coordinate/angle wrapping and explicit current-coordinate-before-height-store chronology retained. |

`8002AFE0`: Two actual inputs agree all four sites in the complete sole caller. Arbitrary bias words wrap before signed clamp 2..16. Signed-half coordinate adjustments/negation are bounded; jitter helper subtracts two signed remainders, so first range is +/-256, derived next bound277..618, final jitter+/-32. Actual helper APIs reconciled. Existing reverse16-byte storage inspected, no invented table or binary-side assumption. Native address translation, raw record/stat extent, alias and signed-narrowing contracts remain provisional.

`80048AD8`: Four actual input words agree eight complete callers and established API. Initial and repeated 54A68 calls can mutate even on zero result. Fresh helper inputs, captured facing-before-store and actual flag versus reread chronology retained. Actual quarter and sixth paths remain separate; no assumed initial counter cap or extra selector bound. Partial native record/table, alias, alignment and helper runtime-domain contracts remain provisional.

`80053728`: One actual full word; complete sole caller supplies loop selector0/1 and tests canonical full-word0/1 return. Mode1/2 guard and one preloop phase snapshot retained. No helpers or stores. All phase/list-byte combinations for known caller remain in configured BSS, but no logical row bound or runtime initialization inferred. Arbitrary selectors retain native mapped-access contract. Numeric pointer conversion, signed reinterpretation and partial bank views require native adaptation.

`800B6548`: Two real pointers; sole complete caller supplies existing matrix/stack destination and ignores returned pointer, while original v0 retains destination. Paired loads precede their first stores and later reads remain interleaved with halfword overwrites; no disjoint-source assumption or naive transpose loop. In-place behavior preserved. Full bit-pattern copies, including signed final half load, add no arithmetic overflow. Native little-endian 18-byte backing, word/half alignment, effective type and pointer representation remain required; historical full matrix layout/API provisional.

`800A2310`: Two actual word inputs narrow to bytes; six sites in the complete sole caller ignore return residue. All 256 index/target values retained, no inferred two-team or target1/2 restriction. Derived guest span2FF..3FE lies within scratch RAM. Branch bounds make increment/decrement safe, and the later comparison consumes the actual reload. Native backing/address translation and historical formal API remain provisional.

`80078CE4`: Two actual inputs and ignored return agree five complete callers. Three full helpers and existing projection/angle tables reviewed; APIs match existing uses. Only signed negation is promoted halfword x and is safe including -32768. Phase193..448 makes remainder/multiply safe; coordinate word arithmetic wraps before signed-short narrowing. Current-pointer, side and scratch-identity rereads retain native alias order. Physical table-base aliases, record/scratch extents, effective type, alignment and target signed conversions remain native adaptation contracts.

Independent omission measurements (changed word positions, not a matching
percentage):

- `8002AFE0`: remove-amount-binding: 516 B / 22 words; remove-stat-binding: 512 B / 126 words; remove-branch-record-identity: 496 B / 69 words; remove-all-source-aids: 496 B / 69 words.
- `80048AD8`: remove-identity-initial-record: 700 B / 8 words; remove-identity-straight-limit: 700 B / 5 words; remove-identity-first-sum: 668 B / 119 words; remove-identity-turn-limit: 700 B / 5 words; remove-binding-adjusted: 696 B / 170 words; remove-binding-workingSecond: 688 B / 170 words; remove-binding-savedLimit: 700 B / 27 words; remove-binding-middle: 700 B / 2 words; remove-binding-lowFirst: 700 B / 3 words; remove-binding-amount: 700 B / 11 words; remove-binding-sum: 696 B / 37 words; remove-all-source-aids: 648 B / 173 words.
- `80053728`: remove-comparison-one-binding: 172 B / 29 words; remove-all-source-aids: 172 B / 29 words.
- `800B6548`: remove-dest-binding: 68 B / 16 words; remove-first-binding: 64 B / 6 words; remove-second-binding: 64 B / 5 words; remove-third-binding: 64 B / 3 words; remove-dest-identity: 64 B / 13 words; remove-extra-ordinary-commuting-first-stores: 68 B / 13 words; remove-extra-ordinary-tail-unsigned-half-load: 64 B / 1 words; remove-all-source-aids: 64 B / 14 words.
- `800A2310`: remove-postincrement-index-identity: 88 B / 14 words; remove-all-source-aids: 88 B / 14 words.
- `80078CE4`: remove-player-binding: 532 B / 28 words; remove-angle-byte-capture: 540 B / 86 words; remove-direction-byte-capture: 532 B / 3 words; remove-output-byte-capture: 540 B / 44 words; remove-conditional-player-input: 512 B / 107 words; remove-extra-angleByte-binding-only: 532 B / 3 words; remove-extra-all-bindings-only: 532 B / 29 words; remove-all-source-aids: 520 B / 110 words.

Every retained binding/empty identity uses initialized, genuinely consumed
values. Empty operand asm emits no instructions and asserts no memory
volatility. No instruction patch, artificial frame padding, fake helper
arguments, new storage or original-data changes are used. Complete historical
types, indirect users, native pointer/alias contracts and allocation bounds
remain provisional; binary equality alone is not native API recovery.

### Resident geometry initialization wrapper (2026-10-16)

`func_800B5B78` (`04e687e`) recovers the complete 76-byte / 19-word
range `[0x800B5B78, 0x800B5BC4)` with `gcc272-dos -quiet -O2 -G0`.
Its natural 24-byte frame contains the real outgoing argument area and saved
return address; there are no matching aids, extra flags, local padding or
new data. The same plain C under GCC 2.8.1 produces 72 bytes with 11 changed
word positions and is not selected.

The complete sole caller, `800B4138`, supplies no target inputs and ignores
its result. The observed API is `void(void)`. Three existing native helpers
are called in order: `800B5BD0()`, `800B5C58(0, 0, 0)` and
`800B47A8(0, 0)`, followed by aligned halfword clears at `800F1072` and
`800F1070`. Full helper bodies and the native initialization/BIOS veneers
were reviewed; no fake residual parameters, return value, purity annotation
or replacement hardware instructions are introduced.

The original zero word at `800B5BC4` is post-end padding before `800B5BC8`,
not part of the C function. Private comparisons use the declared endlabel;
the unchanged assembly padding remains in its original slot and is covered
by the complete retail hash. Annotated instructions, assembled original,
relocated C, retail slice and linked resident bytes agree. Fresh 519-C,
assembly-only and restored-519-C builds, all five overlays and all 21 tests
pass. Original assembly, initialized data, helpers and unrelated compiler
profiles are unchanged.

The first full-image gate caught a resident aggregator defect: C substitution
discarded that post-end word and shifted later code by four bytes. The scoped
builder correction preserves the original post-end tail and rejects missing
or duplicate endlabels. Three SDK-free regression tests fail against the old
behavior and pass with the correction. No padding is added to C, and no
original instruction or data is patched to manufacture a match.

The inferred role is geometry/platform initialization. Existing BIOS,
CP0/GTE and callback/exception contracts remain opaque native platform
behavior. Native ports still need mapped global storage and explicit
platform adapters; original names, global meaning/signedness, full layouts
and historical formal APIs remain provisional.

### Large resident player-marker coordinate mapping (2026-10-16)

`func_80020E30` (`5f1dfcd`) recovers the complete 3,012-byte /
753-word range `[0x80020E30, 0x800219F4)` with
`gcc272-dos -quiet -O2 -G0`. Plain C reproduces the natural 32-byte
frame, with two live saved base pointers and the return address. No source
matching aids, extra flags, artificial storage, instruction-output assembly,
new data or original-assembly changes are needed. GCC 2.8.1 on the final
source produces 2,964 bytes and 610 differing word positions.

The inferred role is player-marker coordinate mapping. Three layout/orientation
paths retain signed halfword coordinates, division by 303/356 or 305/361,
inactive-record skips, direct or reordered 23-record traversal, and two
separately selected markers. Unknown selector values retain the original
lack of traversal stores; no mode bounds or replacement default are invented.
Ordinary player-data and scratch-base locals preserve the measured allocation;
the earlier absolute-address-only draft was 3,000 bytes with a different frame.

Both complete known callers ignore the result. The existing resource lookup
receives real key 2, including the original second lookup in large-layout modes.
Its full body and initial pointer-table entry were reviewed; the mutable lookup
is not replaced with a constant address. Partial 1,000-byte player and 12-byte
marker views describe observed offsets only. Native scratch mapping, buffer
alignment/extents, alias contracts, halfword conversions and historical types
remain provisional; this is not a portable host API.

Annotated original, assembled original, relocated C, retail slice and linked
resident bytes agree. Fresh 520-C, assembly-only and restored-520-C builds
retain the complete retail hash; all five overlays and all 21 tests pass.
An independent arithmetic model also checked all four division forms over the
full signed-halfword/negated-halfword range (262,148 comparisons) and both
marker-index permutations. These model checks supplement, not replace, the
full linked-byte proof.

### Large resident coordinate/packet phase update (2026-10-17)

`func_8009C6E8` (`7513223`) recovers the complete 2,204-byte /
551-word range `[0x8009C6E8, 0x8009CF84)` with
`gcc272-dos -quiet -O2 -G0` and its natural 48-byte frame.
The inferred role combines mirrored coordinate submissions, native coordinate
and flag updates, fourteen packet-color updates, twenty-eight render calls,
and phase-byte advancement. The one mapped caller has no arguments and ignores
the result; all actual helper inputs, including stack pointer arguments, were
reviewed. Historical formal APIs and complete object meanings remain provisional.

Partial native views recover six-byte coordinates in fourteen-record mode
rows, sixteen-byte coordinate/flag records, and forty-byte packets in
376-record banks. `D_800E6F04` also aliases the first updated Z halfword.
Callback-sensitive mode, buffer and phase reloads are preserved; no input
bounds, independent sign cache, fake helper arguments or new storage are added.
This matching source requires native PS1 mapping and narrowing conventions,
not a portable host-memory contract.

Final-source removal controls retain only two tail register bindings, five
symbolic byte views and four zero-instruction tied-value expressions. Each
aid, each of the three live render-pointer dependencies, the one retained
volatile qualifier, and the all-aids removal were measured independently.
Removing the sign tie changes two words; the positive-path offset tie changes
196 words and shortens the function; the Z-loop counter tie changes six words;
the render-pointer capture changes five words. Removing each pointer input
changes four, three or two words. Removing either tail binding changes twelve
words. Earlier redundant bindings, identities, volatile qualifiers and the
render-counter dependency were removed. There are no extra compiler flags,
emitted instruction assembly, memory clobbers or fabricated frame objects.

Annotated original, assembled original, relocated C, retail slice and linked
resident bytes agree. Fresh 521-C, assembly-only and restored-521-C builds
retain retail SHA-1 `7e480656a295dced6ec187286773ab897651e995`;
all five overlays and all 21 tests pass. The complete 521-substitution resident
audit passes. Original assembly, data, boundaries and helpers are unchanged.
Failed attempts, final source hashes and twenty final-source controls remain
in ignored local evidence.

## Wrapper checks

The wrapper's SDK-free tests cover successful verbatim copying, failed or
partial output, missing success markers, timeouts and unsafe flag tokens:

```powershell
py -B -m unittest discover -s tools_src/tests -p 'test_dos_cc1.py'
```

Valid and malformed source were also tested with the real local DOS compiler
and runtime. Build verification must still check all overlays and the resident
executable after integrating new source.
