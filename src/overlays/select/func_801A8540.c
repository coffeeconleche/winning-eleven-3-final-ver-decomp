#include "common.h"

extern void func_80196378(s32, s32, s32, s32, u16, u16, u8, u8, u8, u16);

void func_801A8540(s32 first, s32 second, u8 selector, u8 option) {
    /* Preserve byte wrapping: selector 0 decrements to 255 before scaling. */
    selector--;
    func_80196378(0, first, second, 8, 16, 0xD8 + (selector << 3), 24, 29, 145, option);
}
