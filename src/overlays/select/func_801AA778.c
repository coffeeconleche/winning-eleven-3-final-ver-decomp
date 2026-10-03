#include "common.h"

extern u8 D_800FF748[];

u8 func_801AA778(u8 row, u8 bit) {
    u8 *base = D_800FF748;
    u8 *entry;
    u32 first, second;
    /* Keep base setup before the byte row calculation; this empty input
     * constraint emits no instructions. */
    __asm__("" : : "r"(base));
    entry = base + row * 4;
    first = *(u32 *)(entry + 0xA9D0);
    second = *(u32 *)(entry + 0xAA50);

    /* Matching PSX source: the measured srlv instructions use only the low
     * five count bits. Counts >= 32 are target-specific, not portable C;
     * a future native implementation must explicitly mask the count to 31. */
    return (((first >> bit) & 1) << 1) |
           ((second >> bit) & 1);
}
