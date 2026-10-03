# Runtime modules

The disc contains several raw files with clear MIPS code. Their probable load
banks initially came from the resident loader table, embedded absolute pointers
and local `jal` targets. Exact live matches now confirm five modules.

| File | Size | Return sites | Load address | Status |
|---|---:|---:|---:|---|
| `SELECT.BIN` | `0x51EDA` | 366 | `0x80188F78` | confirmed |
| `ENTER.BIN` | `0xB784` | 31 | `0x80188F78` | confirmed |
| `MOVIE.BIN` | `0xB48` | 9 | `0x80188F78` | candidate |
| `TRAINING.BIN` | `0xC68` | 4 | `0x80188F78` | candidate |
| `UNIFORM.BIN` | `0xD08` | 1 | `0x80188F78` | confirmed |
| `SELFORM.BIN` | `0x584C` | 13 | `0x8011D800` | confirmed; corrected |
| `SELSND.BIN` | `0x17E0` | 1 | `0x80138000` | confirmed |
| `ENDING.BIN` | `0xC3C8` | 24 | `0x801CD000` | candidate |
| `STAFF.BIN` | `0x7D10` | 46 | `0x801CD000` | candidate |

`UNIFORM.BIN` is primarily data with one code-like routine and must be checked
dynamically. Low code density does not rule out compressed executable modules.

`SELECT.BIN`, `ENTER.BIN`, `UNIFORM.BIN`, `SELFORM.BIN`, and `SELSND.BIN` were
confirmed in full during the first controlled menu route. Notably, the observed
`SELFORM.BIN` address is `0x8011D800`, not the inferred `0x8011A800`.

Authoritative Splat layouts now exist for all five confirmed modules. Together
they contain 412 functions and rebuild 414,610 retail bytes exactly. Nineteen
functions currently compile from matching C; the remaining 393 use the
generated assembly baseline.

Verify every confirmed overlay with:

```powershell
.venv\Scripts\python.exe -B tools_src\build_overlay.py --all
```
