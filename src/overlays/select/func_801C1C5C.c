#include "common.h"

extern u8 D_800FF748[];

s32 func_801C1C5C(s32 mode, s32 side) {
    u8 *base = D_800FF748;
    register s32 four asm("$3");

    if (mode == -1 && side == 0) {
        return 0;
    }
    if (mode >= 3) {
        s32 value = base[0x8F20];
        if (value == 3) {
            return 3;
        }
    }
    /* Keep the comparison constant in the original branch-delay register. */
    four = 4;
    __asm__ volatile ("" : : "r"(four));
    if (mode != four) {
        return 2;
    }
    /* Preserve the second byte load instead of reusing the earlier value. */
    __asm__ volatile ("" : : : "memory");
    return (side != base[0x8F20] - 4) * 2;
}
