# Parallel decompilation handoff

Use this document with independent agents working on this same game.
Give each agent an exclusive assignment or ordered queue. The three-worker
tables below are historical examples, not current reservations. Do not run
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
SELFORM, SELECT and UNIFORM. Workers proceed after individual verified commits without
a global round barrier; integration preserves each worker's commit order.
Each publication groups 15 accepted matches across the workers. Unresolved
private probes do not count as recovered C.

| Checkpoint | New exact functions in this run | Total matching C | Assembly-backed confirmed overlay functions |
|---|---:|---:|---:|
| 1 | 15 | 243 | 169 |
| 2 | 30 | 258 | 154 |
| 3 | 45 | 273 | 139 |
| 4 | 60 | 288 | 124 |
| 5 | 75 | 303 | 109 |
| 6 | 90 | 318 | 94 |

90 verified additions cover 63,884 matching code bytes.
All 90 requested additions in this second run are verified.

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
| A | ENTER | `func_80189DB4` | 596 | Updates twenty-two 1,000-byte records through signed random/remainder calculations and two ordered callback paths, retaining mixed-width writes, byte rereads and partially initialized local-table updates. | gcc272-dos O2/G0/fno-strength-reduce; three scoped constant bindings and five empty constraints; two measured volatile byte reload views; natural 88-byte frame with six halfwords, only the last two initialized; no new symbols or tables |
| C | SELECT | `func_801BA8EC` | 724 | Captured child before recursion, late node/mode/map comparisons, signed pulse-channel shifts and narrowed colors, three coordinate submissions with preserved signed child thresholds | gcc272-dos O2/G0; six scoped binding sites and four empty constraints; no clobbers/reserved frame/symbols/tables |
| B | SELECT | `func_8019C85C` | 760 | One captured shifted halfword, four independently narrowed helper results and eight ordered seventeen-word descriptor submissions with late argument-byte rereads | Natural gcc272-dos O2/G0; zero bindings/empty constraints/reserved frame/symbols/tables |
| C | SELECT | `func_801B7D44` | 740 | Clears 28 descending 45-byte records, updates four descriptor rows, emits ordered glyph callbacks and appends control bytes with alias-sensitive map rereads. | gcc272-dos -quiet -O2 -G0; three scoped bindings and two empty input constraints; no frame reservation, table or symbol additions |
| C | SELECT | `func_801A2CA0` | 752 | Captures two classifications, handles category-six field clears or four descriptor callbacks, and retains table lookup order and the retail unsupported-mode residue path. | basic gcc272-dos -quiet -O2 -G0; natural C with zero matching aids |
| A | SELECT | `func_801A77A0` | 684 | Copies an eight-byte prefix, configures two descriptors and performs ordered packet updates, halfword table lookups and callbacks for two captured selectors. | basic gcc272-dos -quiet -O2 -G0; six bindings and two empty constraints; no clobbers, volatile accesses or frame reservation |
| C | SELECT | `func_8018DB58` | 804 | Dispatches a captured mode byte through the original sparse cases, including the ordered 6-to-16 store/fallthrough and predicate-gated reset for mode 255. | basic gcc272-dos -quiet -O2 -G0; naturally matching sparse switch, zero aids |
| C | SELECT | `func_801A735C` | 844 | Updates paired descriptors from a signed value and copies selected bytes to one or two captured destinations, preserving independent mode reads and alias-sensitive byte order. | basic gcc272-dos -quiet -O2 -G0; four scoped register bindings and three empty constraints, natural 96-byte frame |
| A | SELECT | `func_801A2198` | 732 | Selects mapped rows using the original byte-wrapped status scans and helper-driven retries, preserving selector replacement and the initial mapping read before clearing the index. | basic gcc272-dos -quiet -O2 -G0; one mask binding and two branch-local empty base identities, natural 48-byte frame |
| A | SELECT | `func_801B50F8` | 740 | Writes two descriptor field groups and issues five ordered callbacks, retaining the original partial overwrite sets and signed-halfword/byte store widths. | basic gcc272-dos -quiet -O2 -G0; one second-pointer binding, zero empty constraints, natural 56-byte frame |
| B | SELECT | `func_801A2610` | 1004 | Mode dispatch, ordered partial descriptor writes, four interpolation callbacks, and late scratch/flag rereads. | gcc272-dos; one persistent scratch $22 binding and four measured empty constraints; natural 104-byte frame; six-entry original jump table |
| A | SELECT | `func_801BDB74` | 744 | Eight conditional rows with ordered six numeric-descriptor calls and one packet callback, retaining control rereads and signed high-half coordinates. | basic gcc272-dos; zero bindings and one measured step input; natural 96-byte frame with real spills |
| B | SELECT | `func_801C88BC` | 1016 | Five unconditional descriptor submissions followed by byte-mode/selection-specific submissions with original sparse category ranges. | natural basic gcc272-dos; zero bindings, empty constraints, frame reserve, tables, or symbols |
| A | SELECT | `func_801B7804` | 764 | Five-case state dispatch with original descriptor-byte updates, signed guards and late unsigned-halfword/event rereads. | basic gcc272-dos; one saved-base binding; natural 32-byte frame; original 21-entry switch table |
| A | ENTER | `func_8018BB0C` | 788 | Eight signed-angle cases preserve division toward zero, byte-wrapped offsets, ordered helper calls and post-call halfword rereads. | basic gcc272-dos; one saved angle binding and eight branch-local identities; natural 40-byte frame; original eight-entry jump table |
| B | SELECT | `func_801D03EC` | 1076 | Ordered transfer-thunk calls, post-first-call cursor capture, checksum-byte accumulation and original signed block rounding. | gcc272-dos; one checksum binding, one cursor identity and measured 128-byte unused reservation; original 168-byte frame; four additive field access aliases |
| A | ENTER | `func_8018A3A8` | 792 | Twenty-three record updates preserve three states, signed random adjustments, late field rereads and word-wrapped squared-distance comparison. | gcc272-dos -fno-strength-reduce; three scoped bindings; zero empty constraints or reservation; natural 48-byte frame |
| B | SELECT | `func_801A4DA8` | 992 | Two conditional paired submissions preserve captured first selection, special value 43, and late table and scratch rereads. | basic gcc272-dos; two comparison bindings and two empty constraints; neutral two-byte table access view; natural 72-byte frame |
| C | SELECT | `func_8018DF30` | 912 | Captured key and three bytes feed seven scratch-state paths, ordered callback submissions and six stores; late nibble/bit-six dispatch follows callbacks. | basic gcc272-dos; six binding sites and four empty constraints; natural 120-byte frame; seven-entry owned jump table |
| C | SELECT | `func_801CFB84` | 948 | Ordered two-row comparisons and independent field comparisons retain initial changed-flag store, captured-flag failures and late-flag failures. | basic gcc272-dos; one base binding and four 32-bit address access views; zero empty constraints or frame aid |
| B | SELECT | `func_801D0C80` | 1164 | Status-dependent transfers, sparse mode conversion and ordered signed clamps precede late field callbacks and the original word result. | basic gcc272-dos; one saved cursor binding and one post-transfer identity; natural 48-byte frame; zero tables or reservations |
| C | SELECT | `func_80194394` | 1020 | Ordered record scanning and callback dispatch retain late selector, state and argument reloads. | basic gcc272-dos; natural 48-byte frame, no bindings or barriers; owned 138-entry dispatch table |
| B | SELECT | `func_801CFF38` | 1204 | Thirty-eight ordered transfer calls, signed clamp rereads, flag-store/read/merge and signed128-byte rounding retain the original word result. | basic gcc272-dos; two halfword-pointer bindings, post-transfer cursor identity and documented measured24-byte unused frame reservation |
| C | SELECT | `func_801BA15C` | 1032 | Three mode-selected pointer-table passes with signed word counters, late mode/node/coordinate/scratch rereads and status-dependent callbacks. Retains observed uninitialized s7 <10 tests and independent second/third gates. | gcc272-dos -quiet -O2 -G0; ten binding sites and eight empty scheduling/read/join constraints; measured 24-byte unused frame reservation (removal changes only 22 frame/save words); original local purpose unknown; uninitialized signed s7 target residue preserved explicitly, no native-C policy invented |
| B | SELECT | `func_801B347C` | 1124 | Mode-selected byte output stream with two late-mapped 36-byte record lookups, ordered output bytes and numeric helper calls. Retains all nonzero modes, byte-formal captures, alias-sensitive late field rereads and returned cursor advance. | gcc272-dos -quiet -O2 -G0; ten binding sites and five empty scheduling/alias/lifetime constraints; natural 56-byte frame, no reservation; four bindings and two identities jointly removed with exact bytes retained |
| A | SELECT | `func_801A5188` | 896 | Two eleven-record row passes or alternate forty-four-record stream, scratch descriptor updates and status-specific submission. Preserves second-row retained bias and all six repeated dim-color stores, late mapping/texture reads and callback order. | gcc272-dos -quiet -O2 -G0 -fno-schedule-insns; minimized 38 to14 bindings and27 to7 empty constraints; one measured volatile byte-load view and volatile word-store views, no extra accesses; natural56 frame/no reservation/no hard clobbers |
| B | SELECT | `func_801C52E4` | 1160 | Four-mode descriptor/counter transition with signed-halfword scaling, original runtime divide traps, stored unclamped counter comparisons after callbacks, late mode increment and word0/1 result. Unspecified descriptor bytes3..11 retain prior-stack contents as in original. | gcc272-dos -quiet -O2 -G0; two scoped binding sites and five empty capture/mask-order constraints minimized from independent root exact seed; natural104 frame/no reservation; measured89E8+1 field alias, no added data |
| C | SELECT | `func_801975B0` | 1064 | Builds descriptor fields from byte-wrapped character classes, retaining ordered palette rereads, unchecked byte-table lookups and raw coordinate captures. | basic gcc272-dos; six scoped binding sites and eight empty scheduling constraints; absolute scalar scratch access views; natural zero frame; no tables or new symbols |
| A | SELECT | `func_801C1208` | 1236 | Dispatches the independent selector through206 table entries, preserving ordered callbacks, partial resets, mapped-row lookups and late state-byte rereads. | basic gcc272-dos; one v0 binding, eight empty memory constraints, two measured volatile byte access views; natural32-byte frame; original206-word jump table; no new symbols |
| C | SELECT | `func_801B8028` | 1064 | Nine ordered descriptor submissions, two independently reloaded signed-halfword marker tests and four paired 45-byte row submissions. | basic gcc272-dos; two scoped v0 bindings and two empty inputs; natural 112-byte frame; no table or symbol additions |
| A | SELECT | `func_801A6AE4` | 1252 | Captured byte published to two words, ordered descriptor loops and field updates, with late helper calls and independently narrowed classifier results. | basic gcc272-dos; zero bindings/empty constraints/frame reservation; six measured local volatile write views; natural 112-byte frame |
| A | ENTER | `func_8018F380` | 1292 | Nested random-gated callback sequences, late mode/flag dispatch and unbounded word-wrapped mapping search preserve signed division toward zero. | basic gcc272-dos; four scoped bindings and one empty memory constraint; natural 40-byte frame; existing six-halfword data remains unchanged |
| C | SELECT | `func_801B9144` | 1072 | Two descriptor rectangles and two encoded rows retain raw XOR status return, callback words, byte-only initial side narrowing and late scratch reloads. | basic gcc272-dos; 13 scoped bindings, seven empty constraints; natural112-byte frame; no new symbols, tables or frame reserves |
| B | SELECT | `func_801AC9D8` | 1108 | Paired mapped-byte captures, four-mode dispatcher and descriptor setup preserve byte exchange, independent callback reload increment and nonboolean late flag return. | gcc272-dos quiet/O2/G0; three short-lived bindings, two empty constraints; measured32-byte unused reservation restores original112-byte frame; same-symbol volatile store view; no symbols/tables |
| B | SELECT | `func_801A82F8` | 464 | Sentinel-terminated three-byte pair search and mode updates preserve first-match exit, unsupported-mode stop and independent final equality update with late selector rereads. | gcc272-dos quiet/O2/G0; six scoped bindings, three empty constraints; measuredwhollyunused32byteframe; no symbols/tables |
| A | SELECT | `func_801CADC4` | 436 | Six-byte indexed row swaps selected table or both when either selected byte is4/5; preserve allbytearguments, alias-safe load/store ordering and refresh on every path. | gcc272-dos quiet/O2/G0,21 binding declarations/11 empty input sites one memory qualified; natural24byteRAframe, no symbols/tables |
| A | SELECT | `func_801C9A18` | 1364 | Byte-wrapped glyph range dispatch and scratch descriptor fields; branch-specific full-word palette lookup/fallbacks, ordered byte/halfword/word stores and unchecked font access retained. | gcc272-dos quiet/O2/G0,8 scoped real-value bindings,zeroemptyconstraints/artificialframe/symbols/tables |
| C | SELECT | `func_801C59C4` | 1300 | Mode-dependent divisors and signed-halfword capped coordinates drive two fixed callback sequences, retaining repeated scratch reads and low-word signed division. | gcc272-dos defaultquiet/O2/G0 onlycompilerentry,zeroregisterbindings/emptyconstraints/frame reservation; actuallatevolatilebytescratchview no new symbols/tables |
| A | SELECT | `func_801BFCDC` | 184 | Capture table byte, signed%15 and/15 coordinate bytes, selector40 offset, ordered callback andbyte10 returnstore retained. | gcc272-dosquiet/O2/G0/fno-cse-skip-blocks;oneactualvalue7binding/twoemptyidentity-inputconstraints/onemeasuredvolatiletablebyteview;natural24frame,no metadataelse |
| C | SELECT | `func_8019D23C` | 1312 | Late byte mode selects fixed descriptor setup and two/three-iteration rows, preserving signed centering, mode11fallthrough and full supplied coordinatewords. | gcc272-dosdefaultquiet/O2/G0 compilerentryonly;zerobindings/constraints/frame/table/syms |
| C | SELECT | `func_80193990` | 1296 | Up-to-fifteen callback comparisons, signed-indexed byte tables and ordered twelve-stride record writes retain alias-sensitive reloads, unsigned divide trap and late key submission. | basic gcc272-dos quiet/O2/G0; zero bindings/reserves/tables/symbol additions; two measured empty identities and actual four-byte pointer-entry byte-address view; natural72frame |
| C | SELECT | `func_801BABC0` | 1020 | Eight ordered packet callbacks retain partial coordinate/byte updates and independent post-callback triplet captures, followed by the original nine-word descriptor submission. | basic gcc272-dos quiet/O2/G0; four bindings minimized13→4 (thirdpointer18, secondtriplet8/9/10); zero emptyconstraints/reserves/tables/symbol adds; scalar realbyteoffset accessaliases; natural72frame |
| C | SELECT | `func_801C4FE0` | 772 | Seven signed scaled geometry/color quotients retain byte clamp, unsigned raw-coordinate reconstruction and partially initialized descriptor submission. | basic gcc272-dos quiet/O2/G0; 21 genuine bindings cumulatively minimized27→21, one realheightnumerator input minimized3→1; natural88frame/naturalFP; zero reserve/clobber/volatile/table/symbol additions |
| C | SELECT | `func_801CBAB8` | 1324 | Five-state descriptor/coordinate transition preserves fallthrough, signed movement thresholds, byte and halfword wrapping, callback order and alias-sensitive restoration. | basic gcc272-dos quiet/O2/G0; two genuine scoped bindings minimized16→2; eleven empty sites minimized14→11, all memory clobbers removed; measured unused32B reservation restores96frame, removal only10framewords; original5word jtbl_8018D9F0 owned, no symbols. |
| B | UNIFORM | `func_80189720` | 1376 | Triplet-table local copy and ordered side selections, sentinel scan, sparse exclusions and wrapped byte encoding preserve selector rereads and signed helper results without added range guards. | Natural basic gcc272-dos quiet/O2/G0; zero bindings, empty constraints or frame reservations; original39- and42-word switch tables; natural1680-byte frame. |

