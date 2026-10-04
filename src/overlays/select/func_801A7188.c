#include "common.h"

extern u8 D_800FF748[], D_80105714, D_8010573C;
extern s16 D_801D92A8[];
extern s32 func_8018E994(s16 *, s32, s32);
extern void func_8018E4AC(s32, s32, s32);

s32 func_801A7188(void) {
    u8 *base = D_800FF748;
    s16 *halfword;
    /* Bindings retain the measured accumulator/counter allocation and loop
     * setup order. Every helper call runs; the results are bitwise ANDed. */
    register s32 result __asm__("$17");
    register s32 i __asm__("$16");
    u32 offset;
    D_80105714 = 0;
    D_8010573C = 0;
    result = func_8018E994((s16 *)(base + 0x5E48), -512, 32) & 1;
    result &= func_8018E994((s16 *)(base + 0x5E98), -512, 32);
    result &= func_8018E994((s16 *)(base + 0x5EC0), -512, 32);
    result &= func_8018E994((s16 *)(base + 0x5EE8), -512, 32);
    result &= func_8018E994((s16 *)(base + 0x5F10), -512, 32);
    result &= func_8018E994((s16 *)(base + 0x5FD8), 512, 32);
    result &= func_8018E994((s16 *)(base + 0x6000), 512, 32);
    result &= func_8018E994((s16 *)(base + 0x5F88), 512, 32);
    result &= func_8018E994((s16 *)(base + 0x5FB0), 512, 32);
    result &= func_8018E994((s16 *)(base + 0x5F38), 602, 32);
    result &= func_8018E994((s16 *)(base + 0x5F60), 671, 32);
    halfword = D_801D92A8;
    result &= func_8018E994(halfword, 542, 32);
    result &= func_8018E994(halfword + 14, 542, 32);
    i = 15;
    offset = 0x6018;
    for (; i < 23; i++) {
        result &= func_8018E994((s16 *)(base + offset + 16), -512, 32);
        offset += 40;
    }
    i = 23;
    offset = 0x6158;
    for (; i < 33; i++) {
        result &= func_8018E994((s16 *)(base + offset + 16), -512, 32);
        offset += 40;
    }
    if (result != 0) func_8018E4AC(3, 32, 0);
    return result;
}
