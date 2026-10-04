#include "common.h"

extern u8 D_800FF748[], D_800E7620[], D_800EF78B[];
extern s32 func_8006FB90(u32, u32, u32);

/* Callers pass/consume bytes; the original declaration and table meanings are unknown. */
u8 func_80121A2C(u8 selector) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 j = 0;
    u32 count = 0;
    u32 side = selector;
    u32 eleven = side * 11;
    /* Keep the row scale and inner limit in their measured word-register roles. */
    register u32 twentyTwo __asm__("$12") = eleven * 2;

    do {
        u32 start;
        register u32 end __asm__("$8");
        u32 i;
        u32 index;
        u8 found;

        if ((u16)j < 11) { start = 0; end = 11; }
        else { start = 11; end = 22; }
        i = start;
        index = (u16)i;
        found = 0;
        if (index < end) {
            u32 prefix = twentyTwo + (u32)base;
            u32 displacement;
            u8 *row;
            u8 *candidate;
            /* Both paths keep the 88-byte scale in a3, rather than hoisting a copy. */
            register u32 eightyEight __asm__("$7");
            displacement = 0x8E9C;
            prefix += displacement;
            row = (u8 *)(prefix + (u16)j);
            candidate = (u8 *)(twentyTwo + (u32)D_800E7620);
            /* Empty identities keep this table/stride setup inside the entered search. */
            __asm__("" : "=r"(candidate), "=r"(eleven) : "0"(candidate), "1"(eleven));
            eightyEight = eleven * 8;
            do {
                u8 key = *row;
                u8 other = candidate[index];
                i++;
                if (key == other) {
                    u32 offset;
                    u8 flags;
                    i = key * 4 + eightyEight;
                    offset = i;
                    flags = D_800EF78B[offset];
                    if (flags & 6) {
                        u32 changed;
                        u32 updated;
                        D_800EF78B[offset] = flags | 4;
                        /* Reread the row byte after the first flag store; do not cache key. */
                        changed = *row * 4 + eightyEight;
                        updated = D_800EF78B[changed];
                        D_800EF78B[changed] = updated & 0xFD;
                        count++;
                    } else {
                        D_800EF78B[offset] = flags & 0x12;
                    }
                    found = 1;
                    break;
                }
            } while ((index = (u16)i) < end);
        }
        if (!found) {
            u32 prefix = twentyTwo + (u32)base;
            u32 displacement;
            u8 *row;
            register u32 eightyEight __asm__("$7");
            register u32 offset __asm__("$3");
            register u32 firstHalf __asm__("$4");
            u32 flags;
            /* A byte widened to signed 16 bits is still 0..255; the range test is unsigned. */
            s16 mode;

            displacement = 0x8E9C;
            /* Empty identity retains the separate fallback row-address setup. */
            __asm__("" : "=r"(displacement) : "0"(displacement), "r"(prefix));
            prefix += displacement;
            firstHalf = (u16)j;
            row = (u8 *)(prefix + firstHalf);
            eightyEight = eleven * 8;
            offset = *row * 4 + eightyEight;
            flags = D_800EF78B[offset];
            /* Keep the halfword index live until the flag read, then reuse it as a test. */
            __asm__("" : "=r"(firstHalf) : "0"(firstHalf), "r"(flags));
            firstHalf = firstHalf < 11;
            D_800EF78B[offset] = flags | 1;
            if (firstHalf) { count++; }
            mode = scratch[0x2E2];
            if (mode == 0 || (u32)(mode - 2) < 2) {
                if (side) {
                    /* Each branch rereads the row and flag byte after the preceding store. */
                    if (!firstHalf) {
                        offset = *row * 4 + eightyEight;
                        D_800EF78B[offset] |= 0x10;
                    } else {
                        offset = *row * 4 + eightyEight;
                        D_800EF78B[offset] |= 2;
                    }
                }
            }
        }
        j++;
    } while ((u16)j < 22);
    count = (u8)count;
    {
        u32 shifted = count * 8;
        u32 callSelector;
        register u32 callId __asm__("$4");
        /* Empty setup inputs preserve shift, call ID, then byte-argument narrowing order. */
        __asm__ volatile("" : : "r"(shifted));
        callId = 0x24;
        __asm__ volatile("" : : "r"(callId));
        callSelector = (u8)selector;
        func_8006FB90(callId, callSelector, shifted + 96);
    }
    return count;
}
