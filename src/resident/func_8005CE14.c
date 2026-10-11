#include "common.h"

/* Only the incoming low byte participates. This word parameter and result
 * are ABI views; the original formal types and selector meaning are unknown. */
s32 func_8005CE14(u32 value)
{
    s32 result = 1;

    if ((u8)value >= 12) {
        result = 12;
    }
    return result;
}
