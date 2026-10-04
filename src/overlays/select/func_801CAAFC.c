#include "common.h"

extern s32 func_8006FAF4(u8 selector, u8 index, u8 value);

/* Preserve the original three wrapped-byte loops and ordered byte updates;
 * the callee selects a 40-byte entry then a 12-byte subrecord. */
void func_801CAAFC(void)
{
    u8 i;

    for (i = 0; i < 6; i++) {
        func_8006FAF4(12, i, 0x8C);
        func_8006FAF4(13, i, 0x8D);
        func_8006FAF4(14, i, 0x8C);
        func_8006FAF4(15, i, 0x8D);
    }
    for (i = 1; i < 8; i++) {
        func_8006FAF4(6, i, 0x8C);
        func_8006FAF4(7, i, 0x8D);
        func_8006FAF4(8, i, 0x8C);
        func_8006FAF4(9, i, 0x8D);
    }
    func_8006FAF4(6, 0, 0x69);
    func_8006FAF4(7, 0, 0x6A);
    func_8006FAF4(8, 0, 0x69);
    func_8006FAF4(9, 0, 0x6A);
    for (i = 1; i < 8; i++) {
        func_8006FAF4(16, i, 0x8C);
        func_8006FAF4(17, i, 0x8D);
        func_8006FAF4(18, i, 0x8C);
        func_8006FAF4(19, i, 0x8D);
    }
    func_8006FAF4(16, 0, 0x82);
    func_8006FAF4(16, 1, 0x82);
    func_8006FAF4(17, 0, 0x83);
    func_8006FAF4(17, 1, 0x83);
    func_8006FAF4(18, 0, 0x82);
    func_8006FAF4(18, 1, 0x82);
    func_8006FAF4(19, 0, 0x83);
    func_8006FAF4(19, 1, 0x83);
}
