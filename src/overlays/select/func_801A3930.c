#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801DAD88[44];
extern u8 D_801DADB3;

void func_801A3930(void) {
    u8 *base;
    u8 *entry;
    u8 *index;
    u32 clear;
    s32 i;

    base = D_800FF748;
    for (i = 0; i < 32; i++) {
        index = base + i;
        index += 0xAB80;
        entry = base + index[0] * 36;
        entry[0x8F24] = 0xFF;
        /* The first store can alias the index byte, so reload it. */
        entry = base + index[0] * 36;
        entry[0x8F25] = 0xFF;
    }
    i = 43;
    /* Use a PS1 address cursor for the descending 44-byte clear. */
    clear = (u32)&D_801DAD88[43];
    do {
        *(u8 *)clear = 0;
        i--;
        clear--;
    } while (i >= 0);
    if (base[0xABE2] == 0) {
        D_801DADB3 = 3;
    }
}
