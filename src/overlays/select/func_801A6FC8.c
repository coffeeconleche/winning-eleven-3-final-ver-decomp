#include "common.h"

extern u8 D_800FF748[];
extern s16 D_801D92A8;
extern s32 func_8018E994(s16 *, s32, s32);
extern void func_801A735C(s32);

s32 func_801A6FC8(void) {
    u8 *base = D_800FF748;
    s32 complete = 1;
    /* Retain the measured counter register and its reuse after the pair calls;
     * the unbound form swaps counter/offset registers in both loop bodies. */
    register s32 index asm("$16");
    s32 offset;
    u8 *pair;
    complete &= func_8018E994((s16 *)(base + 0x5E48), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5E98), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5EC0), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5EE8), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F10), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5FD8), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x6000), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F88), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5FB0), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F38), 90, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F60), 159, 32);
    pair = (u8 *)&D_801D92A8;
    complete &= func_8018E994((s16 *)pair, 30, 32);
    complete &= func_8018E994((s16 *)(pair + 28), 30, 32);

    index = 15;
    offset = 0x6018;
    do {
        complete &= func_8018E994((s16 *)(base + offset + 16), 0, 32);
        index++;
        offset += 40;
    } while (index < 23);
    index = 23;
    offset = 0x6158;
    do {
        complete &= func_8018E994((s16 *)(base + offset + 16), 0, 32);
        index++;
        offset += 40;
    } while (index < 33);
    if (complete) func_801A735C(0);
    return complete;
}