Names, original prototypes, full data layouts and gameplay interpretations
remain uncertain. Sources preserve measured widths, arithmetic, alias-sensitive
reloads and call order, without invented guards or portable return contracts.
Matching compiler constraints emit no instructions themselves; unused frame
reservations have unknown original purposes. Original assembly, reference hashes,
linker placement and generated instructions are not patched.

Parked private probes and approved same-scope replacements:

- `func_8018E4E0` replaced by `func_801D03EC`; Original ENTER function contains handwritten GTE instructions; replace in same five-overlay scope with an ordinary C-suitable serialization routine.
- `func_801C4FE0` replaced by `func_801B38E0`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801B4C84` replaced by `func_801B347C`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_80121670` replaced by `func_801C52E4`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801211E8` replaced by `func_801D0C80`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801B30FC` replaced by `func_801CFF38`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801B9DCC` replaced by `func_801AF480`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_8018CE40` replaced by `func_801AC9D8`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_8018F93C` replaced by `func_8018F380`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801A49D4` replaced by `func_801AAE5C`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801C1D94` replaced by `func_801C1208`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801A39E4` replaced by `func_801A6AE4`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_8019659C` replaced by `func_8018ECB0`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_80195DE0` replaced by `func_80193990`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801A30F4` replaced by `func_801C59C4`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801C5ED8` replaced by `func_8019D23C`; Unresolved private compiler-layout probe remains assembly-backed and uncounted; coordinator reassigned an unrecovered routine within the existing overlay scope.
- `func_801AAE5C` replaced by `func_801BFCDC`; Bounded honest compiler-layout probes remained unmatched; preserved private drafts and original assembly, selected another unrecovered same-scope function.
- `func_801BCF80` replaced by `func_801CADC4`; Bounded honest compiler-layout probes remained unmatched; preserved private drafts and original assembly, selected another unrecovered same-scope function.
- `func_801AF480` replaced by `func_801A82F8`; Bounded honest compiler-layout probes remained unmatched; preserved private drafts and original assembly, selected another unrecovered same-scope function.
- `func_8018A008` replaced by `func_801C9A18`; Bounded honest compiler-layout probes remained unmatched; preserved private drafts and original assembly, selected another unrecovered same-scope function.
- `func_801B38E0` replaced by `func_801C3A6C`; Bounded honest compiler-layout probes remained unmatched; preserved private drafts and original assembly, selected another unrecovered same-scope function.
- `func_801C3A6C` replaced by `func_801A30F4`; Bounded entry scheduling probes remained unmatched; preserved private C3A6C draft and original assembly, reassigned an unrecovered same-overlay routine after the previous owner confirmed no active work.
- `func_801C8D00` replaced by `func_801C4FE0`; Bounded leaf control-flow/allocation probes remained unmatched; preserved private C8D00 drafts and original assembly, reassigned an unrecovered straight-line routine within the same overlay scope.
- `func_801A30F4` replaced by `func_8019CD0C`; Bounded two-loop call setup probes remained unmatched; preserved private A30F4 draft and original assembly and reassigned an unrecovered paired-submission routine within the same overlay scope.
- `func_8018ECB0` replaced by `func_801CBAB8`; Bounded private register-lifetime probes remained two instructions short of exact equality; preserved the 8ECB0 draft and original assembly uncounted and reassigned an unrecovered descriptor-transition routine in the same overlay.
- `func_8019CD0C` replaced by `func_80189720`; Bounded paired-submission scheduling probes remained unmatched; preserved the private 9CD0C drafts and assembly uncounted, replacing the final slot with an independently exact natural-C routine in the already-confirmed UNIFORM overlay.

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

