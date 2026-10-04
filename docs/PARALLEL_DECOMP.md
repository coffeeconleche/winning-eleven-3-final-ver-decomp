# Parallel decompilation handoff

Use this document with three independent agents working on this same game.
Give each agent a different assignment number from the table below. Do not run
multiple workers in the same checkout, even if they edit different C files:
`build_overlay.py` rewrites shared build outputs for the entire overlay.

## Starting point and assignments

These assignments were checked at commit `01fb07d` on `master`. That baseline
has 19 matching C functions, five byte-identical overlays, and a byte-identical
resident executable. Recheck the current baseline before starting: another
worker may already have completed an assignment.

| Agent | Exclusive target | Original size | Working branch |
|---|---|---:|---|
| 1 | `func_801AB510` | 472 bytes | `decomp/select-record-reorder` |
| 2 | `func_801AF198` | 744 bytes | `decomp/select-statistics-table` |
| 3 | `func_801CF964` | 544 bytes | `decomp/select-config-copy` |

Each target is in `asm/overlays/select/nonmatchings/4BE0/`. Its new matching C
file belongs at `src/overlays/select/<function>.c`.

### First batch results

Agents 2 and 3 recovered exact C matches for `func_801AF198` (744 bytes) and
`func_801CF964` (544 bytes). They were integrated after independent review and
full binary verification. That batch raised the accepted matching C count to 21.

Agent 1's `func_801AB510` remains assembly-backed. Its closest research draft
has the original 472-byte size but differs in eight instruction words: both
four-byte tail copies use `t6` instead of `v0`. The incomplete draft was not
integrated. Local reproduction notes and candidates remain in the worker's
ignored `build/` directory; they are not distributed with the public source.

The assignments below document the original batch. Do not rerun completed
targets as new work; select and explicitly assign new unmatched functions for
the next batch.

### Second batch results

Three new workers started at `e547690`, each on a separate branch and with
independent build outputs. All three recovered exact C matches:

| Agent | Exclusive target | Original size | Working branch |
|---|---|---:|---|
| 4 | `func_801A3930` | 180 bytes | `decomp/select-table-reset` |
| 5 | `func_801A9540` | 212 bytes | `decomp/select-number-format` |
| 6 | `func_801A61FC` | 240 bytes | `decomp/select-ui-coordinates` |

The recovered routines reset indexed record fields, format two glyph records,
and set coordinate halfwords in four records, respectively. Gameplay field
meanings, the original packet type, and some parameter declarations remain
uncertain. The reset needed no compiler barriers or register bindings; the
formatter and coordinate routine use commented empty barriers and bindings to
preserve the original register lifetimes and instruction scheduling. All use
`-quiet -O2 -G0 -mno-split-addresses`; none required new symbols.

The integrating agent reviewed each commit, rebuilt SELECT after each serial
integration, and verified all five overlays and the resident executable again
after combining the changes. All complete binaries remain byte-identical.
This batch added 632 bytes of matching C, bringing that baseline to 24 functions
(23 SELECT and one ENTER). These targets are completed, not new assignments.

### Third and fourth batch results

Three existing workers were reused at `be13e8c`, each with two exclusive targets
in sequence. Each worker verified and committed its first target before starting
its second, without waiting for the other workers. All six targets matched:

| Worker branch | First target | Bytes | Second target | Bytes |
|---|---|---:|---|---:|
| `decomp/select-state-init` | `func_8018DE7C` | 180 | `func_8018F188` | 360 |
| `decomp/select-input-transitions` | `func_8018E2C0` | 244 | `func_8018E3B4` | 248 |
| `decomp/select-draw-and-choice` | `func_801A346C` | 284 | `func_801A24E4` | 300 |

The routines cover state initialization, staged reset, two input/state
transitions, two-slot setup, and randomized availability retry. These are
behavioral descriptions, not claims about original names or gameplay fields.
The staged reset preserves the original lack of a defined return outside its
observed stage range; it is matching-source research, not a host-safe API.

All six use the [DOS GCC 2.7.2 profile](COMPILER_PROFILES.md); the retry routine
also uses `-fno-schedule-insns`. No new symbols, original-assembly edits or
instruction-output patches were needed. The integrating agent added an isolated,
fail-closed DOS compiler wrapper and SDK-free tests. Earlier compiler-profile
near-matches remained ignored until an exact match was established.

Each worker checked all five overlays and the resident executable. Integration
preserved each worker's commit order, retained shared compiler-map additions,
and independently rebuilt SELECT after every accepted function. Final combined
overlay and resident verification also passed. The two queues added 1,616 bytes
of matching C, bringing the accepted count to 30 functions (29 SELECT and one
ENTER), with 382 confirmed overlay functions still assembly-backed. All six
targets in this table are completed, not available assignments.

### Fifth through seventh batch results

At `36aaa2b`, the same three workers each received a three-target queue. All
nine functions matched, with a separate verified commit for each function and
no global barrier between rounds:

| Worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) |
|---|---|---|---|
| `decomp/select-reset-and-sequence` | `func_8018E538` (128) | `func_8018EC60` (80) | `func_8019A62C` (212) |
| `decomp/select-range-input` | `func_8018E5EC` (84) | `func_8018E640` (92) | `func_8018E994` (116) |
| `decomp/select-slot-helpers` | `func_801A36D0` (92) | `func_801A3EE8` (244) | `func_801A372C` (516) |

The routines reset table fields, update an indexed data pointer, recognize a
word-valued input sequence, wrap values for two input-mask pairs, approach a
signed-halfword target, classify slot ranges, toggle a scratchpad selection,
and clear mode-dependent status ranges. These are measured behaviors; original
prototypes and gameplay meanings remain uncertain.

The approach routine retains negative signed-step behavior and a signed first
load followed by an unsigned reread. A zero step leaves the halfword unchanged
and returns 1; an equal-distance step updates it but still returns 0. The status
reset initializes 44 bytes and preserves flag reloads and the mode-2 clear
starting at index 21. These details must not be simplified in the matching lane.

All nine use `gcc272-dos` with `-quiet -O2 -G0`; the status reset also uses
`-fno-schedule-insns`. Four functions need neither barriers nor bindings; the
others use documented empty constraints to preserve register lifetimes and
ordering. No symbols, original assembly, expected hashes or generated
instructions were changed to obtain the matches.

Workers checked all overlays and the resident executable after each target.
Root reviewed and integrated the commits in each worker's order, checking
SELECT after every pick and all five overlays plus the resident again after
combining all nine. The complete binaries remain byte-identical. These rounds
added 1,564 matching bytes (304, 416 and 844 per queue position), raising the
accepted count from 30 to 39 functions (38 SELECT and one ENTER). The remaining
373 confirmed overlay functions are assembly-backed. These are completed
targets, not new assignments; earlier ignored research remains local.

### Eighth through tenth batch results

At `781811e`, the same three workers each received another three-target queue.
All nine functions matched, each with its own verified commit:

| Worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) |
|---|---|---|---|
| `decomp/select-halfword-and-confirm` | `func_8018EA08` (132) | `func_8018EA8C` (104) | `func_8018EAF4` (176) |
| `decomp/select-settings-apply` | `func_8019E494` (68) | `func_8019E4D8` (168) | `func_8019E580` (160) |
| `decomp/select-packed-navigation` | `func_801A63A8` (88) | `func_801A3588` (328) | `func_801A3D3C` (428) |

Recovered behaviors include coupled halfword movement, exact confirmation and
cancellation values, byte-range classification, two descriptor-application
paths, halfword-pair transfers, packed three-bit field decoding, and grid
navigation. Original names, prototypes, and gameplay field meanings remain
uncertain.

The coupled movement preserves store/load order even when the pointers alias,
arithmetic right shift for negative odd movement, and a zero-step early return.
The decoder reloads the packed halfword for each output field; its sentinel
clears only the current row and returns immediately. Unsupported mode values
retain the original lack of a defined initial index, rather than inventing a
fallback. This is matching-source research, not a host-safe API. Navigation
checks all four button bits independently, calls the callback before rereading
selection, and returns whether the final selection differs from the initial one.

