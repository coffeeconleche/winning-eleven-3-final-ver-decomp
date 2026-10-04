#include "common.h"

extern u8 D_800FF748[], D_80108667;

/* Local byte/word access views; original record names and bounds are unknown. */
void func_801AA524(u8 index, u32 shift, u8 state, u8 third, u8 last) {
    u8 *base = D_800FF748;
    u32 one = 1;
    /* Retain the raw shift word in t1 across the word-update branches and the
     * alternative byte-store path. The retail SLLV uses only its low five bits;
     * the original prototype/C shift-count validity outside 0..31 is unknown. */
    register u32 savedShift __asm__("$9") = shift;
    u32 fourth = last;
    u32 flags;

    if (*(u8 *)0x1F8002E1 == 1 ||
        ((D_80108667 & 15) != 0 && (D_80108667 & 64) == 0)) {
        /* The address ties below keep the first word store ahead of the
         * second address/load, and materialize that address without splitting
         * it into repeated out-of-range offsets. No memory clobbers are needed. */
        switch (state) {
        case 0: {
            u8 *row = base + index * 4;
            u32 *first = (u32 *)(row + 0xA9D0);
            u32 mask;
            mask = one << savedShift;
            *first &= ~mask;
            __asm__ volatile ("" : "=r"(row) : "0"(row));
            row += 0xAA50;
            __asm__("" : "=r"(row) : "0"(row));
            *(u32 *)row &= ~mask;
            break;
        }
        case 1: {
            u8 *row = base + index * 4;
            /* This case retains its distinct pointer/mask allocation. */
            register u32 *first __asm__("$5") = (u32 *)(row + 0xA9D0);
            u32 mask;
            mask = one << savedShift;
            *first &= ~mask;
            __asm__ volatile ("" : "=r"(row) : "0"(row));
            row += 0xAA50;
            __asm__("" : "=r"(row) : "0"(row));
            *(u32 *)row |= mask;
            break;
        }
        case 2: {
            u8 *row = base + index * 4;
            u32 *first = (u32 *)(row + 0xA9D0);
            u32 mask;
            mask = one << savedShift;
            *first |= mask;
            __asm__ volatile ("" : "=r"(row) : "0"(row));
            row += 0xAA50;
            __asm__("" : "=r"(row) : "0"(row));
            *(u32 *)row &= ~mask;
            break;
        }
        case 3: {
            u8 *row = base + index * 4;
            u32 *first = (u32 *)(row + 0xA9D0);
            u32 mask;
            mask = one << savedShift;
            *first |= mask;
            __asm__ volatile ("" : "=r"(row) : "0"(row));
            row += 0xAA50;
            __asm__("" : "=r"(row) : "0"(row));
            *(u32 *)row |= mask;
            break;
        }
        }
    } else {
        flags = *(u32 *)(base + 0x8F1C);
        if ((flags & 0x4F000000) == 0) {
            /* Retain the byte index separately from the scaled addresses. */
            register u32 narrowed __asm__("$5") = index;
            u8 *record = base + narrowed * 36;
            s32 row = narrowed * 12;
            /* Each byte store can alias the selector: keep all four rereads. */
            ((u8 *)((u32)base + (u32)(row + record[0x8F26] * 4)))[0xA9D0] = state;
            ((u8 *)((u32)base + (u32)(row + record[0x8F26] * 4)))[0xA9D1] = savedShift;
            ((u8 *)((u32)base + (u32)(row + record[0x8F26] * 4)))[0xA9D2] = third;
            ((u8 *)((u32)base + (u32)(row + record[0x8F26] * 4)))[0xA9D3] = fourth;
        }
    }
    /* Prevent case-local masks from overwriting the retained raw argument. */
    __asm__ volatile ("" : : "r"(savedShift));
}