### Single-function follow-up

After the second ninety-function run, `func_801C86B4` was recovered in
SELECT by one worker, without parallel agents. Its complete 520-byte body
matches SHA-1 `25323a64d160982fe873a09f9a7a1623c8774c28` using the
basic `gcc272-dos -quiet -O2 -G0` profile.

The source copies six twelve-byte records while preserving halfwords at offsets
6 and 8, then submits byte-table entries with signed index arithmetic. Counts
are reread after each copy and callback; the resource selector is reloaded after
each inner loop. Original unchecked template and byte-table accesses remain
unchecked. The twelve-byte aggregate and helper declarations are measured
access/ABI views, not recovered complete types or gameplay names.

No bindings, empty constraints, artificial frame reservations, new symbols or
jump-table ownership are needed. The measured 88-byte frame arises naturally.
The original uncached all-five-overlay build, resident build and all twelve
SDK-free tooling tests pass, with reference hashes and sizes unchanged.

This follow-up raises matching C to 319 functions, leaving 93 of the 412
confirmed overlay functions assembly-backed. The preceding ninety-function
checkpoint counts remain historical; whole-game totals and the native PC lane
are not claimed by this milestone.

### Second single-function follow-up

`func_80196FE8` was recovered in SELECT by one worker, without parallel
agents. Its complete 536-byte body matches SHA-1
`80e9cfce2c5e7e002a8eb3fa63d50d809f029760` using the basic
`gcc272-dos -quiet -O2 -G0` profile.

The source builds the observed scratch descriptor with two size-dependent
byte-coordinate formats and a classified palette lookup. The initial mode
read remains before the first palette-halfword store. An optional expanded
descriptor uses word-wrapped coordinates minus one, fresh width/height/mode
reads after the first submission, and a separately byte-narrowed selector.
Original unchecked table accesses and untouched descriptor fields remain
unchanged; complete layouts and helper APIs are not claimed.

Joint minimization leaves eight scoped bindings and ten empty compiler sites.
The sites preserve actual captures and load order without instructions or
extra accesses. No volatile access qualifiers, memory/register clobbers,
artificial frame reservation, new symbols or jump-table ownership remain.
The measured 48-byte frame arises naturally.

The original uncached all-five-overlay build, resident build and all twelve
SDK-free tooling tests pass, with reference hashes and sizes unchanged.
Matching C now covers 320 functions, leaving 92 of the 412 confirmed overlay
functions assembly-backed. Earlier checkpoint counts remain historical;
this is not a whole-game or native-PC completion claim.

### Six-worker run: verified checkpoint 1

Six isolated workers initially received four accepted-function slots each. Unmatched
attempts remain ignored research, not completed jobs; exclusive alternatives
can fill their outstanding slots. The integrator publishes every six accepted
matches after serial integration and an uncached full-image verification.

The first checkpoint adds six functions and 4,904 bytes of recovered code:

| Overlay | Function | Bytes | Function SHA-1 |
|---|---|---:|---|
| SELECT | `func_801A49D4` | 664 | `befbb8758bc108087a3107e1a7c3d990d5edbd5e` |
| ENTER | `func_8018F93C` | 592 | `3c61415e2647665489f1ae8b232d64ca811d2d45` |
| SELECT | `func_80195DE0` | 768 | `8aed2e5a43d60ff90a32c197c8cf658d61aa1e6f` |
| SELECT | `func_801A39E4` | 856 | `c10a4f0fed050c609dd56194603c72acaf919f00` |
| SELFORM | `func_80121670` | 812 | `20843e55f7a6f1aeca4dd40451dc5d628c071cd0` |
| SELECT | `func_801B06E0` | 1,212 | `39ba93ca31327968546f7e35910ce978318bf96c` |

All six use the basic `gcc272-dos -quiet -O2 -G0` profile. Joint minimization
leaves no bindings or empty sites in A49D4, two bindings/two sites in F93C,
six/four in 95DE0, six/two in A39E4, five/four in 21670, and two/two in B06E0.
The four ordered access qualifiers in 95DE0 retain measured reads, not a
hardware-volatility claim. A49D4 alone retains a measured unused 16-byte
reservation: removing it changes only two frame words, with original purpose
unknown. The other frames arise naturally. No memory/register clobbers,
instruction patches or added guards are used.

F93C preserves post-callback byte-table/selector reloads through a same-address
access view without allocating data. A39E4 retains callback-dependent retry
and state-clear paths; 21670 retains three conditional cursor submissions and
the 22-entry marker loop. B06E0 owns only the proved 31-word `jtbl_8018A5B4`,
including no-op cases, with adjacent padding unchanged. Complete object
layouts, helper APIs and original table meanings remain unknown.

The original uncached all-five-overlay build and resident build pass with all
reference hashes/sizes unchanged; all twelve SDK-free tooling tests pass.
The combined result is 326 matching C functions, leaving 86 of the 412
confirmed overlay functions assembly-backed. This is not a whole-game or
native-PC completion claim. Later checkpoints will record only accepted work.

### Six-worker run: verified checkpoint 2

The next six accepted functions recover another 8,568 bytes; the run now has
twelve accepted matches and 13,472 recovered code bytes above its baseline.

| Overlay | Function | Bytes | Function SHA-1 |
|---|---|---:|---|
| SELFORM | `func_801211E8` | 852 | `1590c526051f1ce41af9aaa19763f66c60e92998` |
| ENTER | `func_8018CE40` | 988 | `31a424113bb35b244f947be66659f3ef193d6319` |
| SELECT | `func_801AF938` | 1,428 | `c1a576685f34337ff333b1b4d8315e4fe1a6e309` |
| ENTER | `func_8018D21C` | 2,464 | `18f89512eb0b1da8b3580eccb85dd9b09b8b0252` |
| SELECT | `func_801CB570` | 1,352 | `f1434d9f7eb26fb0044f7e491d901e5822f54534` |
| SELECT | `func_801B0B9C` | 1,484 | `0e55840ebd41f08c60b7a7a14d38a50d226e3062` |

AF938 uses natural scalar C without bindings, empty sites, volatile views or
reservations. D21C retains one empty actual-value input and no bindings.
CE40 retains eighteen bindings and twelve empty sites with ordered access
views; minimization eliminated its unused frame reservation. CB570 retains
eight bindings, five empty sites and one measured ordered RAM capture view;
B0B9C retains five bindings and seven empty capture/control sites. Their
frames arise naturally. 211E8 retains twelve bindings, six empty sites and
a measured unused eight-byte reserve; removal changes ten frame words, with
the original reserve's purpose unknown. No instruction patches, clobbers or
new bounds guards are introduced.

D21C owns three dispatch tables of 49/6/6 words, CB570 owns seven words and
B0B9C owns 103 words, including their original no-op endpoints. Adjacent zero
padding remains outside ownership and unchanged. Signed coordinates, field
narrowing, callback-dependent reloads and byte-wrapping counters remain
explicit; complete helper APIs and object meanings are still unknown.

All use basic `gcc272-dos -quiet -O2 -G0` except CE40, which additionally uses
the measured `-fno-strength-reduce` selection. The uncached all-five-overlay
build, resident image and twelve tests pass. The combined result is 332
matching C functions, leaving eighty confirmed overlay functions in assembly;
resident C recovery and the native port remain separate work.

