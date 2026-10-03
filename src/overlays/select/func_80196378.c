#include "common.h"

extern u8 D_800FF748[], D_800F1018[];
extern void func_800B3FB8(void *descriptor, void *entry, u16 selector);

void func_80196378(s32 word, s16 x, s16 y, s16 width, u16 height,
                   u8 byte0, u8 byte1, u8 byte2, u8 index, u16 selector) {
    u8 *base = D_800FF748;
    u8 *entry;
    u16 field;
    u32 mode;

    *(u32 *)0x1F80015C = word;
    *(u16 *)0x1F800160 = x;
    *(u16 *)0x1F800162 = y;
    *(u16 *)0x1F800164 = width;
    *(u16 *)0x1F800166 = height;
    entry = base + index * 4;
    *(u8 *)0x1F80016A = byte0;
    *(u8 *)0x1F80016B = byte1;
    *(u16 *)0x1F800168 = byte2;
    *(u16 *)0x1F80016C = *(u16 *)(entry + 0x7FA6);
    field = *(u16 *)(entry + 0x7FA4);
    mode = *(u8 *)0x1F80029D;
    *(u8 *)0x1F800170 = 0x80;
    *(u8 *)0x1F800171 = 0x80;
    *(u8 *)0x1F800172 = 0x80;
    *(u16 *)0x1F80016E = field;
    func_800B3FB8((void *)0x1F80015C, D_800F1018 + mode * 20, selector);
}
