#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A2F0;

s32 func_801B8FF8(u8 index) {
    u8 *base = D_800FF748;
    u8 *row = base + index * 36;
    u32 seed = index == D_8010A2F0 ? 100000000 : 0;
    /* This accumulator binding preserves the original temporary-register
     * reuse through the constant multiplications; it emits no instructions. */
    register u32 score __asm__("$5") = row[0x8F26] * 10000000U;
    u32 first = *(u16 *)(row + 0x8F2C);
    u16 second = *(u16 *)(row + 0x8F2E);
    u32 mapped = base[0xAB80 + index];

    /* Word arithmetic is retained; the ranking fields' meanings are unknown. */
    score += (first - second) * 10000U;
    score += first * 10;
    if ((base[0x8F24 + mapped * 36] & 0xC0) == 0) {
        seed += 1 + score;
    } else {
        seed += score;
    }
    return seed;
}