Outstanding slots may be rebalanced to a worker that has finished its queue;
exclusive ownership and the total twenty-four-match budget remain unchanged.

### Six-worker run: verified checkpoint 3

Six more accepted functions recover 9,200 bytes. The run now has eighteen
accepted matches and 22,672 recovered code bytes above its baseline.

| Overlay | Function | Bytes | Function SHA-1 |
|---|---|---:|---|
| SELECT | `func_801C3A6C` | 1,104 | `36a430330ab0728b9ad32727d62fefae33405b03` |
| SELECT | `func_80199010` | 1,580 | `903bf85bfc4942b4c58805f52a94d42af0f63551` |
| SELECT | `func_801B45CC` | 1,720 | `de0086d46aca5b5de6e47c27c324f8326c225af1` |
| SELECT | `func_801C2B50` | 1,536 | `61aafb366fcea568616b9ec9ec98448727a05960` |
| ENTER | `func_8018A7C4` | 1,736 | `1043bf4e93d361629f4e87089623a06fe38d0b5a` |
| SELECT | `func_801C3294` | 1,524 | `7a7643c3c7e120f6f5abe1246c10802b4d119b38` |

All six use basic `gcc272-dos -quiet -O2 -G0` and natural frames. 99010 uses
no matching aids; A7C4 retains one return-register binding and no empty sites.
C3A6C retains five bindings/two empty captures, B45CC eighteen/four, and
C2B50 ten/four. C3294 has no bindings, two empty capture identities and one
measured ordered byte reload view; it is not an I/O classification. B45CC's
input halfword spill is real data rather than padding, and joint removal
eliminated an entire five-aid callback setup group. No clobbers, invented
guards, instruction patches or unused frame reservations are introduced.

99010 owns 12/7 switch words, A7C4 owns 65/6/11 words and C3294 owns six;
their surrounding padding is unchanged. A7C4's union is an aliasing access
view for the observed indirect destination reload, not an asserted original
object type. Callback-relative reloads, wrapping arithmetic, early terminal
returns and full-word helper arguments remain explicit. Helper APIs and
complete workspace types remain unknown.

The original uncached all-five-overlay and resident builds pass, as do all
twelve tests. The repository has 338 matching C functions, leaving 74 of the
confirmed overlay functions assembly-backed. Incomplete and suspicious-path
research remains outside the active source; these counts do not describe a
finished native port or complete whole-game recovery.

### Six-worker run: verified checkpoint 4 (complete)

The final six matches recover 11,692 bytes. The run finishes with twenty-four
accepted functions and 34,364 recovered code bytes above the 320-C baseline.
Every six-match checkpoint passed an uncached combined build before its push.

| Overlay | Function | Bytes | Function SHA-1 |
|---|---|---:|---|
| SELECT | `func_801AC0B4` | 2,340 | `b7eaab71556f372f08c8d8b9e30e99d8d0cf1bd7` |
| SELECT | `func_801B1224` | 1,768 | `abce7358e8f739940c84bbe962f7f46d2249935f` |
| SELECT | `func_801AB910` | 1,956 | `4f9bd0751e2850b2e277c31c82987631b8e50bfa` |
| SELECT | `func_801A9C54` | 1,976 | `006636f1baafed18f1cae4c03424ddf4ecc89aa3` |
| SELECT | `func_8019A804` | 1,748 | `47d801db4f10dd66bc383a12b88fcb65b46fb5d9` |
| SELECT | `func_801AD7EC` | 1,904 | `0cd75de5a2856b2a1723f0f4e55497de939dba1e` |

AC0B4 retains thirty binding declarations/twelve empty sites, B1224 two/one,
AB910 two/one, A9C54 twelve/six, A804 five/five and AD7EC eleven/nine after
cumulative and joint minimization. A9C54's eight ordered byte/halfword reads
retain measured chronology, not a hardware-volatility claim. AD7EC retains a
plain unused 64-byte array to reproduce the measured 176-byte frame: removal
changes only eighteen frame words, not the body or table. Its original local
purpose/type remain unknown; it needs no volatile qualifier or empty frame
constraint. The other five frames are natural. No register/memory clobbers,
instruction patches, invented guards or new linker symbols are introduced.

All use basic `gcc272-dos -quiet -O2 -G0` except B1224, whose measured
`-fno-cse-skip-blocks` profile retains the repeated selector reads and decoder
paths; dropping it removes twenty bytes. B1224 owns 62 dispatch words, A804
owns 52 and AD7EC owns eleven, with other tables and padding unchanged.
AB910's ordinary inline row views remove unused compiler spills; its final
numeric-text address uses a direct same-address array alias, not a fabricated
neighboring object layout. Signed coordinates, word/byte wrapping, unchecked
strings, mapped/direct-row distinctions and callback-relative reloads remain
explicit. Complete object types and helper APIs remain unknown.

Six isolated workers started with four slots each; exclusive alternatives and
rebalancing produced final accepted totals of 6/4/6/2/4/2. A finished worker
also helped another through separate ignored research copies; only the owner
published that function. Original failed attempts and suspicious-path audits
remain preserved as ignored research and are not counted as recovered C.

The original uncached all-five-overlay build, resident executable and twelve
tooling tests pass with every reference hash/size unchanged. Final counts are
SELECT 309, ENTER 24, SELFORM 10, UNIFORM 1 and SELSND 0: 344 matching C
functions, with 68 confirmed overlay functions still in assembly. Resident C
recovery, additional-bank confirmation and the native port remain separate
work; this is not a whole-game completion claim.

### Six-worker follow-up: six exact matches

Starting from `7de55db` and 344 matching C functions, six isolated workers each
published one verified function. Serial integration adds 10,256 code bytes:

| Function (SELECT) | Bytes | Function SHA-1 |
|---|---:|---|
| `func_801C00F4` | 1,812 | `9c5a6eb58d32aa72aa7dcc9df3bd8783886351d9` |
| `func_801A6400` | 1,764 | `5f7690a393670cfb6db120e2a11b3119cf3829c7` |
| `func_80192A30` | 1,732 | `4eb6af2228790b3945796e17e0fc9771f766e70b` |
| `func_801BF478` | 1,708 | `987cf38e3a3356c146d03025ff91dc97a7a1958f` |
| `func_801B29CC` | 1,840 | `6a42a6eb09ce377eb869f04bea24a8b0d557ca0d` |
| `func_801B1B0C` | 1,400 | `1512ab34ad976af22e4e1d26a8a382a166bb376d` |

All six use basic `gcc272-dos -quiet -O2 -G0`. C00F4 retains one row-pointer
binding, one mode identity and one ordered returned-byte write; A6400 retains
nine bindings and ordered byte access views, with no empty sites. The views
preserve measured captures/reloads, not a recovered hardware-volatility
contract. Their natural frames are 24 and 32 bytes respectively.

92A30 retains six actual-value bindings and one completed-status identity.
Its plain unused 40-byte extent reproduces the 88-byte frame: removal changes
only twenty stack adjustment/save/restore/incoming-argument words. B29CC and
B1B0C each retain plain unused 16-byte extents in their measured 48-byte frames;
removal changes only eight frame words each. None is consumed by an empty
frame constraint or memory access, and original storage purpose/types remain
unknown. B29CC's five bindings/four identities and B1B0C's seven/six retain
actual captures and paired stores without volatile memory views. B1B0C's
post-store identity names the real halfword scalar, not a broad memory clobber;
its countdown arithmetic wraps as unsigned words.

BF478 has a natural 120-byte frame and ten binding declarations/two empty
argument-input source sites; one macro expands into four arms. Ordinary inline
call views preserve the observed ten/nine outgoing words and late signed
halfword rereads. They do not establish a complete original variadic API.
Joint minimization removed the main constant, coordinate, table and final-call
aids. Unknown object layouts, unchecked recursion/buffers and callback-relative
reloads remain explicit; no bounds guards, instruction patches or clobbers
were introduced.

Owned tables contain 42 words for C00F4, 5/11 for A6400, 5/5 for 92A30,
36 for BF478, five separate six-word slots for B29CC and 21 for B1B0C.
Padding, neighboring tables, original assembly and placement remain unchanged.
Each integration passed a full SELECT comparison. The final original uncached
all-five build, resident comparison and twelve tooling tests also pass, with
every reference hash and size unchanged.

Exclusive replacements avoided relabeling handwritten GTE assembly or
extending ownership across a separately named/shared table boundary. Finished
workers supplied peer candidates through separate ignored copies; only the
assigned owners published them. Earlier near-matches remain ignored research,
not recovered C. Final counts are SELECT 315, ENTER 24, SELFORM 10, UNIFORM 1
and SELSND 0: 350 matching C functions and 62 confirmed overlay functions still
assembly-backed. Resident recovery, additional banks and the native port remain
separate work; this is not whole-game completion.

### Single-worker pilot and three-worker follow-up: four exact matches

