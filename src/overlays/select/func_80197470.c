#include "common.h"

/* Two-byte lookup strides are access views; original table meanings are unknown. */
typedef struct {
    u8 value;
    u8 remaining;
} ByteStride2;

extern u8 D_800FF748[];
extern ByteStride2 D_801D1B90[], D_801D1B91[];

void func_80197470(u8 value, u16 half160, u16 half162, u8 selector) {
    u8 *base = D_800FF748;
    u8 *entry;
    u8 byte;

    if ((u8)(value - 0x41) < 26 || (u8)(value - 0x61) < 26) {
        *(u16 *)0x1F800166 = 16;
        *(u16 *)0x1F800168 = 23;
        entry = base + selector * 4;
        *(u32 *)0x1F80015C = 0;
        *(u16 *)0x1F800160 = half160;
        *(u16 *)0x1F800162 = half162;
        *(u16 *)0x1F80016C = *(u16 *)(entry + 0x7FA6);
        *(u16 *)0x1F80016E = *(u16 *)(entry + 0x7FA4);
        byte = value;
        if (byte >= 0x61) {
            u8 second;
            s32 index = byte - 0x47;
            *(u8 *)0x1F80016A = D_801D1B90[index].value;
            second = D_801D1B91[index].value;
            *(u8 *)0x1F80016B = 0x40;
            *(u16 *)0x1F800164 = second;
        } else {
            s32 index = byte - 0x41;
            *(u8 *)0x1F80016A = D_801D1B90[index].value;
            *(u16 *)0x1F800164 = D_801D1B91[index].value;
            if (byte == 0x5A) {
                *(u8 *)0x1F80016B = 0x10;
            } else {
                *(u8 *)0x1F80016B = 0;
            }
        }
    } else {
        *(u16 *)0x1F800164 = 0;
    }
}
