#include "common.h"

extern u8 D_8010A5A8[], D_800FF748[];
extern u8 D_800C6AF0[], D_800C6AF1[];

/* Existing-storage byte views only; not complete native backing layouts. */
void func_8001E310(void)
{
    u8 *settings = D_8010A5A8;
    u8 *scratch = (u8 *)0x1F800000;
    s32 i;
    s32 j;
    u8 *base = D_800FF748;
    u8 *row;
    u8 *record;
    u8 *cursor;
    s32 tableOffset;

    for (i = 0; i < 2; i++) {
        *(u16 *)(scratch + 0x2A + i * 2) = 32;
        *(u16 *)(scratch + 0x1A + i * 2) = 32;
        *(u16 *)(scratch + 0x26 + i * 2) = 64;
        *(u16 *)(scratch + 0x16 + i * 2) = 64;
        *(u16 *)(base + 0x8F1A + i * 2) = 128;
        *(u16 *)(scratch + 0x12 + i * 2) = 128;
        *(u16 *)(scratch + 0x32 + i * 2) = 16;
        *(u16 *)(scratch + 0x1E + i * 2) = 16;
        *(u16 *)(scratch + 0x2E + i * 2) = 4;
        *(u16 *)(scratch + 0x22 + i * 2) = 8;
        (scratch + i)[0x307] = 0;
    }
    for (i = 0; i < 43; i++) {
        row = base + i * 22;
        tableOffset = i * 2;
        record = base + i;
        base[0x89BD + i] = D_800C6AF0[tableOffset];
        base[0x89E8 + i] = D_800C6AF1[tableOffset];
        base[0x8A69 + i] = 255;
        base[0x8ABF + i] = 255;
        record[0x8A94] = 255;
        record[0x8A13] = 255;
        record[0x8A3E] = 255;
        cursor = row + 0x8AEA;
        for (j = 21; j >= 0; j--) {
            cursor[j] = j;
        }
    }
    base[0xABE2] = 0;
    settings[0xA] = 62;
    settings[2] = 24;
    settings[3] = 24;
    settings[4] = 24;
    settings[6] = 0;
    settings[5] = 1;
    scratch[0x2E4] = 0;
    scratch[0x2E5] = 0;
    settings[0] = 1;
    settings[1] = 1;
    base[0x8F15] = 0;
    scratch[0x2E6] = 1;
    scratch[0x2E3] = 0;
    *(u16 *)(scratch + 0x336) = 480;
    for (i = 0; i < 2; i++) {
        (scratch + i)[0x301] = 0;
        (scratch + i)[0x303] = 0;
    }
    *(u16 *)(base + 0xAC18) = 182;
    *(u16 *)(base + 0xAC1A) = 120;
    scratch[0x338] = 0;
    settings[7] = 0;
    base[0x8F08] = 0;
    base[0x8F12] = 1;
    base[0x8F13] = 1;
    base[0xAC1C] = 0;
    *(u16 *)(settings + 0xC) = 2;
    base[0x8F14] = 0;
    settings[9] = 0;
    base[0xAC1D] = 1;
    base[0xAC1E] = 1;
    base[0xAC1F] = 0;
    base[0x8F11] = 0;
    base[0xABE2] = 0;
    base[0x8F07] = 0;
    base[0x8F1E] = 0;
}
