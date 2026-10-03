#include "common.h"

extern u8 D_800FF748[], D_8010A2C8[], D_8010866D[];
extern u8 D_801D9290[], D_801D9291[];
extern u8 D_80108669, D_8010A2E8;

u8 func_801BCBA8(void) {
    /* Measured 16-byte leaf frame; original purpose unknown, no slot accesses. */
    u8 frameSlot[16];
    u8 *scratch = (u8 *)0x1F800000;
    register u8 *base __asm__("$5") = D_800FF748;
    u8 selected = D_80108669;
    u8 i = 0;
    u32 other;
    register u32 mapped __asm__("$3");
    u8 *record;
    u32 mapOffset = 0xAB80;
    u32 offset;
    D_8010A2E8 = selected;
    scratch[0x2DD] = D_8010866D[D_8010A2C8[selected] * 36];
    for (; i < 8; i++) {
        offset = i * 2;
        /* The empty offset ties keep each branch's indexed table access,
         * rather than hoisting/commoning table addresses across branches. */
        if (D_801D9290[offset] == selected) {
            base[0x8F15] = 0;
            __asm__ volatile ("" : "=r"(offset) : "0"(offset));
            other = D_801D9291[offset];
        } else {
            __asm__ volatile ("" : "=r"(offset) : "0"(offset));
            if (D_801D9291[offset] != selected) continue;
            base[0x8F15] = 1;
            __asm__ volatile ("" : "=r"(offset) : "0"(offset));
            other = D_801D9290[offset];
        }
        base[0xABA1] = other;
        /* Keep the store before the mapped address and retain setup lifetimes;
         * base/mapped bindings preserve the measured allocation. No code is
         * emitted by these empty constraints. */
        __asm__ volatile ("" : : "r"(other), "r"(base), "r"(scratch),
                          "r"(mapOffset));
        record = (u8 *)(other + (u32)base);
        record += mapOffset;
        mapped = *record;
        __asm__ volatile ("" : "=r"(mapped) : "0"(mapped));
        record = base + mapped * 36;
        scratch[0x2DE] = record[0x8F25];
        break;
    }
    return i;
}
