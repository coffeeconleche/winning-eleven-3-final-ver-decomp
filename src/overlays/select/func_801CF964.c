#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A5A8[];
extern u8 D_80108648;

void func_801CF964(void) {
    u8 *config;
    u8 *base;
    u8 *scratch;
    u8 i;

    config = D_8010A5A8;
    base = D_800FF748;
    scratch = (u8 *)0x1F800000;
    D_80108648 = *(u8 *)0x1F8002E6;
    /* Preserve the two interleaved halfword slots and their byte settings. */
    for (i = 0; i < 2; i++) {
        *(u16 *)(base + 0x8ED8 + i * 2) = *(u16 *)(scratch + 0x12 + i * 2);
        *(u16 *)(base + 0x8EDC + i * 2) = *(u16 *)(scratch + 0x16 + i * 2);
        *(u16 *)(base + 0x8EE0 + i * 2) = *(u16 *)(scratch + 0x1A + i * 2);
        *(u16 *)(base + 0x8EE4 + i * 2) = *(u16 *)(scratch + 0x1E + i * 2);
        *(u16 *)(base + 0x8EE8 + i * 2) = *(u16 *)(scratch + 0x22 + i * 2);
        *(u16 *)(base + 0x8EEC + i * 2) = *(u16 *)(scratch + 0x26 + i * 2);
        *(u16 *)(base + 0x8EF0 + i * 2) = *(u16 *)(scratch + 0x2A + i * 2);
        *(u16 *)(base + 0x8EF4 + i * 2) = *(u16 *)(scratch + 0x2E + i * 2);
        *(u16 *)(base + 0x8EF8 + i * 2) = *(u16 *)(scratch + 0x32 + i * 2);
        *(u16 *)(base + 0x8EFC + i * 2) = *(u16 *)(base + 0x8F1A + i * 2);
        (base + i)[0x8F09] = (scratch + i)[0x307];
    }
    base[0x8F01] = config[10];
    base[0x8F08] = config[7];
    base[0x8F02] = config[6];
    base[0x8F03] = config[2];
    base[0x8F04] = config[3];
    base[0x8F05] = config[4];
    base[0x8F06] = config[5];
    base[0x8F07] = base[0xABE2];
    base[0x8F12] = base[0x8F13];
    *(u16 *)(base + 0x8F0C) = *(u16 *)(scratch + 0x336);
    base[0x8F0E] = config[9] & 0x73;
    base[0x8F0F] = base[0xAC1D];
    base[0x8F10] = base[0xAC1E];
    base[0x8F11] = base[0xAC1F];
}
