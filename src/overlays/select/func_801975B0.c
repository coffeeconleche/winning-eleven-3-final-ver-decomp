#include "common.h"
extern u8 D_800FF748[], D_801D1CB8[], D_801D1CB9[], D_801D1CBA[];
extern u8 D_801D1BF8[], D_801D1BF9[];
extern u16 D_801078E6, D_801078E4;
/* Scalar PSX scratch views retain the measured access widths and order. */
extern u16 scratch168 __asm__("0x1F800168");
extern u32 scratch15C __asm__("0x1F80015C");
extern u16 scratch16C __asm__("0x1F80016C");
extern u16 scratch160 __asm__("0x1F800160");
extern u16 scratch162 __asm__("0x1F800162");
extern u16 scratch166 __asm__("0x1F800166");
extern u16 scratch16E __asm__("0x1F80016E");
extern u8 scratch16A __asm__("0x1F80016A");
extern u8 scratch16B __asm__("0x1F80016B");
extern u16 scratch164 __asm__("0x1F800164");
/* Word-width caller views; the complete original prototype is unknown.
 * Build the scratch descriptor using byte-wrapped character classes and two
 * retained byte tables. The complete character/table domain is not known;
 * keep the original unchecked lookups and palette rereads. */
void func_801975B0(u32 character, s32 x, s32 y, u32 selector) {
    u32 header;
    u8 *base;
    u32 selected;
    u8 *palette;
    u32 width;
    u32 index;
    u32 temporary;
    /* Scoped bindings retain the measured raw-code/x captures and byte views.
     * The empty inputs below constrain scheduling only, emitting no code. */
    register u32 captured __asm__("$10");
    u8 special;
    u16 half;
    u8 *scratch;
    register s32 capturedX __asm__("$15");
    header = 23;
    base = D_800FF748;
    selected = (u8)selector;
    __asm__ volatile("" : : "r"(base), "r"(selected));
    scratch168 = header;
    index = selected * 4;
    palette = base + index;
    capturedX = x;
    width = 16;
    __asm__ volatile("" : : "r"(palette), "r"(capturedX), "r"(width));
    scratch15C = 0;
    half = *(u16 *)(palette + 0x7FA6);
    __asm__ volatile("" : : "r"(half));
    /* Retain the independent scratch-base value used by the later stores. */
    scratch = (u8 *)0x1F800000;
    __asm__ volatile("" : "=r"(scratch) : "0"(scratch));
    scratch16C = half;
    half = *(u16 *)(palette + 0x7FA4);
    scratch160 = capturedX;
    scratch162 = y;
    scratch166 = width;
    scratch16E = half;
    temporary = character + 128;
    __asm__ volatile("" : : "r"(temporary));
    special = (u8)temporary;
    captured = character;
    if (special < 5) {
        register u32 narrowed __asm__("$5") = (u8)captured;
        s32 offset;
        offset = (narrowed - 128) * 3;
        scratch16A = D_801D1CB8[offset];
        scratch16B = D_801D1CB9[offset];
        half = D_801D1CBA[offset];
        scratch166 = width;
        scratch164 = half;
        if (special < 4) {
            scratch168 = 28;
            character &= 127;
            if (narrowed == 131) {
                u16 first = D_801078E6;
                u16 second = D_801078E4;
                scratch16C = first;
                scratch16E = second;
            } else {
                u8 *row = base + (character + 125) * 4;
                scratch16C = *(u16 *)(row + 0x7FA6);
                scratch16E = *(u16 *)(row + 0x7FA4);
            }
        } else if (selected) {
            scratch16C = *(u16 *)(palette + 0x7FA6);
            scratch16E = *(u16 *)(palette + 0x7FA4);
        }
    } else if ((u8)(character - 134) < 26) {
        u32 code = (u8)captured;
        s32 offset;
        u32 page;
        scratch164 = 10;
        if (selected) {
            scratch16C = *(u16 *)(palette + 0x7FA6);
            scratch16E = *(u16 *)(palette + 0x7FA4);
        }
        if (code < 146) {
            /* These scoped subtraction views retain the measured branch-delay
             * arithmetic and its reused temporary; the inputs emit no code. */
            register u32 adjusted __asm__("$2") = code - 134;
            __asm__ volatile("" : : "r"(adjusted));
            offset = adjusted * 10 - 128;
            page = 96;
        } else if (code == 159) {
            scratch16A = 216;
            scratch16B = 64;
            return;
        } else {
            register u32 adjusted __asm__("$2") = code - 146;
            __asm__ volatile("" : : "r"(adjusted));
            offset = adjusted * 10;
            page = 112;
        }
        scratch16A = offset;
        scratch16B = page;
        __asm__ volatile("" : : "r"(captured));
    } else {
        u32 code;
        code = (u8)captured;
        if ((u8)(character - 166) < 10) {
            scratch164 = code == 166 ? 8 : 7;
            if ((u8)selector) {
                /* Word-address view preserves the measured PSX address-add order. */
                u8 *row = (u8 *)((u32)base + (u8)selector * 4);
                *(u16 *)(scratch + 0x16C) = *(u16 *)(row + 0x7FA6);
                *(u16 *)(scratch + 0x16E) = *(u16 *)(row + 0x7FA4);
            }
            {
                u32 byte;
                byte = (u8)captured;
                byte = byte * 8 - 1448;
                *(u8 *)(scratch + 0x16A) = byte;
            }
            *(u8 *)(scratch + 0x16B) = 112;
        } else if (code == 176) {
            scratch164 = 4;
            if (selected) {
                scratch16C = *(u16 *)(palette + 0x7FA6);
                scratch16E = *(u16 *)(palette + 0x7FA4);
            }
            scratch160 = x + 1;
            scratch16A = 96;
            scratch16B = 16;
        } else if ((u8)(character - 176) < 48) {
            u32 offset = character + 79;
            scratch164 = 8;
            if (selected) {
                scratch16C = *(u16 *)(palette + 0x7FA6);
                scratch16E = *(u16 *)(palette + 0x7FA4);
            }
            if ((u8)offset < 31) {
                scratch16A = offset * 8;
                scratch16B = 80;
            } else {
                scratch16A = (character + 48) * 8;
                scratch16B = 96;
            }
        } else {
            s32 offset = (code - 32) * 2;
            register u32 key __asm__("$4");
            u32 pairOffset;
            u32 second;
            scratch16A = D_801D1BF8[offset];
            if (code < 65) scratch16B = 16;
            else {
                u32 below = code < 97;
                if (below) scratch16B = 32;
                else scratch16B = 48;
            }
            key = (u8)captured;
            pairOffset = key - 32;
            second = D_801D1BF9[pairOffset * 2];
            *(u16 *)(scratch + 0x166) = 16;
            *(u16 *)(scratch + 0x164) = second;
            if ((u8)selector) {
                /* Word-address view preserves the measured PSX address-add order. */
                u8 *row = (u8 *)((u32)base + (u8)selector * 4);
                *(u16 *)(scratch + 0x16C) = *(u16 *)(row + 0x7FA6);
                *(u16 *)(scratch + 0x16E) = *(u16 *)(row + 0x7FA4);
            }
            *(u16 *)(scratch + 0x160) = capturedX;
            if (key == 94) *(u16 *)(scratch + 0x162) = y - 2;
            else *(u16 *)(scratch + 0x162) = y;
        }
    }
}
