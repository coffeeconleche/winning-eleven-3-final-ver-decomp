#include "common.h"
#if defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE)
#define FIRST_ID(s) (*(u8 *)((u32)(s) + 0x240))
#else
#define FIRST_ID(s) ((s)[0x240])
#endif

/* The retail bounds test leaves V0=0 on the out-of-table path. The pinned
 * gcc272-dos matching view deliberately retains its fall-through return;
 * this is a verified compiler-specific residue, not portable C semantics.
 * Native/reference builds return zero explicitly for every unsupported byte.
 * Use WE3_PORTABLE_REFERENCE to select that defined C view with old GCC too. */

/* Mode 1 returns the full byte at record+0x398, not just a 0/1/2 class.
 * Mapped initialized record/scratch storage remains required. */
u32 func_8005B99C(u8 *record) {
    u8 *scratch = (u8 *)0x1F800000;

    switch (*(u8 *)0x1F8002E2) {
    case 0:
        return (record[0x39A] != 0) * 2;
    case 1:
        return record[0x398];
    case 2:
    case 3:
        if (FIRST_ID(scratch) == record[0x38D]) {
            return 0;
        }
        if (scratch[0x241] != record[0x38D]) goto two;
        return 1;
two:
        return 2;
    case 4:
        return 2;
    }
#if !(defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE))
    return 0;
#endif
}
