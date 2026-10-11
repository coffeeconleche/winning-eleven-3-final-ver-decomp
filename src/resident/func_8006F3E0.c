#include "common.h"

/* Both callees consume only the low-byte key and their second word.
 * These are measured ABI views, not complete original helper APIs. */
extern s32 func_8006F428(u32, u32);
extern s32 func_8006F4A8(u32, u32);

s32 func_8006F3E0(u32 key, s32 first, s32 second)
{
    key = (u8)key;
    func_8006F428(key, first);
    func_8006F4A8(key, second);
    return 1;
}
