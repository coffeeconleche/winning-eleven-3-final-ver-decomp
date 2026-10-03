#include "common.h"

extern u8 D_800FF748[];
extern u16 D_801D92C8[], D_801D92E6[];
extern s32 func_8018EA08(u16 *current, u16 target, u16 step, u16 *coupled);
extern s32 func_8018E994(s16 *current, s32 target, s32 step);

s32 func_8019C61C(void) {
    u16 *fields = D_801D92C8;
    u8 *base;
    s32 complete;
    s32 i;
    s32 second;
    s32 first;

    /* Keep every call: the return value accumulates bit zero, not a boolean. */
    complete = func_8018EA08(fields, 0x8E, 8, fields - 2) & 1;
    complete &= func_8018EA08(fields + 1, 0x2C, 2, fields - 1);
    base = D_800FF748;
    if (*(u8 *)0x1F8002E1 == 1) {
        complete &= func_8018EA08(fields + 14, 0xAA, 10, fields + 12);
    } else {
        complete &= func_8018EA08(fields + 14, 0xA4, 10, fields + 12);
    }
    complete &= func_8018EA08(D_801D92E6, 0x80, 8, D_801D92E6 - 2);
    i = 0;
    second = 0x6310;
    first = 0x6270;
    for (; i < 4; second += 40, i++, first += 40) {
        complete &= func_8018E994((s16 *)(base + first + 16), 0, 32);
        complete &= func_8018E994((s16 *)(base + second + 16), 0, 32);
    }
    return complete;
}
