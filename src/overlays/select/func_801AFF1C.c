#include "common.h"

extern u8 D_800FF748[], D_801D903A[], D_801D8A58[];
extern s32 func_8018E994(s16 *, s32, s32);

/* Access views retain the measured strides; original array bounds and field
 * meanings are not established by the available data labels. */
s32 func_801AFF1C(void) {
    u8 *base = D_800FF748;
    s32 complete;
    s32 i;
    u8 *first;
    u8 *second;
    s32 firstOffset;
    s32 secondOffset;
    s32 thirdOffset;
    u8 *start;
    u8 *delay;

    /* Bitwise accumulation runs every unrolled call, in the measured order. */
    complete = func_8018E994((s16 *)(base + 0x5E20), 0, 32) & 1;
    complete &= func_8018E994((s16 *)(base + 0x5E22), 2, 2);
    complete &= func_8018E994((s16 *)(base + 0x5E48), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5E4A), 0, 2);
    complete &= func_8018E994((s16 *)(base + 0x5E70), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5E72), 0, 2);
    complete &= func_8018E994((s16 *)(base + 0x5EC0), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5EC2), 3, 2);
    complete &= func_8018E994((s16 *)(base + 0x5E98), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5E9A), 0, 2);
    complete &= func_8018E994((s16 *)(base + 0x5EE8), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5EEA), 3, 2);
    i = 0;
    start = D_801D903A;
    second = start + 216;
    first = start;
    thirdOffset = 0x61F8;
    secondOffset = 0x6090;
    firstOffset = 0x5F28;
    delay = D_801D8A58;
    /* Countdown bytes gate their five calls, but never stop the outer loop. */
    for (; i < 9; i++) {
        s32 remaining = *delay;
        if (remaining != 0) {
            *delay = remaining - 1;
            complete = 0;
        } else {
            complete &= func_8018E994((s16 *)(base + firstOffset + 16), 0, 32);
            complete &= func_8018E994((s16 *)(base + secondOffset + 16), 0, 32);
            complete &= func_8018E994((s16 *)(base + thirdOffset + 16), 0, 32);
            complete &= func_8018E994((s16 *)first, -132, 32);
            complete &= func_8018E994((s16 *)second, -100, 32);
        }
        second += 24;
        first += 24;
        thirdOffset += 40;
        secondOffset += 40;
        firstOffset += 40;
        delay++;
    }
    if (complete != 0) {
        base[0x5F04] = 1;
    }
    return complete;
}