All nine use `gcc272-dos` with `-quiet -O2 -G0`; the halfword-pair transfer and
packed descriptor application additionally use `-fno-schedule-insns`. Six need
neither barriers nor register bindings. The other three use documented empty
constraints to preserve instruction order or register lifetimes. No symbols,
original assembly, reference hashes, or generated instructions were changed.

Each worker verified all five overlays and the resident executable after every
target. Root reviewed and integrated the results in each worker's order,
rebuilding SELECT after every pick. Final combined checks passed for all five
overlays and the resident, with unchanged SHA-1s and sizes; the four SDK-free
DOS wrapper tests also passed. These queues added 1,652 matching bytes (288,
600, and 764 per queue position), raising the accepted count from 39 to 48
functions (47 SELECT and one ENTER). The remaining 364 confirmed overlay
functions are assembly-backed. All targets above are completed, not available
assignments; earlier ignored research remains local.

### Eleventh through thirteenth batch results

At `1c4be84`, the same three workers each received another exclusive three-target
queue. All nine matched with separate verified source commits:

| Worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) |
|---|---|---|---|
| `decomp/select-mode-and-search` | `func_8018E69C` (132) | `func_801A2474` (56) | `func_801A4948` (140) |
| `decomp/select-descriptor-helpers` | `func_8019E454` (64) | `func_8019E3EC` (104) | `func_8019E1D0` (140) |
| `decomp/select-call-and-poll` | `func_80191DF0` (84) | `func_80192520` (116) | `func_80192594` (116) |

Recovered behaviors include two mode switches, a bounded exclusion scan, an
unbounded mode-selected index search, a scratchpad-dependent offset, twelve
paired record updates, a flag-gated descriptor call, and two BIOS polling
wrappers. The search assumes a match exists and narrows its index to a byte;
no new absent-value fallback was added. The polling wrappers reread each of
four handles after the preceding call and repeat their distinct poll entries
until any nonzero result, without an invented timeout. Wrapped byte subtraction
and all call ordering are preserved. Original prototypes and gameplay meanings
remain uncertain; these are matching sources, not host-safe APIs.

All nine use `gcc272-dos -quiet -O2 -G0`. Eight need no barriers or register
bindings; the scratchpad offset uses documented empty constraints. No symbol
additions, original assembly edits, reference-hash changes or instruction
patches were needed.

The integrating agent added [owned jump-table placement](WORKFLOW.md#owned-switch-tables)
and SDK-free tests. The compiler-generated five- and six-entry tables are placed
verbatim in their original slots, retaining surrounding data and padding. The
workers using switches received only this shared infrastructure commit; root
already owned it and integrated their source commits separately.

Workers verified all five overlays and the resident after every function. Root
reviewed and integrated in each worker's order and rebuilt SELECT after every
pick. These queues added 952 matching code bytes (280, 276, and 396 per queue
position), raising the accepted count from 48 to 57 functions (56 SELECT and
one ENTER). The remaining 355 confirmed overlay functions are assembly-backed.
Final combined verification passed for all five overlays and the resident,
with unchanged hashes and sizes; all nine SDK-free tooling tests also passed.
The targets above are completed, not available assignments; ignored earlier
research is preserved.

### Fourteenth through sixteenth batch results

At `956a9a6`, twelve new targets were assigned as four lanes of three. Three
existing isolated workers ran alongside the integrating agent, who implemented
the fourth lane in the primary checkout before integrating worker results.
There was no global barrier between queue positions; no additional worker or
shared writable build directory was needed.

| Lane / worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) |
|---|---|---|---|
| `decomp/select-mode-and-call` | `func_801A4908` (64) | `func_801A7A4C` (64) | `func_801A8540` (112) |
| `decomp/select-descriptor-submit` | `func_80196800` (156) | `func_8019645C` (156) | `func_801964F8` (164) |
| `decomp/select-poll-and-copy` | `func_801926EC` (52) | `func_80191E44` (60) | `func_80192428` (120) |
| Integrating agent | `func_801C2064` (68) | `func_801C20A8` (72) | `func_801C1C5C` (120) |

Recovered behaviors include a mode-selected byte lookup, eleven ordered calls,
wrapped byte call setup, three descriptor-submission paths, indefinite retry,
button-based callback/return, indexed copies, two mode initializers, and a
mode/side classifier. Original prototypes and gameplay meanings remain
uncertain.

The call setup retains selector underflow from zero to 255 before scaling.
Descriptor routines preserve five early stack loads, word/halfword/byte stores,
scratchpad flag-read order and the 20-byte entry stride. Endpoint sums narrow
to halfwords; the fifth argument of the endpoint routine is word-sized, unlike
the other two. The retry repeats the entire side-effectful call, with no
invented timeout. Indexed copies read a signed halfword index after the first
call and reread its low byte after the second. The classifier retains a second
table-byte load instead of reusing the first. Bounds and fallbacks were not
added to the matching sources.

All twelve use `gcc272-dos -quiet -O2 -G0`. Ten need no barriers or register
bindings; the global descriptor submission and mode/side classifier use
documented empty constraints. No symbols or jump tables were added, and no
original assembly, reference hashes or generated instructions were patched.

Each function passed all five overlays and resident verification before its
separate commit. Root reviewed the worker sources and retained each queue's
order, rebuilding SELECT after every integration. These queues added 1,208
matching code bytes (340, 352 and 516 per queue position), raising the accepted
count from 57 to 69 functions (68 SELECT and one ENTER). The remaining 343
confirmed overlay functions are assembly-backed. Final combined checks passed
for all five overlays and the resident with unchanged hashes and sizes, along
with all nine SDK-free tooling tests. All targets in this table
are completed, not new assignments; ignored research remains local.

### Seventeenth through nineteenth batch results

At `74cd823`, twelve more targets were assigned as four lanes of three. The
same three isolated workers handled their queues while the integrating agent
implemented the fourth lane in the primary checkout. Each lane proceeded
without waiting for the others; integration retained each worker's commit order.

| Lane / worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) |
|---|---|---|---|
| `decomp/select-handles-and-reset` | `func_801924A0` (128) | `func_801929B4` (124) | `func_80193EA0` (120) |
| `decomp/select-packet-and-markers` | `func_801962E4` (148) | `func_80197BE0` (152) | `func_80193F18` (156) |
| `decomp/select-record-search-and-update` | `func_801B4FA8` (100) | `func_801B8450` (136) | `func_801B8C68` (108) |
| Integrating agent | `func_801B9100` (68) | `func_801B89D0` (80) | `func_801AFECC` (80) |

Recovered behaviors include ordered handle-result priority, indefinite polling
before a word reset, two pointer lookups and byte writes per loop iteration,
packet-dependent dispatch, digit descriptor setup, conditional marker submission,
ordered record search, selected record-byte updates, recursive record updates,
an initialization call/store sequence, and a backwards nine-byte reset.
Original prototypes, complete record layouts and gameplay meanings remain
uncertain.

The handle routines retain global rereads across calls and add no timeout.
Digit setup tests a wrapped byte while retaining the adjusted word for the
shift. Marker submission preserves the unsigned word coordinate literals before
callee halfword narrowing. The search returns 32 when no entry matches. Record
selection reads the scratchpad word after lookup; both recursive walks reread
the current byte after recursion and still update the terminal record. No null,
cycle or bounds guards were invented. The backwards reset starts at the existing
data symbol and writes into preceding bytes whose full layout is still unknown.

All twelve use `gcc272-dos -quiet -O2 -G0`. Eleven need no barriers or register
bindings; the backwards reset uses two documented empty input constraints to
retain the reference setup order. No symbols or jump tables were added, and no
original assembly, reference hashes or generated instructions were patched.

