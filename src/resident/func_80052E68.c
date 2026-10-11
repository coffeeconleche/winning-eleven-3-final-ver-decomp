#include "common.h"

/* Byte-access and word-result views; complete layout/API meanings unknown. */
s32 func_80052E68(u8 *record)
{
    u8 field = record[0x38D];
    u8 selector = *(u8 *)0x1F8002A9;
    u32 state;

    if (field != selector && selector != 0) {
        return 1;
    }
    if (*(u8 *)0x1F8002A8 != 0) {
        return 1;
    }
    state = *(u8 *)0x1F80029A;
    if (state == 1) {
        /* Actual loaded-value input retains the measured branch over zero.
         * It emits no instructions, accesses or clobbers; removal folds it. */
        __asm__("" : : "r"(state));
        return 0;
    }
    return 1;
}
