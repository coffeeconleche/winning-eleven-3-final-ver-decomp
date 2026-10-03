#include "common.h"

extern u8 D_800F1018[];
extern void func_800B3498(void *descriptor, void *entry, s32 selector);

void func_8019645C(s32 word, s16 x, s16 y, s16 width, u16 height,
                   u8 byte0, u8 byte1, u8 byte2, u8 selector) {
    u32 mode;

    *(u32 *)0x1F800180 = word;
    mode = *(u8 *)0x1F80029D;
    *(u16 *)0x1F800184 = x;
    *(u16 *)0x1F800186 = y;
    *(u16 *)0x1F800188 = width;
    *(u16 *)0x1F80018A = height;
    *(u8 *)0x1F80018C = byte0;
    *(u8 *)0x1F80018D = byte1;
    *(u8 *)0x1F80018E = byte2;
    func_800B3498((void *)0x1F800180, D_800F1018 + mode * 20, selector);
}