Each function passed all five overlays and resident verification before its
separate commit. Worker sources were reviewed and SELECT rebuilt after every
integration. These queues added 1,400 matching code bytes (444, 492 and 464 per
queue position), raising the accepted count from 69 to 81 functions (80 SELECT
and one ENTER). The remaining 331 confirmed overlay functions are assembly-backed.
Final combined checks passed for all five overlays and the resident with unchanged
hashes and sizes, together with all nine SDK-free tooling tests. All targets in
this table are completed, not new assignments; ignored research remains local.

### Twentieth through twenty-fourth batch results

At `8c71478`, three existing isolated workers each received five exclusive
targets. Each worker verified and committed one function before proceeding to
the next, without a global round barrier. The integrating agent reviewed and
combined the results in each worker's commit order. A finished worker also
helped solve a traversal scheduling difference using only ignored research;
the assigned traversal worker retained source and commit ownership.

| Worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) | Fourth target (bytes) | Fifth target (bytes) |
|---|---|---|---|---|---|
| `decomp/select-transfer-and-descriptors` | `func_80192334` (244) | `func_80192608` (228) | `func_801942E0` (180) | `func_801940EC` (244) | `func_801941E0` (256) |
| `decomp/select-descriptor-and-motion` | `func_80196378` (228) | `func_80199FDC` (208) | `func_8019A0AC` (188) | `func_8019A2A0` (160) | `func_8019A340` (188) |
| `decomp/select-node-traversal-and-ranges` | `func_801B8A20` (152) | `func_801B8CD4` (156) | `func_801B8BB0` (184) | `func_801B8AB8` (248) | `func_801B3D20` (124) |

Recovered behaviors include eight ordered one-byte transfer calls, indefinite
polling followed by priority retries, three mixed-width descriptor updates,
scratchpad descriptor submission, four paired motion loops, mode-selected
record traversals, recursive field propagation and a cumulative range lookup.
The transfer wrapper is a BIOS dispatch stub; argument direction is not
asserted from that stub alone. Original prototypes, full record layouts and
gameplay meanings remain uncertain.

Descriptor copies retain alternating reads and writes, including possible
overlap. The adjusted copy rereads unsigned sizes after earlier stores and
narrows results to halfwords. A halfword parameter explicitly narrowed to a
byte recovers the observed byte load before a halfword destination store.
Motion loops always perform both calls, accumulate results with bitwise AND,
and retain counter decrements and alternating signed targets. Traversals test
the entry gate once but reread the mode across callbacks; byte-narrow and signed
word counters remain distinct. A nonzero gate still visits entry zero when the
mode byte is zero. Recursion retains its saved child pointer and post-call
field rereads; no null or cycle guards were added. The cumulative scan remains
unbounded and adds one per preceding table entry before narrowing its return.

All fifteen use `gcc272-dos -quiet -O2 -G0`. Thirteen are natural C without
barriers or register bindings. The first traversal uses a documented empty
base/setup constraint; moving the initial mode read into the loop recovers the
reference mask/load order. The signed traversal uses an empty memory constraint
to retain eight otherwise-unused local bytes and the measured 40-byte frame;
the original local purpose is unknown. No register bindings, new symbols or
jump tables were needed. Original assembly, reference hashes and generated
instructions were not patched.

Each function passed all five overlays and resident verification before its
separate commit. SELECT was rebuilt after each integration; the final
integration ran all five overlays as the combined verification. These queues
added 2,988 matching code bytes (624, 592, 552, 652 and 568 per queue position),
raising the accepted count from 81 to 96 functions (95 SELECT and one ENTER).
The remaining 316 confirmed overlay functions are assembly-backed. Final
combined overlay and resident hashes and sizes are unchanged, and all nine
SDK-free tooling tests pass. All targets above are completed, not available
assignments; ignored research remains local.

### Twenty-fifth through twenty-eighth batch results

At `90e3725`, three existing isolated workers each received four exclusive
targets. Workers verified and committed each function before proceeding to the
next, without a global round barrier. Integration preserved each worker's order.
A finished worker helped resolve the final node selector's compiler-frame
difference using ignored research; the assigned worker retained source and
commit ownership. No new workers, worktrees or emulator session were needed.

| Worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) | Fourth target (bytes) |
|---|---|---|---|---|
| `decomp/select-poll-switch-and-text` | `func_80192720` (296) | `func_80193884` (268) | `func_80193FB4` (312) | `func_80194A74` (240) |
| `decomp/select-mode-and-record-setup` | `func_8019A3FC` (276) | `func_8019A510` (276) | `func_8019A700` (260) | `func_8019A168` (312) |
| `decomp/select-two-pass-and-node-state` | `func_801B84D8` (268) | `func_801B8708` (268) | `func_801B85E4` (292) | `func_801B8D70` (328) |

Recovered behaviors include embedded priority checks and indefinite polling,
mode-selected dispatch, ordered buffer/flag reset calls, a mixed-width
40-byte descriptor setup, paired 17-argument calls, a text-position scanner,
two-pass node walks, recursive byte export and recursive selection-state
updates. Original prototypes, complete record/table layouts and gameplay
meanings remain uncertain; these are access views and behavioral descriptions.

Polling retains handle rereads and byte wrapping before the threshold test.
The descriptor preserves field widths, its 88-byte frame and argument spills.
The paired loop always makes both calls and retains the original argument bits.
The scanner retains distinct initial and loop-top terminators, one/two-byte
advances, word counters narrowed only after scanning, empty-count wrapping,
signed-byte pitch, signed-halfword truncation before shifting and the clamp.
Walkers preserve the saved entry gate, independent current-mode second gate,
byte indices and mode reloads across callbacks. Recursive export reloads fields
and the word counter after potentially aliasing byte stores. Selection retains
scratch-store order and captures both bytes before its potentially aliasing
pointer store. No bounds, null, cycle or timeout guards were added.

All twelve use `gcc272-dos -quiet -O2 -G0`. Seven are natural C without barriers
or register bindings. The buffer reset uses a documented empty memory output
to retain 32 otherwise-unused local bytes in its measured 56-byte frame; their
original purpose is unknown. Both two-pass walkers use empty row-input
constraints for reference scheduling. The scanner uses documented `$3`/`$5`
bindings and paired empty inputs to preserve the clamp's delay-slot copy. The
node selector uses an empty memory barrier to prevent premature child-pointer
loading. Splitting only its first lookup address eliminates an extra compiler
temporary and recovers the 32-byte frame without a frame-retention constraint.
These compiler constraints emit no instructions themselves.

The existing jump-table adapter now owns five original entries at
`jtbl_80189440` and six each at `jtbl_80189CAC` and `jtbl_80189CC4`. Only the
compiler-generated entries replace their established table ranges; no trailing
padding is claimed. No new symbols were needed. Original assembly, reference
hashes and generated instructions were not patched.

Each function passed all five overlays and resident verification before its
separate commit. SELECT was rebuilt after each integration; the final
integration ran all five overlays as the combined gate. These queues added
3,396 matching code bytes (840, 812, 864 and 880 per queue position), raising
the accepted count from 96 to 108 functions (107 SELECT and one ENTER).
The remaining 304 confirmed overlay functions are assembly-backed. Final
combined overlay and resident hashes and sizes are unchanged, and all nine
SDK-free tooling tests pass. Privacy review passed and all worker checkouts
were tracked clean. All targets above are completed, not available assignments;
ignored research remains local.

### Twenty-ninth through thirty-third batch results

At `a2ed20a`, three existing isolated workers each received five exclusive
targets. Each worker verified and committed a function before proceeding,
without a global round barrier. Integration preserved each worker's order.
No new workers, worktrees or emulator session were needed.

| Worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) | Fourth target (bytes) | Fifth target (bytes) |
|---|---|---|---|---|---|
| `decomp/select-poll-and-glyph-setup` | `func_80192848` (364) | `func_80199E8C` (336) | `func_80197470` (320) | `func_8019E09C` (308) | `func_8019DF70` (300) |
| `decomp/select-input-and-list-updates` | `func_8019C61C` (288) | `func_8019C73C` (288) | `func_801A8CD0` (312) | `func_801A8E08` (248) | `func_801A9168` (316) |
| `decomp/select-ranking-and-display-fields` | `func_801B8F38` (192) | `func_801B8FF8` (264) | `func_801B500C` (236) | `func_801B5560` (228) | `func_801C1CD4` (192) |

Recovered behaviors include seven-byte template copying and record enumeration,
paired descriptor submissions, scratchpad glyph setup, coupled motion wrappers,
control/glyph byte appending, signed score ordering, a weighted ranking formula,
paired bounded record searches, six-mode halfword coordinates and numeric glyph
layout. These describe observed access patterns; original prototypes, complete
layouts, ranking-field meanings, selector meaning and encoding remain uncertain.

Enumeration retains signed size loads, rounding and global reloads. Descriptor
loops preserve argument bits, call order, lookup-byte signed division and
secondary counters that advance only on retained iterations. Glyph setup keeps
wrapped byte-range checks, lookup offsets and mixed-width scratchpad store order.
Motion wrappers execute every call and combine their results with bitwise AND.
Ranking uses unsigned field loads and modulo-word arithmetic before signed
sorting; its byte-field weight is 10,000,000. Bounded searches retain the last
examined entry on a miss, asymmetric delay-slot counter updates and output
rereads. Coordinate modes outside 0..5 store initialized zero halfwords. The
two encoders retain ordered byte stores, pointer advancement, distinct signed
and unsigned quotient sequences, and global-pointer rereads where applicable.
No bounds, timeout, terminator or null guards were added.

All fifteen use `gcc272-dos -quiet -O2 -G0`. Nine are natural C without barriers
or register bindings. The lookup pair uses an empty tied key constraint to
retain separate narrowings. The descriptor pair uses one branch-local selector
input; the appender uses two pointer inputs. Score ordering uses one empty
score/counter input after its store. The weighted score binds its subtotal to
`$5`; the bounded search binds its base to `$10` and uses two empty setup
inputs. These documented compiler aids emit no instructions themselves; no
frame-retention aids were needed.

The existing jump-table adapter owns exactly six original entries at
`jtbl_8018AD6C` for `func_801B5560`. Generated entries replace only those
24 bytes, with surrounding data and alignment retained. No new symbols were
needed. Original assembly, reference hashes and generated instructions were
not patched.

Each function passed all five overlays and resident verification before its
separate commit. SELECT was rebuilt after every integration; the final
integration ran all five overlays as the combined gate. These queues added
4,192 matching code bytes (844, 888, 868, 784 and 808 per queue position),
raising the accepted count from 108 to 123 functions (122 SELECT and one ENTER).
The remaining 289 confirmed overlay functions are assembly-backed. Final
combined overlay and resident hashes and sizes are unchanged, and all nine
SDK-free tooling tests pass. Privacy review passed; primary and worker checkouts
were tracked clean. These targets are completed, not available assignments;
ignored research remains local.

### Thirty-fourth through thirty-eighth batch results

At `041f740`, three existing isolated workers received five exclusive targets
each. Every worker verified and committed one function before proceeding;
there was no global round barrier. Integration preserved each worker's order.
A finished worker privately helped solve the paired glyph lookup while its
assigned worker retained source ownership. No new worktrees or emulator
session were needed.

| Worker branch | First target (bytes) | Second target (bytes) | Third target (bytes) | Fourth target (bytes) | Fifth target (bytes) |
|---|---|---|---|---|---|
| `decomp/select-glyph-and-score-helpers` | `func_801A62EC` (188) | `func_801A76A8` (248) | `func_801A97FC` (120) | `func_801A98F0` (280) | `func_801A29FC` (320) |
| `decomp/select-format-and-statistics` | `func_801A92A4` (296) | `func_801A9B88` (204) | `func_801AA40C` (280) | `func_801AEBF8` (188) | `func_801AECB4` (220) |
| `decomp/select-dispatch-and-numeric-records` | `func_801B1168` (188) | `func_801B04B4` (228) | `func_801B0598` (328) | `func_801B0368` (332) | `func_801AF110` (136) |

Recovered access patterns include two descriptor-row copies, coordinate
selection, signed descending score ordering, paired glyph lookup, ordered
motion calls, three-byte numeric text, a sparse packed-state lookup, narrow
counter updates, six-mode coordinates, descriptor enumeration and clamping,
menu dispatch, controller repeat handling, numeric glyph records and an
unsigned-byte comparator. Original record types, field meanings and some
prototypes remain uncertain; these are behavioral descriptions, not recovered
gameplay names.

Descriptor and glyph routines preserve mixed-width store order and
alias-sensitive rereads. Score sorting retains unsigned inclusive bounds and
the original unconditional outer decrement; no empty-range guard was added.
The three-byte formatter writes underscores for negative inputs and no
terminator. The glyph-record formatter instead retains signed division and
remainder on negative inputs, with only an upper cap of 999. The sparse lookup
does not invent a return value for unsupported cases. Motion calls all execute
in order and combine completion bits with bitwise AND. Dispatchers preserve
base captures before calls and reload flags afterward where measured.
Statistics records retain six-byte strides, narrow counter wrapping, clamping
and mode-dependent comparator selection. Unsupported coordinate modes retain
initialized zero halfwords. Controller handling preserves low-byte key
selection and the original halfword counters; a caller's narrow load does not
prove the original callee prototype.

All fifteen use `gcc272-dos -quiet -O2 -G0`; `func_801AECB4` additionally
uses `-fno-strength-reduce` to retain the original single six-byte cursor.
Eight functions need no source compiler aids. The descriptor copy uses two
empty constraints and `$5`/`$7` bindings. Numeric text and the counter update
each use one empty constraint; the glyph-record formatter uses two empty
constraints. The motion wrapper uses one final accumulator input. Paired glyph
lookup uses a base tie, one memory barrier and an unused eight-byte frame
reservation. The sparse lookup retains an unused 24-byte frame reservation.
The original purposes of those frame slots are unknown; no accesses were
invented. These aids are documented and emit no instructions themselves.

The existing jump-table adapter owns exactly six original words at
`jtbl_8018A59C` for `func_801AEBF8`; the next table begins immediately
after those 24 bytes, so no padding was assumed. The only new symbol is
`D_801D27BE = 0x801D27BE`, the proved halfword at `D_801D27BC + 2`.
Original assembly, reference hashes, linker placement and generated
instructions were not patched.

Each source passed all five overlays and resident verification before its
separate commit. SELECT was independently rebuilt after every integration;
the final integration ran all five overlays as the combined gate. The queues
added 3,556 matching code bytes (672, 680, 728, 800 and 676 per queue position),
raising the accepted count from 123 to 138 functions (137 SELECT and one ENTER).
The remaining 274 confirmed overlay functions are assembly-backed. Final
combined overlay and resident hashes and sizes are unchanged; all nine SDK-free
tooling tests pass. Privacy review passed, and worker checkouts were tracked
clean. These targets are completed, not available assignments; ignored
research remains local. This batch was committed locally without a push.

### Ninety-function run: verified checkpoints

Starting at `84a3fcf` with 138 matching C functions, three isolated
workers have exclusive 30-target queues on `decomp/select-ninety-a`,
`decomp/select-ninety-b` and `decomp/select-ninety-c`. Workers proceed
after individual verified commits without a global round barrier. Integration
retains worker commit order; each publication groups 15 accepted functions
across the three workers without requiring equal per-worker counts at each
checkpoint. Unresolved probes remain private and do not count as matches.

The parked `func_801BFCDC` probe was replaced within the 90-target scope
by `func_801C0808`; unfinished work remains private and uncounted. Its five
generated jump-table words retain the original `jtbl_8018B9C4` slot and
trailing padding, with complete-image verification.

