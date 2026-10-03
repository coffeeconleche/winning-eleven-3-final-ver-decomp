# Contributing

The project is currently establishing its reference build. Until that gate is
green, measured facts and reproducible tooling take priority over guessed names
or large source rewrites.

## Required checks

1. Never commit a disc image, extracted retail file, PsyQ SDK or downloaded
   toolchain.
2. Record the exact target and hash used for every binary comparison.
3. Keep the matching PS1 build independent from future PC-only replacements.
4. Treat function boundaries, compiler flags and overlay load addresses as
   hypotheses until a binary comparison or runtime trace confirms them.
5. Once the matching build exists, every accepted C function must reproduce its
   original instructions and the full linked executable must retain the retail
   SHA-1.

Read `docs/WORKFLOW.md` before starting matching work.
