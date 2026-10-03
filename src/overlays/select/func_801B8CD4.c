#include "common.h"

extern u8 D_80108668;
extern u8 D_801DA618;
extern u8 D_800FF748[];
extern u8 D_8018B1F0[];
extern void func_801B8D70(void *);

void func_801B8CD4(void) {
    s32 gate = D_80108668;
    s32 i;
    u8 *base = D_800FF748;
    u8 frameSlot[8];

    D_801DA618 = 0;
    i = 0;
    if (gate > 0) {
        u8 *table = D_8018B1F0;
        do {
            /* The entry gate is not retested. Reload the mode byte across
             * calls; the counter and bound comparison remain signed words. */
            func_801B8D70(*(void **)(i * 4 + (u32)(table + base[0x8F20] * 64)));
            i++;
        } while (i < base[0x8F20]);
    }
    /* Retain eight otherwise-unused bytes to reproduce the measured 40-byte
     * frame; the original local purpose is unknown. This output-only memory
     * constraint emits no instructions or memory access. */
    __asm__ volatile ("" : "=m"(frameSlot));
}
