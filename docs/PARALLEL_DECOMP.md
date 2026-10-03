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