The parked `func_801CADC4` and `func_801A82F8` probes were replaced
within the same 90-target scope by `func_801A5A14` and `func_801A5B88`.
Each replacement preserves its five-entry generated table at the original
slot, trailing padding and complete retail image. Parked work is uncounted.

The five-word entry-order near-match for `func_801C86B4` remains parked,
private and uncounted. `func_80191E80` replaces it within the same 90-function
scope, preserving the measured buffer-pointer rereads, ordered transfer
boundaries and signed checksum span without claiming a recovered data format.

| Checkpoint | New exact functions in run | Total matching C | Assembly-backed confirmed overlay functions |
|---|---:|---:|---:|
| 1 | 15 | 153 | 259 |
| 2 | 30 | 168 | 244 |
| 3 | 45 | 183 | 229 |
| 4 | 60 | 198 | 214 |
| 5 | 75 | 213 | 199 |
| 6 | 90 | 228 | 184 |

90 verified additions cover 33,372 matching code bytes.
All 90 requested additions are verified.

| Worker | Function | Bytes | Source compiler aids |
|---|---|---:|---|
| A | `func_801BE744` | 56 | None |
| B | `func_801CB334` | 72 | None |
| A | `func_801BD6A0` | 76 | Unused 8-byte leaf frame, original purpose unknown |
| B | `func_801C8CB4` | 76 | None |
| A | `func_801BD2F8` | 112 | None |
| B | `func_801A84C8` | 120 | None |
| C | `func_801CF918` | 76 | None |
| A | `func_801C6250` | 144 | None; 20-byte local descriptor naturally gives measured 48-byte frame |
| B | `func_801BA564` | 176 | None |
| C | `func_801AA778` | 76 | One empty base input |
| C | `func_801BD368` | 136 | None |
| B | `func_801BB140` | 192 | None |
| A | `func_801CF6A8` | 184 | Two empty inputs and return answer $2 binding |
| C | `func_801ADF5C` | 196 | None |
| C | `func_801CACF0` | 212 | None |
| B | `func_801D0BB0` | 208 | None |
| B | `func_801AEE80` | 240 | None |
| A | `func_801D0820` | 208 | One empty counter/cursor input, $5/$4 bindings, unused 8-byte frame |
| B | `func_801C2A3C` | 276 | None |
| B | `func_801C576C` | 288 | None |
| A | `func_801AED90` | 240 | None |
| A | `func_801BD8E8` | 272 | One empty base lifetime input |
| A | `func_801C20F0` | 284 | None |
| B | `func_801D08F0` | 304 | None |
| C | `func_801BA7EC` | 256 | None |
| C | `func_801BF35C` | 284 | None |
| C | `func_801C98F8` | 288 | None; -fno-cse-skip-blocks profile |
| A | `func_801BCBA8` | 304 | Five empty ties/inputs, base $5/mapped $3 bindings, unused 16-byte frame |
| C | `func_801D110C` | 304 | Four local bindings and one empty destination-base input |
| C | `func_801C18AC` | 320 | One late remainder $4 binding and one empty matching tie |
| B | `func_801A4C6C` | 316 | One scaled-term $4 binding and one empty two-term input |
| B | `func_801BFD94` | 328 | None |
| B | `func_801A2B3C` | 356 | None |
| B | `func_801BD9F8` | 380 | One empty tied index constraint |
| B | `func_801B53DC` | 388 | None |
| A | `func_801C588C` | 312 | One loop input/memory barrier, colors $10 binding, scalar symbol-expression view |
| C | `func_801CBFE4` | 344 | None |
| C | `func_801A2F90` | 356 | None |
| A | `func_801C3150` | 324 | One empty halfword-address tie and saved-register $17 binding |
| A | `func_801B5644` | 348 | None |
| A | `func_801A93CC` | 372 | None |
| C | `func_801A9A08` | 384 | One empty captured-three-byte input and measured 24 unused local bytes; original purpose unknown |
| C | `func_801BAFBC` | 388 | None |
| B | `func_801BB200` | 396 | One invariant map-offset $6 binding |
| B | `func_801C3EBC` | 416 | None |
| B | `func_80192174` | 448 | Measured 120-byte unused-frame output constraint; original padding purpose unknown |
| B | `func_8019DDA8` | 456 | Two empty lower-bound scheduling ties |
| C | `func_8019E25C` | 400 | One empty raw-mode tie retains measured byte re-narrowing |
| C | `func_8019D75C` | 424 | Four empty constant/argument scheduling ties |
| A | `func_80196C98` | 388 | Five empty constraints, packet $4/selector $19 bindings, ordered volatile halfword views and absolute scratch-byte access view |
| C | `func_8019CB54` | 440 | Four short-lived bindings, one empty word tie, two captured-byte inputs and eight unused frame bytes |
| B | `func_801A8124` | 468 | Base s0 binding, two empty setup ties and one late v0 clobber |
| B | `func_801BA614` | 472 | None |
| C | `func_801A6FC8` | 448 | One counter s0 binding |
| A | `func_801BFB58` | 388 | Two empty ties and mapped $2/branch-local address $3 bindings |
| A | `func_801D0A20` | 400 | None |
| C | `func_80196E1C` | 460 | Two entry bindings and seven empty constraints |
| B | `func_801CB14C` | 488 | Seven scoped bindings and five empty constraints, individually minimized |
| B | `func_801CAAFC` | 500 | None |
| C | `func_801C16DC` | 464 | One limit v0 binding |
| C | `func_801CAF78` | 468 | Three scoped bindings and two empty base inputs |
| C | `func_801C0808` | 336 | None; five generated table words retain established slot |
| A | `func_801A8848` | 424 | Three scoped bindings and five empty ties |
| B | `func_801C49F0` | 516 | Next-counter v0 binding and one old-color retention input |
| A | `func_801B8814` | 444 | Two empty offset ties |
| B | `func_801B015C` | 524 | Loop s7 and shared-start v0 bindings plus one empty start/count tie |
| B | `func_801A5A14` | 372 | None; five generated table words retain original slot |
| A | `func_8019689C` | 452 | Two bindings and five empty constraints; ordered halfword and absolute scratch-byte views |
| C | `func_8019C43C` | 480 | Four scoped bindings and three empty barriers; -fno-schedule-insns |
| B | `func_801A5B88` | 372 | None |
| A | `func_801C84E8` | 460 | Four empty constraints; no bindings |
| A | `func_801A7188` | 468 | Two bindings; no empty constraints |
| B | `func_801AB6E8` | 552 | Two bindings and two empty constraints |
| C | `func_80198E20` | 496 | Eight-byte frame reservation and one empty output constraint |
| A | `func_801AB510` | 472 | None |
| B | `func_801AFF1C` | 576 | None |
| C | `func_801C4DE8` | 504 | None |
| C | `func_801979D8` | 520 | Two scoped bindings and two empty constraints |
| A | `func_801C3888` | 484 | Two scoped bindings and six empty constraints |
| B | `func_801AA524` | 596 | Three bindings, eight address ties and one raw-shift liveness input |
| A | `func_801BD6EC` | 508 | Two empty setup constraints; no bindings |
| A | `func_801C96DC` | 540 | none; default gcc281 profile |
| A | `func_8019D904` | 568 | one product/remainder v1 binding |
| A | `func_801C4BF4` | 500 | one a0 binding and six empty constraint sites |
| C | `func_801BE77C` | 628 | two scoped argument bindings and one empty constraint |
| C | `func_80196A60` | 568 | three bindings, six empty constraints; -fno-cse-follow-jumps |
| A | `func_801B7B00` | 580 | seven bindings and two empty constraints |
| C | `func_801A5FA4` | 600 | four scoped argument bindings and three empty constraints |
| A | `func_80191E80` | 756 | three bindings and four empty constraints |
| C | `func_801BC968` | 576 | two register bindings; no empty constraints |

Observed access patterns are not recovered original gameplay names or complete
types. Call order, signed arithmetic, narrow wrapping, alias-sensitive rereads,
sparse cases and negative inputs remain as measured; no new bounds, timeout
or null guards are introduced. Original assembly, reference hashes, linker
placement and generated instructions are not patched.

