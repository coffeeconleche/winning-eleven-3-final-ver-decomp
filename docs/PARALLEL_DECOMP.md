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
full binary verification. The accepted matching C count is now 21.

Agent 1's `func_801AB510` remains assembly-backed. Its closest research draft
has the original 472-byte size but differs in eight instruction words: both
four-byte tail copies use `t6` instead of `v0`. The incomplete draft was not
integrated. Local reproduction notes and candidates remain in the worker's
ignored `build/` directory; they are not distributed with the public source.

The assignments below document the original batch. Do not rerun completed
targets as new work; select and explicitly assign new unmatched functions for
the next batch.

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
   `PER_FUNC_CC1_FLAGS` in `tools_src/build_overlay.py` is allowed only for your
   assigned function. Symbol-file additions must be justified by existing
   addresses and be additive. Prefer local types/declarations in the new C file
   when shared header changes are unnecessary.
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

1. Review each worker's diff and test evidence. Require the same baseline or
   account explicitly for differences before integration.
2. Integrate one verified commit at a time. Shared flag/symbol files can still
   conflict even though the C files differ. Resolve those conflicts by retaining
   each justified per-function addition; never accept an entire side blindly.
3. Rebuild SELECT after every integration. After combining the accepted work,
   rebuild all five overlays and the resident executable again. Independent
   matches do not automatically prove the combined build matches.
4. Count the actual accepted C files and update `README.md` and
   `config/overlays/README.md` once. If all three assignments match, the initial
   count of 19 becomes 22; do not predeclare that result.
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
