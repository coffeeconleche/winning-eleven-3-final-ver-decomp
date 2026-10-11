#include "common.h"

/* Partial record and measured call views; original APIs remain provisional. */
extern void func_800AB620(s32);
extern s32 func_8001E6B8(s32);
extern s32 func_80057AE4(u8 *, u32, u32);

void func_800571E0(u8 *record)
{
    func_800AB620(17);
    if (func_8001E6B8(2) == 0 || func_80057AE4(record, 0, 1) == 0) {
        s32 argument;

        if (func_8001E6B8(2) != 0) {
            argument = func_8001E6B8(2) + 0xCD7;
        } else if (func_8001E6B8(2) != 0) {
            argument = 0xCE5;
        } else {
            argument = 0xCEA;
        }
        func_800AB620(argument);
    }
}