The paired word-bit helpers retain byte-narrowed variable shift counts. Their
matching PS1 code has measured MIPS low-five-bit shift behavior, but C shifts
by 32 or more are not portable. A future native implementation must explicitly
mask the count rather than assume an unproved caller bound. `func_801CB334`
retains the original miss fallthrough (the register holds zero), without inventing
a source-level return contract. Frame reservations have unknown original purposes
and introduce no accesses. Empty constraints and bindings retain measured compiler
choices and emit no instructions themselves.

The two-save near-match for `func_80196FE8` remains parked, private
and uncounted. `func_801BE77C` replaces it within the same 90-function scope.
Its caller-side argument view preserves ten supplied words followed by nine
for `func_80196800`; the observed callee consumes nine. The extra first-call
word is retained without claiming a recovered original prototype.

`func_801AA524` likewise retains an unmasked raw-word variable shift.
The retail SLLV uses the low five count bits; a general 0..31 caller bound
and the original prototype are unproved. Matching C is not portable for
large counts; a native implementation needs explicit count masking. Its
alternative byte path preserves four selector rereads after stores.

`func_801A9A08` uses a word-return access view with an unknown original
prototype. Six observed callers discard its status. Unsupported flags leave
`v0=0x4040` in the retail binary, but its matching C fallthrough is not a
portable return contract; native porting must resolve this explicitly.

Each source passes full overlay and resident checks before its worker commit.
The integrator reviews each source and independently links and hashes the complete
SELECT image after every integration. Routine local checks may reuse verbatim DOS
compiler assembly through an ignored content-addressed cache keyed by exact
preprocessed input, flags and compiler/runtime/wrapper bytes; preprocessing,
conversion, assembly, linking and complete retail-byte comparison still run.
Cache tests cover invalidation and corruption; cached baseline output was checked
against an independent uncached build. This private optimization is not a
replacement for the public verifier: every publication checkpoint reruns the
original uncached all-five-overlay build, the resident build, all nine SDK-free
tooling tests, counts and privacy checks. All retail hashes and sizes remain
unchanged. Only verified checkpoints are reported, not all 90 targets in advance.

### Second ninety-function run: verified checkpoints

Starting at `1587001` with 228 matching C functions, three isolated
workers have exclusive 30-target queues on `decomp/next-ninety-a`,
`decomp/next-ninety-b` and `decomp/next-ninety-c`. These additions
are separate from the preceding ninety-function run. Targets include ENTER,
SELFORM and SELECT. Workers proceed after individual verified commits without
a global round barrier; integration preserves each worker's commit order.
Each publication groups 15 accepted matches across the workers. Unresolved
private probes do not count as recovered C.

| Checkpoint | New exact functions in this run | Total matching C | Assembly-backed confirmed overlay functions |
|---|---:|---:|---:|
| 1 | 15 | 243 | 169 |
| 2 | 30 | 258 | 154 |
| 3 | 45 | 273 | 139 |

45 verified additions cover 20,936 matching code bytes.
Remaining planned targets are not claimed as completed.

