#include "common.h"

/* Only the low incoming byte is observed; original formal types and
 * gameplay meanings remain provisional. */
s32 func_8005CE30(u32 selector)
{
    s32 result = 12;

    selector = (u8)selector;
    if (selector >= 12) {
        result = 1;
    }
    return result;
}
