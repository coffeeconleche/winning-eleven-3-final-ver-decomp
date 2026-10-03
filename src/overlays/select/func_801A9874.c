#include "common.h"

extern u8 D_800FF748[];

s32 func_801A9874(u8 first, u8 second, s32 value) {
    u8 *base;
    s32 difference;
    s32 result;

    base = D_800FF748;
    difference = base[second * 36 + 0x8F28] - base[first * 36 + 0x8F28];
    result = difference + (value - base[second * 36 + 0x8F26]) * 3;

    if (result > 0) {
        result = -1;
    } else {
        result = (u32)result >> 31;
    }
    /* Preserve the original shared return block. */
    __asm__ volatile ("");
    return result;
}