Starting from `2b66c74` and 350 matching C functions, one isolated pilot
verified the worker setup before three workers ran concurrently in separate
worktrees. All four primary targets matched; no fallback target was needed.
Serial integration adds 6,544 recovered code bytes:

| Overlay | Function | Bytes | Local integration commit |
|---|---|---:|---|
| SELECT | `func_80195944` | 1,180 | `4c8c05b` |
| SELECT | `func_801BE9F0` | 1,796 | `2478549` |
| SELECT | `func_801A7A8C` | 1,688 | `334ee90` |
| ENTER | `func_8018EC28` | 1,880 | `24952aa` |

All four use `gcc272-dos -quiet -O2 -G0`, with natural compiler-generated
frames and no register bindings, inline assembly, empty constraints, volatile
qualifiers or frame reservations. Source-shape probes and drafts are preserved
in each worker's ignored build directory.

The pilot recovers a 20-entry descriptor walk with frame/fill dispatch. Its
five-word table owns `jtbl_80189804`; the trailing zero remains unowned. A
stepping descriptor pointer, bitwise combination of the zero-size tests, and
cursor-before-counter declaration order reproduce the measured code.

`func_801BE9F0` recovers the per-row polyline draw over packed column nibbles.
Measured choices include the local base pointer, two-case switch, branch-specific
column limits, signed halfword intermediates, arithmetic order and color-local
declaration order. An unnecessary offset variable was removed while retaining
the exact match. It emits no jump table.

`func_801A7A8C` recovers indexed record and slot-flag updates through the
eleven-word `jtbl_8018A26C`. Assigning the base pointer between the second and
third record lookups reproduces the entry scheduling. `func_8018EC28` recovers
the part-transform smoothing and draw pass through the ten-word
`jtbl_8018954C`. Its measured source choices include the depth-clamp reread,
mirrored-pose arithmetic, matrix cursor expression and unsigned tilt handling.
Scratchpad-address relocations differ in unlinked comparisons but resolve to
the exact original words in the complete ENTER image. Record meanings and
complete original helper signatures remain uncertain.

Each worker passed the original uncached all-five build, resident build and
twelve tooling tests before committing. Coordinator integration preserved all
per-function map additions, rebuilt SELECT after each SELECT pick, and ran
the full original uncached gate at `24952aa`. All three gate exit codes were
zero; every reference hash and size remains unchanged.

Final counts are SELECT 318, ENTER 25, SELFORM 10, UNIFORM 1 and SELSND 0:
354 matching C functions and 58 confirmed overlay functions still assembly-backed.
These counts cover the five confirmed overlays, not the whole game. All work
was committed locally with the configured project identity; nothing was pushed.
Worker worktrees and ignored research remain preserved.

### Single-function follow-up: transfer state driver

Commit `6756599` adds SELECT `func_801930F4`, a 1,936-byte transfer state
driver. Its independently checked function SHA-1 is
`25ccf3bccf034161e190f63e1128e79dac4a5cbc`.

The source preserves FB/FF status polling, resource setup, the three-byte
header and 65-byte template copy, mode-dependent dispatch, error returns and
the shared state-increment tail. Complete record layouts and helper prototypes
remain provisional call-site views, not a native-port API.

It uses `gcc272-dos -quiet -O2 -G0`, one real status-value register binding
and a natural 88-byte frame. No instruction patches, full-function inline
assembly, empty constraints, volatile qualifiers or artificial frame
reservations were added. The two compiler-generated five-entry tables occupy
their proved original slots, `jtbl_801894D0` and `jtbl_801894E8`; the first
table's trailing zero remains unowned. The source documents measured
allocation choices and removal effects.

Independent review at `6756599` reran the original uncached builders for all
five overlays and the resident executable, followed by all twelve tooling
tests. Every gate passed; the complete reference hashes and sizes remain
unchanged. No original assembly, linker placement or verification checks were
changed by this function commit.

Final counts are SELECT 319, ENTER 25, SELFORM 10, UNIFORM 1 and SELSND 0:
355 matching C functions and 57 confirmed overlay functions still assembly-backed.
Resident recovery, other banks and the native port remain separate work.
The local OpenCode handoff document is ignored and is not part of publication.

### Resumed parallel follow-up: three exact matches

Starting from the published `0f53baf` checkpoint of 355 matching C functions,
serial integration adds three verified functions and 6,692 recovered code bytes:

| Overlay | Function | Bytes | Function SHA-1 | Local integration commit |
|---|---|---:|---|---|
| SELECT | `func_801CCA00` | 2,084 | `ecdd6a5774d33408e191d118c269b9eabd8b12dc` | `58450a7` |
| SELECT | `func_801A3FDC` | 2,348 | `de5bead7b20f5cde231e5ccd2a3fd2fd14e3fd6b` | `b935fbb` |
| ENTER | `func_8018DBBC` | 2,260 | `5248b1fe0693fd7282559ce95fe6339802fcecda` | `b0b4a6d` |

Workers used separate worktrees and writable build directories. Interrupted
matching and minimization sessions resumed from preserved drafts; only results
that passed the original uncached all-overlay, resident and tooling-test gates
were committed and integrated.

`func_801CCA00` recovers the SELECT menu-mode state machine and input handling.
It uses `gcc272-dos -quiet -O2 -G0` and the owned sixteen-word
`jtbl_8018DA58`. Measured real-value register bindings and four empty constraint
sites retain argument ordering and captures. Inert scratch/record and several
case-local bindings were removed after matching; individual removal evidence
for retained constructs is preserved. Its frame is natural.

`func_801A3FDC` recovers name-entry cursor movement between grid and character
modes, including disabled-character skipping and category-dependent updates.
It uses the same basic DOS profile, without a jump table. Two empty identities
around actual loaded values and one localized `$3` binding remain; measured
removals changed the output by 22, 20 and 32 diff lines respectively. No frame
reservation or volatile memory qualifiers were introduced.

`func_8018DBBC` recovers entry motion, signed helper-result averaging,
interpolation and row-flag filtering. Its function-specific profile is
`gcc272-dos -quiet -O2 -G0 -fno-strength-reduce`, preserving the single
1,000-byte row cursor. The compiler emits fifty entries in `jtbl_8018946C`
followed by six in `jtbl_80189534`, each in its proved original span.
Minimization removed sixteen bindings and four empty sites. One scoped saved
accumulator binding and one empty identity of the actual control halfword
access remain, with individual and joint removal evidence. The identity emits
no instruction or write and has no blanket memory clobber. Its 32-byte frame
is natural. Complete object layouts and original helper APIs remain uncertain.

Coordinator SELECT builds passed after both SELECT picks. The final original
uncached all-five build at `b0b4a6d`, resident build and twelve tooling tests
all exited zero. Complete image hashes and sizes are unchanged.

At this checkpoint, SELECT `func_80198688` remained assembly-backed. Preserved
research corrects the `/11` and `%11` coordinate calculations and recovers its
original frame and spill slots; a same-size draft still has scheduling/allocation
differences.
Its reserved ENTER fallback `func_8018B020` also remains incomplete. Earlier
unmatched SELFORM `func_80120A58`, ENTER `func_8018957C` and SELECT
`func_801D123C` drafts remain research, not accepted C. No incomplete
substitutions are active, and useful worktrees and ignored notes are retained.

Final counts are SELECT 321, ENTER 26, SELFORM 10, UNIFORM 1 and SELSND 0:
358 matching C functions and 54 confirmed overlay functions still assembly-backed.
These are confirmed-overlay counts, not whole-game completion. This update
includes only the three verified function results and their progress notes;
incomplete research is excluded from publication.

### Single-target completion: selected text rasterization

Starting from the published `14fc96d` checkpoint, SELECT `func_80198688`
now compiles from genuine matching C. Local integration commit `443566b`
recovers all 486 instructions and 1,944 bytes at SELECT offset `0xF710`;
original and rebuilt function SHA-1 is
`79ff37e6cf0fc385051fe17b3fc157f4d19071c3`.

The function copies the selected tables, classifies glyph bytes, unpacks pixels,
centers rows, repacks four-bit pixels and submits their `/11` and `%11` page
coordinates. Selection and ASCII-width reloads, the failed width-bound
post-increment, space-glyph residue and unsupported high-byte residue are
preserved. Complete original helper APIs and table meanings remain provisional.

The profile is `gcc272-dos -quiet -O2 -G0`, without flag overrides, added
symbols or jump-table ownership. The 2,216-byte (`0x8A8`) frame arises
naturally. Preserving the real scaled selector separately recovered coordinate
allocation; removing an unnecessary row binding recovered addition order.
Compiler RTL evidence identified a comparison temporary with a stack home:
guarding the pixel do-loop with its initialized counter (`b < kw`), rather
than a simplified width comparison, recovered the original frame and spill
offsets. The guarded character do-loop computes its row offset after the
entry test, recovering the original counter initialization scheduling.

