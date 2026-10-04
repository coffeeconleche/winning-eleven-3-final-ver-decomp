#include "common.h"

extern u8 D_800FF748[], D_801D903A[], D_8010564C;
extern s32 func_8018E994(s16 *, s32, s32);

s32 func_801B015C(void) {
    u8 *base = D_800FF748;
    s32 complete;
    /* Pin the loop count to retain the measured saved-register assignment. */
    register s32 i __asm__("$23");
    register u8 *first;
    register u8 *second;
    register s32 firstOffset;
    register s32 secondOffset;
    register s32 thirdOffset;
    register u8 *start __asm__("$2");

    /* All calls run: completion is accumulated bitwise, not short-circuited. */
    D_8010564C = 0;
    complete = func_8018E994((s16 *)(base + 0x5E20), 512, 32) & 1;
    complete &= func_8018E994((s16 *)(base + 0x5E22), -30, 2);
    complete &= func_8018E994((s16 *)(base + 0x5E48), 512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5E4A), -32, 2);
    complete &= func_8018E994((s16 *)(base + 0x5E70), 512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5E72), -32, 2);
    complete &= func_8018E994((s16 *)(base + 0x5EC0), 512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5EC2), -29, 2);
    complete &= func_8018E994((s16 *)(base + 0x5E98), 512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5E9A), -32, 2);
    complete &= func_8018E994((s16 *)(base + 0x5EE8), 512, 32);
    complete &= func_8018E994((s16 *)(base + 0x5EEA), -29, 2);
    i = 0;
    /* Keep the shared address materialization after count setup, then derive
     * both 24-byte-stride pointers without duplicating the address load. */
    start = D_801D903A;
    __asm__("" : "=r"(start) : "0"(start), "r"(i));
    second = start + 216;
    first = start;
    thirdOffset = 0x61F8;
    secondOffset = 0x6090;
    firstOffset = 0x5F28;
    /* The named data label does not establish an original array type. */
    for (; i < 9; i++) {
        complete &= func_8018E994((s16 *)(base + firstOffset + 16), -512, 32);
        complete &= func_8018E994((s16 *)(base + secondOffset + 16), -512, 32);
        complete &= func_8018E994((s16 *)(base + thirdOffset + 16), -512, 32);
        complete &= func_8018E994((s16 *)first, -644, 32);
        complete &= func_8018E994((s16 *)second, -612, 32);
        second += 24;
        first += 24;
        thirdOffset += 40;
        secondOffset += 40;
        firstOffset += 40;
    }
    return complete;
}
