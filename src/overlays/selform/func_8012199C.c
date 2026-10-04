#include "common.h"

extern u8 D_80105968[];
extern u8 *func_8001D004(u32);

/* Measured halfword views; the original aggregate types are unknown. */
void func_8012199C(u32 selector, u8 index) {
    u32 mode = (u8)(*(u8 *)0x1F8002E0 ^ selector);
    u8 *destination = (u8 *)(mode * 40 + (u32)D_80105968);
    u8 *source = (u8 *)(index * 12 + (u32)func_8001D004(mode | 0x1000));

    *(u16 *)(destination + 0x10) = *(u16 *)(source + 6) + 54;
    *(u16 *)(destination + 0x12) = *(u16 *)(source + 8) + 75;
}
