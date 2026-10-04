#include "common.h"

extern s8 D_801D429E;
extern s8 D_801D429F;
extern u8 D_801D4298;
/* Retain caller words before the descriptor callee narrows its fields. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                        s32, s32, s32, s32, s32, s32, s32, s32);

/* Ordered descriptor updates and the observed signed-byte counter policy;
 * original counter/selector and descriptor field meanings remain unknown. */
void func_801C49F0(u8 reset)
{
    u8 i;
    s32 color;
    s32 count;
    s32 next;
    /* Keep the next value separate from the signed old counter register. */
    register s32 raw __asm__("v0");
    s32 selector;
    s32 key;
    s32 index;

    if (reset) {
        D_801D429F = 0;
        D_801D429E = 16;
    } else {
        func_80193FB4(20, 0x7001, 0x40000000, 0, 0, 12, 0, 4096, 4096,
                     0, 0, 128, 128, 128, 0, 4, 1);
        for (i = 0; i < 8; i++) {
            func_80193FB4(i + 21, i + 0x7004, 0x40000000, 0, 0, 12, 0,
                         4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
        }
        count = D_801D429E;
        /* The final color uses the old counter, before the byte-wrapped update. */
        color = count * 2;
        if (D_801D429F) raw = count - 1;
        else raw = count + 1;
        D_801D429E = raw;
        next = (s8)raw;
        if (next >= 100) D_801D429F = 1;
        if (next < 49) D_801D429F = 0;
        selector = D_801D4298;
        if (selector) {
            index = selector + 20;
            key = selector + 0x7003;
        } else {
            index = 20;
            key = 0x7001;
        }
        func_80193FB4(index, key, 0, 0, 0, 12, 0, 4096, 4096,
                     0, 0, (u8)color, (u8)color, (u8)color, 0, 4, 1);
        /* Preserve the old word while its narrowed byte feeds the three
         * descriptor arguments; do not narrow the saved register in place. */
        __asm__ volatile("" : : "r"(color));
    }
}
