#include "common.h"

extern u8 D_800FF748[], D_801D9290[], D_801D9291[], D_801D94D8[];
extern u8 D_801DA310[], D_801DA311[];
extern void func_801AA7C4(u8);
extern void func_801A9C54(void);

/* Process eight indexed pairs. Byte-table/record meanings remain unknown. */
void func_801BCCD8(void) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 i = 0;
    u32 mapOffset = 0xAB80;
    do {
        u32 row = (u8)i;
        u32 offset = row * 2;
        u32 index;
        /* Reuse v0 for both record addresses and the second byte read;
         * freeing either binding changes the measured load/branch registers. */
        register u8 *record __asm__("$2");
        u32 selected;
        register u32 secondValue __asm__("$2");
        u8 *output;
        u32 secondOffset;
        u32 storageOffset;
        base[0xABA0] = D_801D9290[offset];
        index = *(u8 *)((u32)base + base[0xABA0] + mapOffset);
        record = base + index * 36;
        scratch[0x2DD] = record[0x8F25];
        base[0xABA1] = D_801D9291[offset];
        index = *(u8 *)((u32)base + base[0xABA1] + mapOffset);
        selected = base[0x8F21];
        record = base + index * 36;
        secondValue = record[0x8F25];
        scratch[0x2DE] = secondValue;
        if (base[0xABA0] != selected && base[0xABA1] != selected) {
            func_801AA7C4(0);
            output = D_801D94D8;
            base[0x8F15] = 0;
            /* The zero store precedes the scratch-byte read; retain subsequent
             * flag rereads across potentially aliasing byte-table stores. */
            __asm__("" : : : "memory");
            output = (u8 *)(offset + (u32)output);
            *output = scratch[0x2D1];
            output += base[0x8F15] ^ 1;
            *output = scratch[0x2D2];
            secondOffset = row * 4;
            storageOffset = base[0x8F15] * 2 + secondOffset;
            D_801DA310[storageOffset] = scratch[0x2D3];
            storageOffset = (base[0x8F15] ^ 1) * 2 + secondOffset;
            D_801DA310[storageOffset] = scratch[0x2D7];
            storageOffset = base[0x8F15] * 2 + secondOffset;
            D_801DA311[storageOffset] = scratch[0x2D4];
            storageOffset = (base[0x8F15] ^ 1) * 2 + secondOffset;
            D_801DA311[storageOffset] = scratch[0x2D8];
            func_801A9C54();
            /* Callbacks may change both indices. Keep each increment byte-wide. */
            record = base + base[0xABA0] * 36;
            record[0x8F26]++;
            record = base + base[0xABA1] * 36;
            record[0x8F26]++;
        }
        i++;
    } while ((u8)i < 8);
}
