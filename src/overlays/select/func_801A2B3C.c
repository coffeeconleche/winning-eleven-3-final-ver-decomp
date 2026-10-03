#include "common.h"
extern u8 D_800FF748[], D_80189FFC[], D_8018A004[];
extern u8 D_801D92F7, D_801D9313, D_801D932F;
extern u16 D_801D9300[];
extern s32 func_8018EA08(u16 *, u16, u16, u16 *);
extern s32 func_8018E994(s16 *, s32, s32);
extern s32 func_801A36D0(u8), func_8018E69C(u8);

s32 func_801A2B3C(void) {
    u16 *fields = D_801D9300;
    s32 complete;
    u8 *base;
    u8 index;
    s16 *last;
    /* Preserve every call; these are bitwise accumulations of bit zero. */
    complete = func_8018EA08(fields, 28, 20, fields - 2) & 1;
    complete &= func_8018E994((s16 *)(fields + 12), -686, 32);
    complete &= func_8018E994((s16 *)(fields + 26), 513, 32);
    base = D_800FF748;
    complete &= func_8018E994((s16 *)(base + 0x5EE8), -512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F38), -512, 32);
    /* The classifier result is narrowed to a byte before either table read. */
    index = func_801A36D0(1);
    complete &= func_8018E994((s16 *)(base + 0x5F10), D_80189FFC[index] | 512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F60), D_8018A004[index] | 512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F88), -512, 32);
    if ((u32)(*(u8 *)0x1F8002E1 - 1) < 2) {
        last = (s16 *)(base + 0x6050);
    } else {
        func_8018E69C(1);
        last = (s16 *)(base + 0x5FB0);
    }
    complete &= func_8018E994(last, 512, 32);
    if (complete) {
        D_801D92F7 = 0;
        D_801D9313 = 0;
        D_801D932F = 0;
    }
    return complete;
}
