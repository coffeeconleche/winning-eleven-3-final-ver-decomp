# Disc and executable findings

Target inspected: Japanese revision 1, boot ID `SLPM_861.62`.

## Disc structure

- Track 1 is `MODE2/2352` data.
- Tracks 2–9 are CD audio.
- The ISO9660 filesystem contains 231 files and four directories.
- `SYSTEM.CNF` boots `cdrom:SLPM_861.62;1`.
- Media includes `MOVIE/*.STR`, large `SD_COMP/*.RA`/`*.DA` files and CDDA.

## PS-X EXE header

| Field | Value |
|---|---:|
| File size | `0xD7800` |
| Payload size | `0xD7000` |
| Initial PC | `0x800156C4` |
| Text/load address | `0x80010000` |
| Stack address | `0x801FFFF0` |
| SHA-1 | `7e480656a295dced6ec187286773ab897651e995` |

## Resident layout evidence

The first real return instruction is `__main` at `0x800156BC`; startup begins
at `0x800156C4`, establishes `$gp = 0x800E6A8C`, and calls the game entry at
`0x80015780`.

The game-owned region runs from `0x80015780` to the first strong PsyQ library
cluster at `0x800AC064`. The last executable trampolines end at `0x800C6074`.
Startup clears `0x800E6AC0–0x8011CE70`, establishing the initial BSS range.

A signature comparison against the public `psx_psyq_signatures` catalogues
found the strongest result in the PsyQ 4.1 catalogue. That identifies likely
library object generations, not the compiler used for game translation units.
Compiler selection remains an experiment.

## Open questions

- Confirm every runtime module load bank and lifetime with emulator traces.
- Separate code, jump tables and asset data inside each module.
- Determine the game compiler and exact flags independently of the SDK label.
- Identify whether any low-density or compressed disc files contain executable
  payloads.
- Verify the section split by producing a byte-identical assembly-only link.