| Worker | Overlay | Function | Bytes | Observed behavior | Source compiler aids |
|---|---|---|---:|---|---|
| A | ENTER | `func_8018F88C` | 72 | Scratch byte selects one of two ordered call paths | None; gcc272-dos |
| B | SELFORM | `func_8012051C` | 128 | Side-selected scratch index and paired record-byte stores | None; gcc272-dos |
| B | SELFORM | `func_8012199C` | 144 | XOR-selected record and ordered adjusted halfword pair | None; gcc272-dos |
| A | ENTER | `func_8018E490` | 80 | 22 rows with byte counter and ordered selector-dependent byte pair | Two empty setup inputs; gcc272-dos -fno-strength-reduce |
| C | SELECT | `func_801CF760` | 440 | Status dispatch, ordered late configuration rereads and scratch reset | Scratch s0 binding; gcc272-dos; six-word owned table |
| A | ENTER | `func_8018EB00` | 84 | Ordered mixed-width global stores and descriptor call | None; gcc272-dos |
| A | ENTER | `func_8018F8D4` | 104 | Ordered paired scratch-byte calls with selector reread | None; gcc272-dos |
| B | SELFORM | `func_80120974` | 228 | Descriptor reset, conditional signed-halfword submission and ordered final call | Two scoped bindings and two empty constraints; gcc272-dos |
| B | SELFORM | `func_8012059C` | 252 | Four aliased index/table rereads, signed shifts and byte stores | One empty word input; natural 48-byte frame; gcc272-dos |
| A | ENTER | `func_8018EA5C` | 164 | Ordered global setup and sparse mode-dependent call | None; gcc272-dos |
| B | SELFORM | `func_8012153C` | 308 | Ordered helper/callback sequence, entry update and 11 byte-counted records | Reused a0 call-ID binding and two empty constraints; gcc272-dos |
| C | SELECT | `func_801CB37C` | 500 | Six byte-counted dual dispatches with independent selector/halfword rereads | Destination v1 binding and two empty constraints; gcc272-dos; two six-word tables |
| B | SELECT | `func_801960E0` | 516 | Signed-halfword cycle and ordered mixed-width descriptor; unsupported mode uninitialized | None; gcc272-dos; five-word owned table |
| A | ENTER | `func_8018EB54` | 212 | Ordered lookups, cross-call field capture and unsigned quotient/remainder byte setup | Prefix s1 binding and two empty constraints; gcc272-dos |
| B | SELFORM | `func_80120314` | 520 | Mode/sign-selected byte export after bounded halfword-distance square | One empty signed-distance tie; gcc272-dos |
| C | SELECT | `func_801B190C` | 512 | Sparse state dispatcher with captured flags, ordered callbacks and late counters | Scoped counter v0 binding and two empty constraints; gcc272-dos; 31-word table |
| C | SELECT | `func_801BFEDC` | 536 | Ordered byte-state resets, shared counter increment and callback-gated late rereads | Next v0 binding and one empty memory barrier; gcc272-dos; five-word table |
| A | ENTER | `func_8018E8D0` | 308 | Two ordered packet/callback rows, byte triple and four halfword triples | Five scoped bindings, three empty sites and ordered halfword views; gcc272-dos -fno-strength-reduce |
| B | SELFORM | `func_80121A2C` | 600 | Halfword-indexed split search, alias-sensitive flag rereads and low-byte count submission | Seven scoped binding sites and five empty constraints; gcc272-dos |
| A | ENTER | `func_8018A6C0` | 260 | 22 indexed rows with mode-selected byte stores and wrapped halfword range tests | None; gcc272-dos -fforce-addr; five-word table |
| B | SELECT | `func_801A8F00` | 616 | Low-nibble branch selects two or four ordered 17-word descriptor calls | None; gcc272-dos |
| C | SELECT | `func_801A5508` | 604 | 32-entry signed-layout arithmetic, ordered drawing calls and late mapped-byte rereads | Eleven scoped binding sites and three empty inputs; gcc272-dos |
| B | SELECT | `func_8019DB3C` | 620 | Captured descriptor key, signed byte-centering division and four aliased decimal-byte rereads | Two scoped a0 bindings and one empty identity; gcc272-dos |
| A | ENTER | `func_8018CB78` | 316 | Signed halfword scratch setup, captured row/bank offsets and two aliased low-24-bit link updates | Eight scoped bindings, two empty uses and measured eight-byte reserve; gcc272-dos -fno-schedule-insns |
| B | SELECT | `func_801C19EC` | 624 | Mode-selected halfword initialization, two unbounded byte searches, wrapped signed clamps and conditional callback | Nine scoped binding sites and four empty uses; gcc272-dos; natural 24-byte frame |
| A | ENTER | `func_8018CA38` | 320 | Captured signed record fields, bank/row helper pointers and aliased low-24-bit link rereads | Seven scoped bindings and measured eight-byte reserve; gcc272-dos -fno-schedule-insns; no empty constraints |
| C | SELECT | `func_801BF0F4` | 616 | 16-column status dispatch, post-call flag/limit rereads and two late halfword-based submissions preserving extra caller word | One empty late-limit input; gcc272-dos; natural 80-byte frame; no bindings |
| C | SELECT | `func_801A5764` | 688 | Eight measured 36-byte records, 64 ordered signed halfword stores and two raw-word mode calls | gcc272-dos; natural C without bindings, empty constraints, frame reserves or tables |
| B | SELECT | `func_801AE020` | 628 | 64 ten-byte records with signed movement, wrapped halfword rereads, eight ordered reset calls and two post-call reloaded submissions | Four scoped bindings and three empty identities; gcc272-dos; natural 48-byte frame |
| A | ENTER | `func_8018CCB4` | 396 | Four ordered record/scratch updates and helper submissions followed by aliased low-24-bit links with repeated scratch reads | Six scoped bindings, actual volatile scalar spill; gcc272-dos -fno-schedule-insns; no empties or extra frame reserve |
| B | SELECT | `func_801A85B0` | 664 | Eight descriptor styles with signed coordinates, late selector byte and raw word-sized field arguments preserving callee narrowing | Natural gcc272-dos C; one independently owned ten-word switch table; no allocation or frame aids |
| B | SELECT | `func_801BCCD8` | 680 | Eight indexed pairs, byte-map exclusion, alias-sensitive scratch exports and late post-callback index increments | Two scoped v0 bindings and one empty memory barrier; gcc272-dos; natural 48-byte frame |
| A | ENTER | `func_8018AE8C` | 404 | Eight 1000-byte records with mode-selected lookup, ordered callback and mixed-width initialization preserving overwritten words | Two scoped bindings and one paired constant identity; gcc272-dos -fno-strength-reduce; ordered volatile views and observed unused pointer local |
| A | ENTER | `func_8018C898` | 416 | Scratch-bank selection, eight mixed-width transformations and aligned eight-word copies, then a separate eight-record callback loop | One saved counter binding and one empty identity; gcc272-dos -fno-strength-reduce; natural 40-byte frame |
| B | SELECT | `func_801BD3F0` | 688 | Clear paired sixteen-word tables, then inclusive mode and eight-pair loops with byte-narrow helper arguments, ordered word bit updates, raw indices on default and late mode-limit rereads | Three empty constraints; no fixed bindings or reserved frame; gcc272-dos basic O2/G0 |
| C | SELECT | `func_80197200` | 624 | Ordered color writes and special glyph or one/two-digit drawing, preserving signed halfword coordinates, raw-number byte wrap and late submission-index rereads | Eleven scoped binding sites and eight empty constraints; fifth-argument volatile local scheduling view; natural frame; gcc272-dos basic O2/G0 |
| A | ENTER | `func_8018BE20` | 584 | Five-state record dispatcher preserving callback order, signed halfword checks, late state rereads, ignored helper return and explicit no-op endpoint | One case-zero counter binding; volatile post-call word reload; no empty constraints or reserved frame; gcc272-dos -fno-thread-jumps; original five-word jump table |
| C | SELECT | `func_801A5CFC` | 680 | Byte phase/step clamp and wrap followed by raw mode dispatch, four side-indexed color records with phase captures preserving alias-sensitive store order | Three scoped constant bindings only; zero empty constraints or frame aids; basic gcc272-dos O2/G0; owned five-word jump table |
| C | SELECT | `func_8018E720` | 628 | Mode-dependent descriptor calls or helper status, unsigned-halfword coordinate update and byte-index pointer comparison with late reread; preserve explicitly unknown return on modes 0/3/default | One scoped offset binding; no empty constraints, volatile accesses or frame aids; basic gcc272-dos O2/G0 |
| B | SELFORM | `func_80120698` | 732 | Publish packed record after two halfword reads, conditional signed-coordinate callbacks, late row lookup and seven ordered mixed-width packet field updates preserving aliases | One saved index binding only; zero empty constraints or reserved frame; basic gcc272-dos O2/G0 |
| C | SELECT | `func_801AB290` | 640 | Three ordered signed random results, one captured flags word, mode/map overrides, low-byte side state bits and ordered callbacks with byte/halfword resets | One state-pointer binding; no empty constraints or frame aids; scalar scratch access views allocate no storage; basic gcc272-dos O2/G0 |
| A | ENTER | `func_8018FB8C` | 592 | Wrapped timer/stage thresholds and opposing record-bank callbacks, ordered event callbacks at 360, post-call timer reread and late 780-event selection | Four scoped call-argument bindings and three empty constraints; no volatile accesses or frame aids; basic gcc272-dos O2/G0 |
| B | SELECT | `func_801A89F0` | 736 | Capped unsigned halfword decimal conversion, centered halfword-width arithmetic and raw-word right alignment with distinct ordered glyph callbacks | gcc272-dos basic; four measured bindings; two empty selector constraints; natural 80-byte frame; no tables/symbols |
| C | SELECT | `func_801B57A0` | 732 | Eight state actions, ordered reset captures and three node-byte writes with late mode/counter rereads across callbacks | gcc272-dos O2/G0; zero bindings; one empty memory-output retaining measured eight unused bytes in 32-byte frame, unknown purpose; owned eight-word jtbl_8018AD84; no added symbols |
| B | SELECT | `func_80194790` | 740 | Two ordered clear/sync sequences, 58-item byte stream with single-byte skips, fifteen-row source copy or clearing, bit expansion and mixed-width recompression before upload | gcc272-dos O2/G0; four scoped binding sites; zero empty constraints or frame reservation; actual 128+96 byte buffers yield 264-byte frame; no symbols/tables |

Names, original prototypes, full data layouts and gameplay interpretations
remain uncertain. Sources preserve measured widths, arithmetic, alias-sensitive
reloads and call order, without invented guards or portable return contracts.
Matching compiler constraints emit no instructions themselves; unused frame
reservations have unknown original purposes. Original assembly, reference hashes,
linker placement and generated instructions are not patched.

Each worker verifies the complete affected overlay, all five confirmed
overlays and the resident executable before committing. The integrator reviews
each source and independently rebuilds all five complete overlay images after
every integration. Routine checks may use the previously validated ignored
content-addressed cache of verbatim DOS compiler assembly; preprocessing,
conversion, assembly, linking and complete original-byte comparison still run.
Every publication checkpoint reruns the original uncached all-five-overlay
build, the resident build, all twelve SDK-free tooling tests, actual source counts
and privacy checks. Original hashes and sizes remain unchanged. This is matching
PS1-source progress, not a completed native PC port or whole-game percentage.

The behavioral descriptions below are starting hypotheses, not permission to
rename functions or symbols without additional evidence.

### Agent 1: record reordering

Recover `func_801AB510`. It appears to reorder 32 records of 36 bytes, first
copying through `D_801D81E0`, then copying back to the table at
`D_800FF748 + 0x8F24`. The byte array supplied by the caller determines order.

The original contains aligned and unaligned block-copy paths. Structure
assignment is a promising source shape. Earlier experiments recovered the
logic but did not match register allocation and second-loop optimization;
there is no accepted C implementation yet. Do not assume those experiments
prove the original source form or compiler profile.

### Agent 2: statistics table

Recover `func_801AF198`. It appears to populate 32 ten-byte records from
descriptor pairs and statistics. Inspect the exact accesses to `D_801DA620`,
`D_801D86F2`, and the table based at `D_800FF748`.

Pay particular attention to integer division, signedness, aliased memory
reloads, record stride, and all mode-dependent branches. Determine the actual
semantics from assembly and callers before introducing descriptive names.

### Agent 3: configuration-data copying

Recover `func_801CF964`. It appears to transfer halfword/configuration data
between scratchpad memory and tables based at `D_800FF748` and `D_8010A5A8`.

Preserve access widths, signedness, ordering, and possible aliasing. Do not
replace scratchpad accesses with host-PC behavior in the matching lane.

