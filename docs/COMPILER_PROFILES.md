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

`build.py` uses the shared per-function compiler map for `src/resident/`, with
the same `--psyq-bin`, `--maspsx`, `--dosbox` and `--dos-cc1` local-tool options.
For shared read-only installations, use your actual local paths:

```powershell
py -B tools_src\build.py --bin-dir 'C:\path\to\mips\bin' --psyq-bin 'C:\path\to\psyq45\BIN' --maspsx 'C:\path\to\maspsx\maspsx.py' --dosbox 'C:\path\to\dosbox-x.exe'
```

`--assembly-only` bypasses resident C compilation and preserves the original
assembly baseline. Unknown resident C slots and generated resident rodata fail
closed; overlay switch-table placement is not automatically a resident feature.

## Wrapper checks

The wrapper's SDK-free tests cover successful verbatim copying, failed or
partial output, missing success markers, timeouts and unsafe flag tokens:

```powershell
py -B -m unittest discover -s tools_src/tests -p 'test_dos_cc1.py'
```

Valid and malformed source were also tested with the real local DOS compiler
and runtime. Build verification must still check all overlays and the resident
executable after integrating new source.
