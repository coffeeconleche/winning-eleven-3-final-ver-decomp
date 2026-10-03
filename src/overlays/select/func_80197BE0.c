#include "common.h"

extern u8 D_800FF748[];

void func_80197BE0(u32 character, s16 x, s16 y, u8 index) {
    u8 *base = D_800FF748;
    u8 *entry;
    u16 field;

    /* Test the wrapped byte, but keep the word-sized value for the later shift. */
    character -= 0x30;
    if ((u8)character < 10) {
        *(u16 *)0x1F800168 = 9;
        entry = base + index * 4;
        *(u32 *)0x1F80015C = 0;
        *(u16 *)0x1F800160 = x;
        *(u16 *)0x1F800162 = y;
        *(u16 *)0x1F80016C = *(u16 *)(entry + 0x7FA6);
        field = *(u16 *)(entry + 0x7FA4);
        *(u8 *)0x1F80016A = character << 3;
        *(u8 *)0x1F80016B = 0x90;
        *(u16 *)0x1F800164 = 8;
        *(u16 *)0x1F800166 = 16;
        *(u16 *)0x1F80016E = field;
    }
}