## Worker instructions

Treat the assignment number supplied by the user as your ownership boundary.
Read `CONTRIBUTING.md`, `docs/WORKFLOW.md`, `README.md`, and applicable
`AGENTS.md` instructions before editing. Do not spawn additional agents.

1. Use a separate Git worktree and the assigned branch. If this task is already
   in a suitable isolated worktree, reuse it. Otherwise use the app's managed
   worktree tools where available, inspect the returned checkout, and give its
   branch the assigned name. Work only inside that checkout. Never reset an
   existing branch or overwrite another worker's checkout to obtain isolation.
2. Start from the agreed baseline, initially `01fb07d`, and record the full
   commit ID. If the target already has matching C, report it instead of
   duplicating work. Do not change the assignment on your own.
3. Each worktree needs its own ignored `extracted/` and `build/` directories.
   New worktrees do not inherit ignored files. Copy the legally obtained
   reference inputs from the user's existing checkout when available; verify
   their hashes. Do not share a writable build directory between workers.
4. The installed compilers and `maspsx` can be shared read-only through explicit
   command-line paths. Discover local paths without putting machine-specific
   paths into tracked files. Do not alter or install shared tools.
5. Run a baseline SELECT build before editing. If inputs or tools are missing,
   inspect the existing project setup and report the precise missing dependency
   if you cannot resolve it safely. Do not launch an emulator or ask the user to
   run the game unless matching genuinely needs new runtime evidence.
6. Implement only your assigned C function. Other files and caller assembly may
   be read for evidence, but neighboring functions are not additional targets.
7. Make the smallest necessary supporting edits. A private-branch change to
   `PER_FUNC_COMPILERS` / `PER_FUNC_CC1_FLAGS` in `tools_src/build_overlay.py`
   is allowed only for your assigned function. Symbol-file additions must be
   justified by existing addresses and be additive. Prefer local types and
   declarations in the new C file when shared header changes are unnecessary.
8. Do not change original assembly, reference binaries, expected hashes,
   linker placement, or comparison checks to manufacture a match. A correct
   size or equivalent behavior is not a match: the complete linked SELECT
   binary must be byte-identical to the reference.
9. Empty compiler barriers and register bindings are acceptable matching
   techniques when supported by the instruction diff. Explain them briefly.
   Do not substitute the original function with an inline-assembly body and
   count that as recovered C.
10. Leave progress counts, shared documentation, global refactors, and native
    port work to the integrating agent. Do not edit this assignment document.
11. Once matching, run all five overlay checks and the resident build. Inspect
    the diff and staged files for game media, proprietary tools, private paths,
    credentials, and unrelated changes. Stage explicit files, not `git add .`.
12. Commit the verified result on your assigned branch. Use an address-based
    message such as `select: match func_801AB510 record reorder`. Do not push,
    merge, cherry-pick other workers, or modify `master`. Report the commit ID
    for integration.

If you cannot reach an exact match, keep speculative C and notes under your
worktree's ignored `build/` directory, remove nonmatching substitutions from
the active source path, and restore a passing baseline using targeted edits.
Report what remains different. Do not claim success or commit an active
nonmatching C replacement. Do not discard unrelated user changes.

## Build commands

With the expected tools installed under this worktree's ignored `tools/`:

```powershell
py -B tools_src\build_overlay.py SELECT
py -B tools_src\build_overlay.py --all
py -B tools_src\build.py
```

For shared, read-only tool installations, replace the example paths with the
actual local paths and use these options:

```powershell
py -B tools_src\build_overlay.py SELECT --bin-dir 'C:\path\to\mips\bin' --psyq-bin 'C:\path\to\psyq45\BIN' --maspsx 'C:\path\to\maspsx\maspsx.py'
py -B tools_src\build_overlay.py --all --bin-dir 'C:\path\to\mips\bin' --psyq-bin 'C:\path\to\psyq45\BIN' --maspsx 'C:\path\to\maspsx\maspsx.py'
py -B tools_src\build.py --bin-dir 'C:\path\to\mips\bin'
```

Use a working Python environment with the project's dependencies installed.
If a worktree has no local environment, an existing interpreter may be invoked
by its absolute path; do not modify another worker's environment while it runs.
Run commands from your worktree root. Check process exit status as well as the
printed hashes; PowerShell output filters can otherwise obscure failures.

For functions using the DOS compiler profile, also supply `--dosbox` and
optionally `--dos-cc1` when those tools are not at the default local paths.
See [compiler profiles](COMPILER_PROFILES.md) for setup and wrapper checks.

Expected SELECT SHA-1: `9555fd6506c2ecdab32c528683cd262c59d558d8`
(335,578 bytes).

Expected resident SHA-1: `7e480656a295dced6ec187286773ab897651e995`
(882,688 bytes).

Generated compiler assembly is available at
`build/overlays/select/compiled/<function>.s`; compare it against your assigned
reference function while iterating. Expected hashes for the other overlays
are declared in `tools_src/build_overlay.py` and must not be changed.

## Required worker handoff

Return the following in your final response:

- Assignment number, target function, worktree path, branch, and base commit.
- Verified match or explicitly incomplete result, with original function size.
- Exact SELECT SHA-1/size and results of all-overlay and resident verification.
- Changed files, compiler flags, any symbol additions, and remaining uncertainty
  about the function's meaning.
- Commit ID for a verified result, or ignored draft/notes paths for incomplete
  work. Confirm that you did not push or change `master`.

## Integration instructions

Only the integrating agent should combine the results. Workers do not need to
wait for each other to compile or commit in isolated worktrees.

For a multi-target queue, explicitly assign every exclusive function and its
order up front. Each worker completes, verifies and commits one target,
reports the result, then proceeds directly to the next in the same worktree.
Use a separate commit for each exact match. Preserve incomplete research under
ignored `build/` paths and remove its active substitution before proceeding.
The integrating agent must preserve each worker's commit order: later results
were verified on top of that worker's earlier accepted results. Other workers
may still be on their first target; there is no global batch barrier.

1. Review each worker's diff and test evidence. Require the same baseline or
   account explicitly for differences before integration.
2. Integrate one verified commit at a time. Shared flag/symbol files can still
   conflict even though the C files differ. Resolve those conflicts by retaining
   each justified per-function addition; never accept an entire side blindly.
3. Rebuild SELECT after every integration. After combining the accepted work,
   rebuild all five overlays and the resident executable again. Independent
   matches do not automatically prove the combined build matches.
4. Count the actual accepted C files and update `README.md` and
   `config/overlays/README.md` once. Add only verified new matches to the agreed
   baseline count; do not predeclare that all assignments will succeed.
5. Review the final staged changes and get the user's authorization for any
   remote publishing not already authorized. Keep the integration order serial.
6. Keep worktrees until their commits and any useful ignored research have been
   preserved. Archive managed worktrees through the app when cleanup is requested;
   do not delete a checkout containing the only copy of unfinished research.

## Short prompts to start the workers

Provide this document's contents, or its accessible absolute path, together
with exactly one of these prompts in each separate agent task:

```text
Follow PARALLEL_DECOMP.md as Agent 1. Work only on func_801AB510 in an isolated
worktree on decomp/select-record-reorder. Continue until you have an exact match
or a specific unresolved matching problem. Verify, commit only a passing match,
and return the required handoff. Do not push or modify master.
```

```text
Follow PARALLEL_DECOMP.md as Agent 2. Work only on func_801AF198 in an isolated
worktree on decomp/select-statistics-table. Continue until you have an exact match
or a specific unresolved matching problem. Verify, commit only a passing match,
and return the required handoff. Do not push or modify master.
```

```text
Follow PARALLEL_DECOMP.md as Agent 3. Work only on func_801CF964 in an isolated
worktree on decomp/select-config-copy. Continue until you have an exact match
or a specific unresolved matching problem. Verify, commit only a passing match,
and return the required handoff. Do not push or modify master.
```
