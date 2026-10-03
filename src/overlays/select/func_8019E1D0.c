#include "common.h"

extern s32 func_8006F84C(s32 index, s32 value);

void func_8019E1D0(s32 selected) {
    s32 i = 0;
    s32 chosen = (u8)selected;
    s32 second = 0x2C;
    s32 first = 0x26;

    for (; i < 6; second++, i++, first++) {
        if (i == chosen) {
            func_8006F84C(first, 0x80);
            func_8006F84C(second, 0x80);
        } else {
            func_8006F84C(first, 0x50);
            func_8006F84C(second, 0x50);
        }
    }
}
