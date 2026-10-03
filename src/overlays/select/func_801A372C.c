#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801DAD88[44];
extern u8 D_801DADB0;
extern u8 D_801DADB1;
extern u8 D_801DADB2;

/* Initialize byte statuses and clear mode-selected contiguous ranges. */
void func_801A372C(u8 mode) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *entry;
    /* Reuse a1 for the fill value and later range base, not the loop cursor. */
    register u8 *last asm("$5");
    s32 i;
    s32 status;
    register s32 fill asm("$5");

    fill = 2;
    i = 43;
    /* Prepare both bases, fill and count before materializing the reverse cursor. */
    __asm__ volatile ("" : : "r"(base), "r"(scratch), "r"(fill), "r"(i));
    entry = D_801DAD88 + 43;
    for (; i >= 0; i--) {
        *entry-- = fill;
    }
    status = (base[0xABE2] >> 1) & 1;
    if (!status) {
        status = 3;
    } else {
        status = 2;
    }
    D_801DADB0 = status;
    D_801DADB1 = status;
    status = (base[0xABE2] >> 2) & 1;
    if (!status) {
        status = 3;
    } else {
        status = 2;
    }
    D_801DADB2 = status;
    /* Keep the third status store before the last-entry address setup. */
    __asm__ volatile ("" : : "r"(status));
    last = D_801DAD88 + 43;
    *last = 3;
    /* Complete the status store before narrowing mode for the switch. */
    __asm__ volatile ("" : : "r"(last) : "memory");

    switch (mode) {
    default:
        scratch[0x2DD] = 0;
        i = 39;
        /* Preserve count-before-cursor setup for the default reverse clear. */
        __asm__ volatile ("" : : "r"(i));
        entry = D_801DAD88 + 39;
        for (; i >= 0; i--) {
            *entry-- = 0;
        }
        if ((base[0xABE2] >> 1) & 1) {
            D_801DADB0 = 0;
            D_801DADB1 = 0;
        }
        if ((base[0xABE2] >> 2) & 1) {
            D_801DADB2 = 0;
        }
        break;
    case 2:
        scratch[0x2DD] = 0;
        entry = last - 22;
        for (i = 21; i >= 0; i--) {
            *entry-- = 0;
        }
        break;
    case 3:
        scratch[0x2DD] = 22;
        for (i = 22; i < 27; i++) {
            D_801DAD88[i] = 0;
        }
        break;
    case 4:
        scratch[0x2DD] = 27;
        for (i = 27; i < 35; i++) {
            D_801DAD88[i] = 0;
        }
        break;
    case 5:
        scratch[0x2DD] = 35;
        for (i = 35; i < 40; i++) {
            D_801DAD88[i] = 0;
        }
        break;
    }
}