Minimization reduced the first exact source from eleven bindings and six empty
sites to six scoped bindings for actual pixel-count, row-offset, halfword-cursor,
group-offset, packed-word-pointer and shift values, plus three non-volatile
empty identities of the mask, pixel pointer and line. Individual removals,
all 36 surviving pairs and relevant group removals were measured; a successful
joint removal eliminated two bindings that failed individually. No global
minimum is claimed. No instruction rewriting, substitute assembly logic,
dummy registers, blanket clobbers or artificial frame extent was used.

The worker passed the original uncached SELECT and all-five builders, resident
build and twelve tooling tests. Independent coordinator verification at
`443566b` reran the original all-five build, resident build and test suite;
all exited zero and every complete reference hash and size remains unchanged.
Earlier drafts and compiler evidence are preserved as ignored research.

Final counts are SELECT 322, ENTER 26, SELFORM 10, UNIFORM 1 and SELSND 0:
359 matching C functions and 53 confirmed overlay functions still assembly-backed.
This follow-up accepted only `func_80198688`. The function and progress update
were committed locally; no push was performed.

### Single-target completion: four-edge descriptor submission

Starting from `447a00d`, SELECT `func_8019659C` now compiles from matching C.
All 153 instructions and 612 bytes at SELECT offset `0xD624` match; the
original and rebuilt function SHA-1 is
`56ed06b2c54b17edf2827a11baf432e50bd70963`.

The routine submits the top, right, left and bottom edges using the same
scratch descriptor. Raw coordinate additions wrap as words before halfword
stores. Color and selector captures use the low argument bytes, the third
color byte retains its measured local spill/reloads, and each submission
rereads the entry index. Zero or negative dimensions do not introduce a
new guard or reduce the four calls. Original helper APIs and complete
descriptor/entry layouts remain unknown.

The profile is basic `gcc272-dos -quiet -O2 -G0`, with no flag override,
new symbols or jump-table ownership. Thirteen real-value bindings and six
empty identities preserve allocation and scheduling; five identities are
non-volatile. Greedy minimization removed all memory clobbers, unnecessary
sites and two bindings. Further cleanup removed the entry identity's `y`
operand and all descriptor-store qualifiers while retaining exact linked
retail bytes. The scratch-index and three argument-byte access views retain
measured ordering, not a claim about MMIO or original qualifiers. The natural
64-byte frame needs no artificial reservation; no global minimum is claimed.

Verification reran the original uncached all-five-overlay builder, the
resident builder and all twelve tooling tests. Every complete reference hash
and size remains unchanged. Original assembly and expected hashes were not
edited. This follow-up accepted only `func_8019659C`; `func_801C220C` was
excluded from the assignment.

Counts are SELECT 323, ENTER 26, SELFORM 10, UNIFORM 1 and SELSND 0:
360 matching C functions and 52 confirmed overlay functions still
assembly-backed. The README treemap remains explicitly labeled as the
earlier `9529feb` snapshot rather than being presented as this checkpoint.

### Six-worker follow-up: ranking, row setup and edge submission

Starting from `8927dbb` (360 matching C functions), six workers received
exclusive assignments in isolated checkouts. `func_801C220C` and its separate
worktree were excluded. Completed results were reviewed and integrated serially;
workers did not need to wait for the other assignments before finishing.

Verified SELECT additions from the six-worker batch:

| Function | Bytes | Function SHA-1 | Observed behavior |
|---|---:|---|---|
| `func_801B30FC` | 896 | `faf8ee2a6efa18debd6c9c1d34f5aba23991f739` | Clear rows, format ordinal day headers, decode paired bytes and capture fields for two helper calls |
| `func_801C5ED8` | 888 | `c559442d93540d25a1b20f0fe76ad63c32dd9783` | Advance a wrapped color tick and submit two sets of four signed-coordinate edges |
| `func_801C1D94` | 720 | `e2fc3fffcd4da29c7b56249325d9724ef62d9a03` | Build wrapped score words, sort signed values and publish interleaved indices and ranks |
| `func_801B4C84` | 804 | `394f055a8c71afeae1958c928278631da0f60348` | Rank four records using wrapped weighted scores and the original three-record tie scan |
| `func_801BCF80` | 888 | `be8dbdf4eac36a904b4615af66d9eb952001abd5` | Rank sixteen records, preserve tie-callback results and publish byte ranks and sixteen submissions |

All five use `gcc272-dos -quiet -O2 -G0`; only `func_801B30FC`
additionally disables strength reduction, as documented in the compiler profiles.
The three ranking routines retain signed `/10` comparisons after word wrapping.
Equivalent captured-condition outer loops place the compiler's division invariant
before cursor initialization. Their inner loops finish the condition, so these
outer loops add no retry or memory read. No explicit reciprocal or duplicate
constant substitutes for the recovered division.

Minimization retained four actual-value bindings and no empty sites in
`func_801B30FC`; one binding, one empty input and three local ordered byte-read
views in `func_801C5ED8`; five bindings and four nonvolatile identities in
`func_801C1D94`; twenty bindings and two nonvolatile sites in `func_801B4C84`;
and thirteen bindings and three nonvolatile identities in `func_801BCF80`.
Individual and relevant joint removals were measured; no global minimum is
claimed. Only `func_801C1D94` retains an unused eight-byte reservation for its
measured frame, with original purpose unknown. Ordered access views do not
classify ordinary tables as hardware registers. Complete record layouts and
original helper APIs remain provisional.

Each worker passed the original uncached all-five-overlay builder, resident
builder and twelve tooling tests. Coordinator SELECT checks passed after every
serial integration, retaining all justified per-function metadata when shared
map insertions conflicted. At `fdf9fa0`, the coordinator also reran the original
uncached all-five build, resident build and all twelve tests: all exited zero
and every complete reference hash and size remained unchanged. No original
assembly, expected hash, linker placement or generated instruction was edited.

The initial sixth target, `func_801A30F4`, remains assembly-backed. Its preserved
888-byte draft still differs in second-loop outgoing argument-store scheduling;
it was not accepted or counted. After focused pointer and call-expansion
experiments left the same residue, the coordinator explicitly reassigned that
slot to the leaf classifier `func_801C8D00`. That replacement also remains
assembly-backed: its closest draft is 1,044 rather than 1,040 bytes, with two
final classifier constants using a different register and one extra move.
Focused compiler-pass, source-shape and register-allocation experiments did not
resolve the mismatch. Neither draft was substituted or counted. Both research
streams and their measured diffs remain under ignored `build/` paths.

Accepted counts at that checkpoint were SELECT 328, ENTER 26, SELFORM 10, UNIFORM 1 and
SELSND 0: 365 matching C functions and 47 confirmed overlay functions still
assembly-backed. Five exact matches were accepted; the sixth worker's unresolved
research was preserved. The combined original build gate above covers all five
accepted additions. Progress counts and the treemap reflect only verified C.
No push has been performed for this request.

### Single-target follow-up: sixth slot completed

Starting from `4a80243` (365 matching C functions), the coordinator resumed only
the preserved `func_801C8D00` research, without starting more workers. The
accepted source is committed in `4f950d1`: 260 instructions / 1,040 bytes,
function SHA-1 `c5d640fa061cff99ae6cc01a7557ef4db85ddfa5`, with the basic
`gcc272-dos -quiet -O2 -G0` profile and no flag override.

The missing classifier layout was recovered by reusing the actual final
predicate as an ordinary classifier value and removing its earlier binding
and identity together. Both CSE-disable probe flags proved redundant. Further
minimization removed the late-result identity and the same-address row alias.
One real result binding and two field-memory input sites remain; individual
and joint removal tests failed. The compiler profiles document their measured
purposes. No frame reservation, table ownership, symbol addition, emitted inline
instructions, original ASM edit, hash change or linker-placement change was used.

The routine preserves wrapped byte codes, halfword coordinate narrowing,
ordered global stores/rereads, unchecked table lookups, and the original backward
shared return-32 branch. The special return-22 path does not write
`D_801D8DBE`. Complete field meanings and historical API types remain provisional.

The cleaned source passed an independent linked function comparison and the
coordinator's original uncached all-five-overlay build, resident build and all
twelve tooling tests. Every complete reference hash and size remained unchanged;
this verifies the combined six additions, not merely separate worker outputs.
`func_801C220C` remained excluded. The earlier `func_801A30F4` research is still
unaccepted and is not counted.

Counts are SELECT 329, ENTER 26, SELFORM 10, UNIFORM 1 and SELSND 0:
366 matching C functions and 46 confirmed overlay functions still assembly-backed.
The refreshed treemap is generated from the clean `4f950d1` code snapshot.
The native PC lane is still not started; local completion does not itself
publish commits.

### Separate target integration: relation matrix drawing

With separate user authorization, the coordinator reviewed worker commit
`8c0996b` for SELECT `func_801C220C` and integrated it as `e7e7d64`. Its worker
baseline was `fdf9fa0` (365 matching functions); integration into `48488c6`
also retains the subsequently accepted `func_801C8D00`. The only merge conflict
was the compiler-profile insertion: both justified per-function entries were
kept. No additional worker was started for this review.

