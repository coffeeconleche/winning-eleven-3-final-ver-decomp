#include "common.h"

/* Scalar views name existing scratch storage without defining new data. */
extern u8 *scratch2F4 __asm__("0x1F8002F4");
extern u8 scratch0B0 __asm__("0x1F8000B0");
extern u8 scratch0B1 __asm__("0x1F8000B1");
extern u8 scratch0B2 __asm__("0x1F8000B2");
extern u8 scratch0B3 __asm__("0x1F8000B3");
extern u32 scratch0B4 __asm__("0x1F8000B4");
extern u32 scratch0B8 __asm__("0x1F8000B8");
extern u8 scratch0BC __asm__("0x1F8000BC");
extern u16 scratch0F8 __asm__("0x1F8000F8");
extern u16 scratch0FA __asm__("0x1F8000FA");
extern u16 scratch0FC __asm__("0x1F8000FC");
extern void func_8004BAA4(u16);

s32 func_8004B2E0(u8 count)
{
    u8 *descriptor = scratch2F4;
    u8 *scratch;
    s32 i = 0;

    scratch0B0 = descriptor[0x396];
    scratch0F8 = *(u16 *)(descriptor + 2);
    scratch0FA = *(u16 *)(descriptor + 4);
    scratch0FC = *(u16 *)(descriptor + 6);
    scratch0B1 = descriptor[0x3A4];
    scratch0B4 = *(u32 *)(descriptor + 0x3A0);
    scratch0B8 = *(u32 *)(descriptor + 0xC);
    scratch0B2 = *(u16 *)(descriptor + 0x3C8);
    scratch0B3 = *(u16 *)(descriptor + 0x3CA);
    scratch0BC = *(u16 *)(descriptor + 0x3BC);

    scratch = (u8 *)0x1F800000;
    for (; i < count; i++) {
        func_8004BAA4((u16)(i + *(u32 *)(scratch + 0x290)));
        if (i != 0 && count == 255) {
            u32 half = *(u16 *)(scratch + 0xFA);
            if ((s16)half == -32) {
                return (u8)(i + 1);
            }
        }
    }
    return 0;
}
