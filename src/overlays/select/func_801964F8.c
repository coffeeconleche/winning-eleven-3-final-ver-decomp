#include "common.h"

extern u8 D_800F1018[];
extern void func_800B3498(void *descriptor, void *entry, s32 selector);

/* Endpoint sums wrap to halfwords; the fifth argument is loaded as a word. */
void func_801964F8(s32 word, s16 x, s16 y, s16 width, u32 height,
                   u8 byte0, u8 byte1, u8 byte2, u8 selector) {
    u32 mode;
    u16 end_x = x + width;

    *(u32 *)0x1F800180 = word;
    mode = *(u8 *)0x1F80029D;
    *(u16 *)0x1F800184 = x;
    *(u16 *)0x1F800186 = y;
    *(u16 *)0x1F800188 = end_x;
    *(u16 *)0x1F80018A = (u32)y + height;
    *(u8 *)0x1F80018C = byte0;
    *(u8 *)0x1F80018D = byte1;
    *(u8 *)0x1F80018E = byte2;
    func_800B3498((void *)0x1F800180, D_800F1018 + mode * 20, selector);
}
