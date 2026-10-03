#include "common.h"

extern u8 D_800FF748[];

void func_801BD368(u8 row, u8 column, u32 value) {
    u8 *base = D_800FF748;

    /* These overlapping byte ranges have different nibble updates. Preserve
     * the full supplied value until the final byte store in each branch. */
    if (column >= 15) {
        u8 *entry = base + row * 36 + column;
        entry += 0x8F29;
        *entry = (*entry & 0x0F) | (value << 4);
    } else {
        u8 *entry = base + row * 36 + column;
        entry += 0x8F38;
        *entry = value | (*entry & 0xF0);
    }
}
