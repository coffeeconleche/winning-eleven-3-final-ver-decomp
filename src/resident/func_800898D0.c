#include "common.h"

/* Word argument/result views reflect the measured call. The helper returns
 * zero or one; the accepted byte setter leaves $v0 untouched. The wrapper's
 * original return API is unknown, and its caller ignores that residue. */
extern s32 func_8004FB68(u32 value);
extern void func_800171C4(u32 value);

void func_800898D0(void)
{
    if (func_8004FB68(0) != 0) {
        func_800171C4(10);
    }
}
