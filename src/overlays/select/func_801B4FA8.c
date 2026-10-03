#include "common.h"

extern u8 D_800FF748[];

u8 func_801B4FA8(u8 value) {
    u8 *base = D_800FF748;
    s32 i;
    u8 *order;
    u8 *row;

    /* Search the byte order table; the missing-value result is 32. */
    for (i = 0; i < 32; i++) {
        order = base + i;
        order += 0xAB80;
        row = base;
        row += order[0] * 36;
        if (row[0x8F25] == value) {
            break;
        }
    }
    return i;
}
