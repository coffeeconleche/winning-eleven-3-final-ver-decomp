#include "common.h"

/* The retail bounds test leaves V0=0 on the out-of-table path. The pinned
 * gcc272-dos matching view deliberately retains its fall-through return;
 * this is a verified compiler-specific residue, not portable C semantics.
 * Native/reference builds return zero explicitly for every unsupported byte.
 * Use WE3_PORTABLE_REFERENCE to select that defined C view with old GCC too. */

/* Scratchpad animation-step classifier; the record slot is unused by the body. */
s32 func_800A2374(u8 *record, u32 selector) {
    switch (selector & 0xFF) {
    case 1:
    case 2:
    case 3:
    case 4:
        return 0;
    case 0:
    case 5:
    case 6:
        return 15;
    case 7:
        return 0;
    }
#if !(defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE))
    return 0;
#endif
}
