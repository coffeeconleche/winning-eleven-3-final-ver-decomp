# Project decisions

## Matching build is the oracle

The first build target reconstructs the retail PS1 executable exactly. Native
portability changes do not replace or weaken this check.

The initial all-assembly resident build reached a byte-identical result on
2026-10-02. Generated Shift-JIS strings and raw GTE/handwritten instruction
words are normalized by `tools_src/build.py` so GNU binutils preserve the
original bytes.

## Retail inputs are local only

Disc images, extracted files, game assets and PsyQ SDK binaries are never
committed. Configuration, hashes, disassembly, matching source and original
project tooling are the versioned research output.

## SDK and compiler are separate questions

The current signatures favor PsyQ 4.1 library objects. This does not determine
which GCC/CC1PSX version compiled the game. Compiler versions and flags will be
chosen only by instruction-level comparisons across representative functions.

## Overlays are first-class build targets

Runtime-loaded code receives separate extraction records, symbol spaces and
matching checks. A shared virtual address is not module identity because files
replace one another in the same load bank.

## Native work starts from deterministic behavior

The PC target may initially use a fixed-address 32-bit guest memory model. Its
first correctness tests are fixed-input replays and state checksums. Online
transport is added only after deterministic replay is established.
