#include "common.h"

extern u32 D_801D7F88;
extern u16 D_801D7F8C, D_801D7F8E, D_801D7F90, D_801D7F92;
extern u8 D_801D7F94, D_801D7F95, D_801D7F96;
extern u8 D_800F1018[];
extern void func_800B3728(void *descriptor, void *entry, s32 selector);

void func_80196800(s32 word, s16 x, s16 y, s16 width, u16 height,
                   u8 byte0, u8 byte1, u8 byte2, u8 selector) {
    u32 mode = *(u8 *)0x1F80029D;
    register u32 *descriptor asm("$3") = &D_801D7F88;

    /* Retain the descriptor base while the five stack arguments remain live. */
    __asm__ volatile ("" : : "r"(descriptor));
    *descriptor = word;
    D_801D7F8C = x;
    D_801D7F8E = y;
    D_801D7F90 = width;
    D_801D7F92 = height;
    D_801D7F94 = byte0;
    D_801D7F95 = byte1;
    D_801D7F96 = byte2;
    func_800B3728(descriptor, D_800F1018 + mode * 20, selector);
}