The accepted function is 524 instructions / 2,096 bytes, function SHA-1
`18ad8cc40c47e453623157ec6e3b9ceb82560f4a`. It draws row and column labels,
relation cells, grid lines and a final panel fill. Review preserved the
incoming saved-register path, repeated control-helper calls, signed result
comparisons, label-callback rereads, and coordinate advancement for both
skipped and drawn cells. Helper APIs and complete record meanings remain
provisional; this is a matching source, not a recovered native interface.

The basic `gcc272-dos -quiet -O2 -G0` profile needs no flag override. The
compiler-profile record describes the measured seventeen scoped bindings,
nine empty capture/value sites and plain unused eight-byte frame extent.
The original 88-byte frame is retained, but the reason for its unused extent
is not known. No volatile qualifiers, jump tables, added symbol storage,
emitted inline game instructions, original ASM edits, hash changes or
linker-placement changes were introduced.

After integration, the coordinator independently verified the linked function
bytes and ran the original uncached all-five-overlay build, resident build
and all twelve tooling tests. Every complete reference hash and size remained
unchanged. These checks verify C220C together with the accepted sixth-slot
C8D00 source, not just the worker's earlier baseline. The separate C220C
checkout and its ignored research were left intact.

Counts are SELECT 330, ENTER 26, SELFORM 10, UNIFORM 1 and SELSND 0:
367 matching C functions and 45 confirmed overlay functions still assembly-backed.
The refreshed treemap uses the clean `e7e7d64` code snapshot: 367/412 (89.1%)
for confirmed overlays and 367/1,685 (21.8%) for the known inventory, not the
whole-game denominator or remaining effort. The native PC lane is not started.
The user authorized publishing this integration and the pending C8D00 commits.

### Three GPT-5.6 Sol workers: display, randomized outcome and GTE packets

At `ba01eeb`, the user requested three additional functions using three
`gpt-5.6-sol` workers with `high` reasoning. Three isolated existing checkouts
were used, with exclusive source ownership and independent build outputs; no
additional worker or nested agent was started. The coordinator reviewed and
integrated completed work serially while the remaining worker continued.

| Overlay | Accepted function | Bytes | Function SHA-1 |
|---|---|---:|---|
| SELECT | `func_801B9DCC` | 912 | `058dc0b54d2cdcd732195f6d62ae609fbbfdb109` |
| SELECT | `func_801AAE5C` | 1,076 | `bc63d6f5c77915c173fe9128e6c4ecbed3112025` |
| ENTER | `func_8018E4E0` | 1,008 | `ffb7e656b1f4a4cd926893ca90038f03672c29c7` |

The second worker initially researched ENTER `func_8018A008`. Its nearest
draft differed in three prologue words and was not accepted. The active
substitution was removed, the tracked checkout restored clean, and the same
worker was reassigned to `func_801AAE5C`. The unresolved draft and compiler
research remain ignored and local; they are not counted as matching C.

The accepted routines recover display setup and glyph submissions, randomized
byte outcomes with mode-dependent retries, and matrix/projected quadrilateral
packets with ordering-table links. These are behavioral descriptions, not
recovered original names. Review retained callback rereads, byte narrowing,
random-helper call order, the initial uncapped redraw, later retry limits,
sparse output writes and ordering-table alias chronology. Complete data layouts
and original helper APIs remain provisional.

All three use `gcc272-dos -quiet -O2 -G0`. The compiler-profile document records
the retained allocation aids, terminal removal probes, and frame/layout
caveats. B9DCC retains an unused frame extent of unknown purpose; AAE5C uses
the observed eight-byte separation between two local byte slots. E4E0 retains
only narrow real GTE hardware intrinsics around C logic; its shift-domain
assumption and raw hardware addresses still require native-port adaptation.
No original ASM, reference bytes, hashes, jump-table ownership or linker
placement was changed.

Worker B9DCC commits `a02888f` and `41827b2` were integrated as `ca80be7`
and `0d8c2a3`; E4E0 `575b84a` became `b4a15af`; AAE5C `8905f6f` became
`7a89951`. The last handoff was conditional while its worker gates ran: no
publication was permitted before the final verification completed. Root
reviewed the final sources and minimization evidence, checked SELECT and ENTER
after their integrations, and independently compared every new linked function
slice with its original instruction bytes. The combined original uncached
all-five-overlay build, resident executable and all twelve tooling tests passed,
with every complete reference hash and size unchanged.

This batch adds 2,996 matching code bytes and three functions. Counts are
SELECT 332, ENTER 27, SELFORM 10, UNIFORM 1 and SELSND 0: 370 matching C
functions, with 42 confirmed overlay functions still assembly-backed. The
treemap uses the clean `7a89951` code snapshot: 370/412 (89.8%) for confirmed
overlays and 370/1,685 (22.0%) for the known inventory. The known inventory is
not the whole-game denominator or remaining-effort estimate. Resident C and
the native-PC lane are not started. The user authorized pushing this batch
after completion.

### Single GPT-6.1 Sol follow-up: ENTER row initialization

Starting from `5afee48`, one GPT-6.1 Sol worker with high reasoning resumed
ENTER `func_8018A008`, with coordinator review and independent verification.
Commit `cb6b5d3` adds the function and its three per-target compiler/table
entries. The function now matches all 928 bytes exactly, with function SHA-1
`4fe9fc3e6194d7dc4a3e9b45864709d0a11849bf`.

A genuine byte offset beginning at 1,006 and advancing by 1,000 lets the
compiler strength-reduce the field cursor at the correct stage. This resolves
the earlier three-word setup mismatch without the redundant outer loop.
Seven allocation aids were removed cumulatively; four scoped bindings and
one empty signed-remainder input remain after individual and related-group
removal checks. This is a local fixed point, not a global-minimum claim.
The basic DOS GCC 2.7.2 profile produces the natural 80-byte frame without
frame reservation, volatile views, register clobbers or inline game instructions.

Review retained the 22-row stride on every path, the position reset at row 11
even for an absent record, signed helper results and narrowing, callback
rereads, and the final store through the advanced record pointer after the
last callback. Record meanings and original helper APIs remain provisional.
The regenerated 43-word jump table starts at `0x80189030` and ends immediately
before the unrelated table at `0x801890DC`; no adjacent words are included.

Both worker and coordinator ran the original uncached all-five-overlay build,
resident-executable build and all twelve tooling tests successfully. Complete
reference hashes and sizes are unchanged. Independent byte comparisons also
verified the complete function and its jump table against the local reference.

Counts are SELECT 332, ENTER 28, SELFORM 10, UNIFORM 1 and SELSND 0:
371 matching C functions, with 41 confirmed overlay functions still
assembly-backed. This is 371/412 (90.0%) for confirmed overlays and
371/1,685 (22.0%) for the known inventory, not a whole-game or effort estimate.
The treemap uses the clean `cb6b5d3` code snapshot.
Resident C and the native-PC lane remain unstarted. This follow-up is committed
locally; no push was requested or performed.

### Single-function follow-up: first resident C match

Starting from `a44da19`, the coordinator accepted resident `func_8001E6B8`
in `25eef1d`: 120 bytes, function SHA-1
`b4cffd357cedc068509bf8c8688031285e0d6ac0`. No additional worker was started.
It uses basic DOS GCC 2.7.2 with one result-register binding and a natural
24-byte frame, without frame padding or inline game instructions.

The helper returns zero without side effects for a zero divisor. Otherwise it
calls the random helper, reads the scratch word afterward, wraps the addition
at 32 bits and takes a signed remainder. The signed-overflow division trap
case, raw scratch address and provisional helper API need explicit native-lane
adaptation. Known callers include already recovered ENTER and UNIFORM routines.

The resident builder now reuses the verified compiler pipeline for
`src/resident/`, retains every other assembly slot, and offers an explicit
`--assembly-only` baseline. Unknown C slots and unsupported resident C rodata
fail closed. Six SDK-free tests were added for slot substitution, assembler
state, assembly fallback and these rejection paths.

The original uncached all-five-overlay build, matching-C resident build,
assembly-only resident build and all 18 tooling tests passed. Every full
reference hash and size is unchanged, and an independent original-instruction
comparison verified the complete new function slice. No original ASM, retail
input, expected hash, generated instruction or linker placement was changed.

Earlier A30F4 source-shape experiments and a B38E0 baseline recheck remained
private and unaccepted. They add nothing to the progress count.

Counts are now 372 matching C functions: 371 in confirmed overlays and
1/1,273 in the resident executable. Overlay counts remain SELECT 332, ENTER 28,
SELFORM 10, UNIFORM 1 and SELSND 0. The `25eef1d` treemap snapshot shows
372/1,685 (22.1%) of the known inventory and 371/412 (90.0%) of confirmed
overlays, with 1,313 known functions still assembly-backed. These are not
whole-game or effort percentages. The native-PC lane remains unstarted.
This follow-up is local only; no push was requested or performed.

### Another resident helper: signed threshold comparison

