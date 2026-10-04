#include "common.h"

extern u8 D_800FFF03[];

void func_8018A6C0(u8 selector)
{
    u32 i = 0;

    for (; (u8)i < 22; i++) {
        u8 *row = D_800FFF03 + i * 1000;
        /* Added offsets wrap to u16 before the unsigned range tests. */
        switch (selector) {
        case 0:
            row[0] = 0;
            break;
        case 1:
            row[0] = 1;
            break;
        case 2:
            if ((u16)(*(u16 *)(row - 0x3BF) + 0x158) > 0x2B0 ||
                (u16)(*(u16 *)(row - 0x3BD) + 0xC0) > 0x180) {
                row[0] = 0;
            } else {
                row[0] = 1;
            }
            break;
        case 3:
            if ((u16)(*(u16 *)(row - 0x3BF) + 0x180) > 0x300 ||
                (u16)(*(u16 *)(row - 0x3BD) + 0xE8) > 0x1D0) {
                row[0] = 0;
            } else {
                row[0] = 1;
            }
            break;
        case 4:
            if ((u16)(*(u16 *)(row - 0x3BF) + 0x110) > 0x220) {
                row[0] = 0;
            } else {
                row[0] = 1;
            }
            break;
        }
    }
}
