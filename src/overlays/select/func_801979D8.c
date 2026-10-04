#include "common.h"

extern u8 D_800FF748[];

/* Populate the observed scratch descriptor. Unsupported character bytes leave
 * its three character-specific fields unchanged; the table layout is unknown. */
void func_801979D8(u32 character, s32 x, s32 y, u8 selector) {
    u8 *base = D_800FF748;
    u32 letter;
    u32 width;
    /* These two lifetimes preserve the observed capture and divide registers. */
    register u32 offset asm("$4");
    {
        register u32 capture asm("$8") = character;
        if ((u8)(character - 97) < 26) {
            capture = character - 32;
        }
        letter = capture;
    }
    {
        u32 adjusted = y + 2;
        *(u16 *)0x1F800160 = x;
        width = 8;
        /* Complete width setup between the two coordinate stores. No emitted
         * instructions or memory accesses are supplied by this constraint. */
        __asm__ volatile ("" : : "r"(width));
        *(u16 *)0x1F800162 = adjusted;
    }
    *(u16 *)0x1F800168 = 29;
    *(u32 *)0x1F80015C = 0;
    *(u16 *)0x1F800166 = width;
    *(u16 *)0x1F80016C = *(u16 *)(base + selector * 4 + 0x7FA6);
    *(u16 *)0x1F80016E = *(u16 *)(base + selector * 4 + 0x7FA4);
    if ((u8)letter == 0xB2) {
        *(u8 *)0x1F80016A = 32;
        *(u8 *)0x1F80016B = 8;
        *(u16 *)0x1F800164 = 16;
    } else if ((u8)letter == 0xDB) {
        *(u8 *)0x1F80016B = 56;
        *(u8 *)0x1F80016A = 0;
        *(u16 *)0x1F800164 = 16;
    } else if ((u8)letter == 0xCA) {
        *(u8 *)0x1F80016A = 16;
        *(u8 *)0x1F80016B = 48;
        *(u16 *)0x1F800164 = 18;
    } else if ((u8)letter == 0xC6) {
        *(u8 *)0x1F80016A = 40;
        *(u8 *)0x1F80016B = 48;
        *(u16 *)0x1F800164 = 6;
    } else if ((u8)(letter - 48) < 6) {
        *(u8 *)0x1F80016A = (letter - 48) * 8;
        *(u8 *)0x1F80016B = 0;
        *(u16 *)0x1F800164 = 6;
    } else if ((u8)(letter - 54) < 4) {
        *(u8 *)0x1F80016A = (letter - 54) * 8;
        *(u8 *)0x1F80016B = 8;
        *(u16 *)0x1F800164 = 6;
    } else {
        u32 check;
        offset = letter - 65;
        check = (u8)offset;
        /* Keep the range-test byte separate from the later re-narrowing, which
         * occupies the original branch delay slot. This is an empty tie. */
        __asm__("" : "=r"(offset) : "0"(offset));
        if (check < 26) {
            offset = (u8)offset;
            *(u16 *)0x1F800164 = width;
            *(u8 *)0x1F80016A = (offset % 6u) * 8;
            *(u8 *)0x1F80016B = (offset / 6u) * 8 + 16;
        }
    }
}
