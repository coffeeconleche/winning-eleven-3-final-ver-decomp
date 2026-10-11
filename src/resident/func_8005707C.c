#include "common.h"

extern void func_800AB620(u32);
extern s32 func_8001E6B8(s32);
extern s32 func_80057AE4(void *, u32, u32);

/* Preserve conditional random draws and callbacks in their original order.
 * The record and helper APIs remain provisional; this void view does not claim
 * an original return contract and leaves the last callback's register residue. */
void func_8005707C(void *record)
{
    u32 code;

    func_800AB620(17);
    if (func_8001E6B8(2) != 0 && func_80057AE4(record, 0, 1) != 0) {
        return;
    }
    if (func_8001E6B8(3) != 0) {
        code = func_8001E6B8(2) + 0xCD7;
    } else {
        code = 0xCE9;
    }
    func_800AB620(code);
}
