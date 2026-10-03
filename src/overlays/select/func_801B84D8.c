#include "common.h"

extern u8 D_80108668;
extern u32 D_801DA064;
extern u8 D_800FF748[];
extern u8 D_8018B1F0[];
extern void func_801B85E4(void *, u8);
extern void func_801B89D0(void *);

void func_801B84D8(u8 selector) {
    /* Capture the first-pass gate before clearing the word counter. */
    u32 gate = D_80108668;
    u32 i;
    u8 *base = D_800FF748;
    u32 mode;

    D_801DA064 = 0;
    i = 0;
    if (gate != 0) {
        u8 *table = D_8018B1F0;
        do {
            /* Preserve the byte index before the word-sized increment. */
            u32 index = (u8)i;
            i++;
            func_801B85E4(*(void **)(index * 4 + (u32)(table + base[0x8F20] * 64)), selector);
        } while ((u8)i < base[0x8F20]);
    }
    /* The second pass is gated by the current mode, not the saved entry gate. */
    mode = base[0x8F20];
    i = 0;
    if (mode != 0) {
        u8 *table = D_8018B1F0;
        do {
            u8 *row = (u8 *)(mode * 64 + (u32)table);
            /* Complete row setup before narrowing the index, retaining the
             * reference back-edge scheduling. This input emits no code. */
            __asm__ volatile ("" : : "r"(row));
            func_801B89D0(((void **)row)[(u8)i]);
            i++;
            mode = base[0x8F20];
        } while ((u8)i < mode);
    }
}
