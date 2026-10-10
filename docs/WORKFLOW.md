# Matching workflow

## Establish the baseline

1. Run `tools_src/extract.py` against a legally obtained matching disc dump.
2. Confirm the `SLPM_861.62` SHA-1 shown in the project README.
3. Run splat with `config/SLPM_861.62.yaml`.
4. Audit the proposed function and data boundaries.
5. Assemble and link every region without C substitutions.
6. Require the linked PS-X EXE to match the retail SHA-1.

The resident executable currently passes step 6. Its all-assembly baseline has
1,273 discovered functions and reproduces the retail SHA-1 exactly. Repeat the
full hash check after every accepted C conversion.

Matching resident C belongs in `src/resident/<function>.c`. The resident
builder now compiles these files through the shared per-function compiler
profiles, substitutes only existing assembly slots and verifies the complete
retail hash. Run `tools_src/build.py --assembly-only` to recheck the unchanged
all-assembly baseline without requiring a C compiler. See
[compiler profiles](COMPILER_PROFILES.md) for local tool paths and options.

## Identify the compiler

Do not inherit Yu-Gi-Oh's compiler profile. Select a varied sample of leaf,
branch-heavy, switch, structure-access and GTE functions. Compare GCC 2.7.2 and
2.8.x candidates across likely optimization, small-data and character-signedness
settings. Record results, including failed profiles.

## Convert a function

1. Confirm its start, end, callers and any jump-table ownership.
2. Generate a structural draft with m2c or a decompiler.
3. Replace address-based guesses with fixed-width types and shared declarations.
4. Compile only that function and compare instructions.
5. Adjust source shape, declarations and flags based on the actual diff.
6. Run the complete linked hash check before accepting the match.

Register allocation, delay-slot placement, signed loads, global addressing and
small-data selection are part of matching. A function that behaves correctly
but differs in bytes is not yet a match.

## Owned switch tables

The placement mechanism below is currently overlay-only. The resident builder
rejects generated C rodata until its original placement has dedicated support
and independent verification.

When compiled C emits a jump table, record its original symbol and entry count
in `PER_FUNC_JUMP_TABLES` in `tools_src/build_overlay.py`. Inspect the original
table and all case targets before declaring ownership. The aggregate builder
moves the compiler-generated words and label into that table's original slot,
retains surrounding data and padding, and removes the emitted copy from the
function text. Original slot alignment controls placement; the compiler's
standalone table alignment must not shift the retail layout.

For one table, declare `(symbol, count)`. For multiple independent tables,
declare `((first_symbol, first_count), (second_symbol, second_count), ...)`
in compiler-emission order. Each simple word-address table keeps its own
proved original slot; do not merge adjacent tables into one ownership range.
Each generated table must occupy a separate `.rodata`/`.text` block.
Missing or duplicate ownership, incorrect table/entry counts, reused slots
across functions, and unsupported layouts fail closed.
Do not patch instructions, case addresses, original assembly, or expected hashes
to make a switch match. Both the generated code and regenerated table must pass
the complete overlay byte comparison. SDK-free placement and wrapper checks:

```powershell
py -B -m unittest discover -s tools_src/tests -p 'test_*.py'
```

## Runtime modules

Trace CD reads and jumps in an emulator. For every module record:

- disc filename and hash;
- load address and loaded byte count;
- entrypoints and interior indirect-call targets;
- data/BSS reset behavior;
- which other modules reuse the bank;
- references into resident code and resident data.

Only then create its authoritative splat and link configuration.