Starting from `4e37ac9`, the coordinator accepted `func_8001E730` in
`b3315cf`: 56 bytes, function SHA-1
`2a2f48834e1113e97ad36ddf543db204ea493ebd`. The basic DOS GCC 2.7.2 profile
matches ordinary C with a natural 24-byte frame and no allocation or assembly
aids. The only builder change is its per-function compiler selection.

The call to `func_8001E6B8(100)` is unconditional, followed by a signed
comparison against the incoming low signed halfword. The zero/one result
retains strict less-than semantics. Original formal types and gameplay meaning
remain provisional; this is not a claim about uniform percentage probabilities.

The original uncached five-overlay build, both resident build modes and all
18 tooling tests passed with unchanged full reference hashes and sizes.
Independent byte comparisons verified both resident C function slices against
their original instruction bytes. No original ASM, retail input, expected hash,
generated instruction or linker placement was edited.

The `b3315cf` treemap snapshot records 373 matching C functions:
371 overlay and 2/1,273 resident. Confirmed overlay counts remain unchanged at
371/412 (90.0%); the known inventory is 373/1,685 (22.1%), with 1,312 known
functions still assembly-backed. These are not whole-game or effort percentages.
The native-PC lane remains unstarted. The user authorized pushing after
verification and progress-document updates.

### Six parallel resident helpers

Starting from `29184a3`, six isolated workers using GPT-6.1 sol with high
reasoning each recovered one small resident function. All six matched and
were integrated serially, retaining every per-function compiler selection:

| Function | Bytes | Integrated commit | Measured behavior |
|---|---:|---|---|
| `func_800171C4` | 24 | `8d1d2a4` | Store the low byte at `0x1F80029A`, then clear `0x1F80029B` |
| `func_800171DC` | 32 | `2774566` | Increment the byte at `0x1F80029B`, wrapping modulo 256 |
| `func_800171A0` | 36 | `8d35062` | Capture `0x1F80029A`, clear `0x1F80029B`, then store the captured byte plus one |
| `func_8001720C` | 32 | `a0564eb` | Increment the byte at `0x1F80029C`, wrapping modulo 256 |
| `func_8001723C` | 28 | `a935ea7` | Store the low byte at `0x1F8002DF`, then its low bit at `0x1F8002E0` |
| `func_8001E694` | 36 | `5ba1a05` | Add 64 and narrow the first argument, forward the second word, and return `func_8001E5A4`'s result |

All use `gcc272-dos -quiet -O2 -G0` with no additional flags or allocation
constraints. The leaf helpers use no-storage scalar numeric address views;
the call wrapper preserves both arguments and its natural 24-byte frame.
Original APIs and gameplay meanings remain provisional. No original assembly,
reference input, expected hash, generated instruction or linker placement was
changed. These targets are completed, not new assignments.

Each worker checked independent original-ASM/retail/linked function bytes,
both resident build modes, all five overlays with the original uncached builder,
and all 18 tooling tests. Integration rebuilt and independently audited the
resident image after each commit. Final combined gates retain the full resident
SHA-1 `7e480656a295dced6ec187286773ab897651e995` (882,688 bytes) and all five
unchanged overlay hashes and sizes; both resident modes and 18 tests pass.

This batch adds 188 matching code bytes. The `5ba1a05` treemap snapshot records
379 matching functions: 371 overlay and 8/1,273 resident. The known inventory
is 379/1,685 (22.5%), with 1,306 known functions still assembly-backed.
Confirmed overlays remain 371/412 (90.0%), with 41 remaining. These are not
whole-game or effort percentages; the native-PC lane remains unstarted.
The user requested pushing after the batch and its verification are complete.

### Second six-function resident batch

Starting from `df68e49`, the same six isolated GPT-6.1 sol/high workers each
received one new resident target on an exclusive branch. Existing branches
and ignored research were preserved. All six matched and were integrated
serially with their justified compiler selections retained:

| Function | Bytes | Integrated commit | Measured behavior |
|---|---:|---|---|
| `func_80017178` | 40 | `64cd165` | Store the low byte at `0x1F800298`, then clear `29A`, `29B`, and `299` in order |
| `func_8001E138` | 32 | `e04aff8` | Store three incoming low bytes at `0x1F8001E9`, `1EA`, and `1EB` in order |
| `func_8001E768` | 16 | `984e72d` | Return the low word of the signed input's square |
| `func_80017528` | 60 | `f0e48e7` | Select one indexed scratch halfword and return whether masked bits are nonzero |
| `func_800174E0` | 72 | `7be8bd5` | Select one indexed scratch halfword, mask it, then compare against the full signed mask |
| `func_80016F44` | 68 | `456cf8c` | Forward the initial overlay callback's argument registers, then conditionally reset/advance scratch state |

Five use `gcc272-dos -quiet -O2 -G0`; the square helper uses default
`gcc281 -quiet -O2 -G0` without a compiler-map edit. All have natural frames
and no allocation bindings, compiler barriers, volatile qualifiers or padding.
The square widens to signed 64 bits before unsigned word narrowing, defining
the low product for every signed 32-bit input without overflow. The signed-mask
test is not simplified to equality; no slot bounds or fallback behavior were
invented. Raw address views, original APIs and gameplay meanings remain
provisional. The wrapper's four-word forwarding view and void return view do
not claim a complete original prototype or return contract.

Each worker passed a fresh resident baseline, independent ASM/retail/linked
function-byte checks, both resident build modes, the original uncached
five-overlay builder and all 18 tooling tests. Integration rebuilt and audited
the resident image after every commit. The final combined original uncached
overlay, both resident-mode and 18-test gates pass with unchanged complete
image hashes and sizes. No original ASM, reference input, expected hash,
generated instruction or linker placement was changed.

This batch adds 288 matching bytes. The `456cf8c` treemap snapshot records
385 matching functions: 371 overlay and 14/1,273 resident. The known inventory
is 385/1,685 (22.8%), with 1,300 known functions still assembly-backed.
Confirmed overlays remain 371/412 (90.0%), with 41 remaining. These are not
whole-game or effort percentages; the native-PC lane remains unstarted.
This continues the user's six-worker, verify-and-push workflow. All targets
above are completed, not available assignments.

### Third six-function resident batch

Starting from `9e391be`, the same six isolated GPT-6.1 sol/high workers each
received one new resident target on an exclusive branch, preserving old branches
and ignored research. All six matched and were integrated serially:

| Function | Bytes | Integrated commit | Measured behavior |
|---|---:|---|---|
| `func_8001714C` | 44 | `4f91165` | Capture scratch byte `298`, clear `29A` then `299`, and store the captured byte plus one |
| `func_8001DD10` | 64 | `a0355af` | Clear scratch bytes `2A1`, `2A0`, `1EC`, `2C2` in order, then call `func_8001723C(0)` |
| `func_8001951C` | 72 | `cd2ce42` | Preserve four calls and load the second global pointer after the preceding pointer-based call |
| `func_80019B1C` | 72 | `b4840ae` | Preserve five calls, including setup 9 and the final ordered zero/one calls |
| `func_8001E0F4` | 68 | `48c6ceb` | Clear two scratch words, then issue three ordered calls using the existing scratch address, 256 and zero |
| `func_8002F6C8` | 68 | `54e9bd8` | Return 2 below 1,024; otherwise subtract 1,024, divide by 768, add 2 and cap at 8 |

All use `gcc272-dos -quiet -O2 -G0` without flag overrides, register bindings,
compiler barriers, volatile qualifiers, padding or frame reservations. The two
leaf helpers have natural zero-byte frames; four call wrappers have natural
24-byte frames. Existing numeric byte views and global pointer symbols add no
storage or linker-symbol ownership. Original APIs, return declarations, object
layouts and gameplay meanings remain provisional.

The two callback-bearing setup wrappers preserve incoming `$a0-$a3` through
explicit word-level forwarding views, not claimed complete prototypes. Pointer
loads stay after the preceding calls that may change them. The byte-advance
helper retains full-word `$v0` residue up to 256 even when its stored byte wraps.
The classifier's unsigned division and signed cap are defined across the word
domain; its reciprocal was independently checked at both endpoints of all
5,592,406 quotient intervals, with monotonicity establishing equality within
each interval. No original ASM, reference input, expected hash, generated
instruction or linker placement was changed.

Each worker passed a fresh resident baseline, independent ASM/retail/linked
function-byte checks, both resident build modes, the original uncached
five-overlay builder and all 18 tooling tests. Integration rebuilt and audited
the resident image after every commit. Final combined uncached overlay, both
resident-mode and 18-test gates pass with unchanged full image hashes and sizes.

This batch adds 388 matching bytes. The `54e9bd8` treemap snapshot records
391 matching functions: 371 overlay and 20/1,273 resident. The known inventory
is 391/1,685 (23.2%), with 1,294 known functions still assembly-backed.
Confirmed overlays remain 371/412 (90.0%), with 41 remaining. These are not
whole-game or effort percentages; the native-PC lane remains unstarted.
The user requested pushing after completion. All targets above are completed,
not available assignments.

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
