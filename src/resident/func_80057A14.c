#include "common.h"

/* Measured call/access views; complete record and original APIs are unknown. */
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);
extern s32 func_80057AE4(u8 *, u32, u32);

void func_80057A14(u8 *record)
{
    if (*(u8 *)0x1F80029A == 1 && func_8001E6B8(3) == 0) {
        func_800AB620(16);
        if (func_8001E6B8(2) != 0 || func_80057AE4(record, 0, 1) == 0) {
            func_800AB620(func_8001E6B8(2) + 0xD47);
        }
    }
}
