#include "common.h"

/* Original record/API meanings and return contract remain provisional.
 * The helper returns a signed remainder: negative nonzero values take the
 * same branches as positive ones. Its final divisor-two result is -1..1,
 * so adding 0xCD7 stays within signed-word range. */
extern void func_800AB620(s32);
extern s32 func_8001E6B8(s32);
extern s32 func_80057AE4(u8 *, u32, u32);

void func_8005715C(u8 *record)
{
    s32 selector;
    func_800AB620(17);
    if (func_8001E6B8(2) != 0 && func_80057AE4(record, 0, 1) != 0) {
        return;
    }
    if (func_8001E6B8(16) == 0) {
        selector = 0xCE2;
    } else if (func_8001E6B8(4) == 0) {
        selector = 0xCE3;
    } else {
        selector = func_8001E6B8(2) + 0xCD7;
    }
    func_800AB620(selector);
}
