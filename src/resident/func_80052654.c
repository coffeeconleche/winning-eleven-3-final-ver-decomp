#include "common.h"

/* The retail bounds test leaves V0=0 on the out-of-table path. The pinned
 * gcc272-dos matching view deliberately retains its fall-through return;
 * this is a verified compiler-specific residue, not portable C semantics.
 * Native/reference builds return zero explicitly for every unsupported byte.
 * Use WE3_PORTABLE_REFERENCE to select that defined C view with old GCC too. */

extern u8 D_800FF748[];

u32 func_80052654(u32 index) {
    u8 *records = D_800FF748;

    switch (*(u8 *)0x1F8002E2) {
    case 0:
    case 2:
    case 3:
        {
            u8 *row;

            row = records + (u8)index * 1000;
            return row[0x398];
        }
    case 1:
        return 0;
    case 4:
        return 1;
    }
#if !(defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE))
    return 0;
#endif
}
