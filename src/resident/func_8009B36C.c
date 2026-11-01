#include "common.h"

extern u8 D_800CB3FB[];

/* Publishes a two-iteration corner packet pair from layout-table quadrant
 * values; partial record and packet views. */
void func_8009B36C(u8 *record, u8 *left, u8 *right) {
    u8 *scratch = (u8 *)0x1F800000;
    s32 row;
    s32 col;
    s32 base;
    s32 top;
    s32 bottom;
    s32 offset;
    s32 i;
    u8 *packet;

    switch (D_800CB3FB[record[0]] - 1) {
    case 0:
        row = 0;
        col = 0;
        base = 0;
        break;
    case 1:
        row = 0x20;
        col = 0;
        base = 0;
        break;
    case 2:
        row = 0x40;
        col = 0;
        base = 0;
        break;
    case 3:
        row = 0x60;
        col = 0;
        base = 0;
        break;
    case 4:
        row = 0;
        col = 0x20;
        base = 0;
        break;
    case 5:
        row = 0x20;
        col = 0x20;
        base = 0;
        break;
    case 6:
        row = 0x40;
        col = 0x20;
        base = 0;
        break;
    case 7:
        row = 0x60;
        col = 0x20;
        base = 0;
        break;
    case 10:
        row = 0;
        col = 0;
        base = 0x1E;
        break;
    case 11:
        row = 0x20;
        col = 0;
        base = 0x1E;
        break;
    case 12:
        row = 0x40;
        col = 0;
        base = 0x1E;
        break;
    case 13:
        row = 0x60;
        col = 0;
        base = 0x1E;
        break;
    case 14:
        row = 0;
        col = 0x20;
        base = 0x1E;
        break;
    case 15:
        row = 0x20;
        col = 0x20;
        base = 0x1E;
        break;
    case 16:
        row = 0x40;
        col = 0x20;
        base = 0x1E;
        break;
    case 17:
        row = 0x60;
        col = 0x20;
        base = 0x1E;
        break;
    }
    i = 0;
    top = row + base;
    offset = base - 0x1E;
    bottom = row - offset;
    row = 0;
    for (; i < 2; i++) {
        packet = *(u8 **)(scratch + 0x190) + row + (left[0] * 40 + 0x3660);
        packet[0xC] = top;
        packet[0xD] = col + (right[0] << 6);
        packet[0x14] = bottom;
        packet[0x15] = col + (right[0] << 6);
        packet[0x1C] = top;
        packet[0x1D] = col + ((right[0] << 6) + 0x1F);
        packet[0x24] = bottom;
        packet[0x25] = col + ((right[0] << 6) + 0x1F);
        row = row + 0x3AC0;
    }
}
