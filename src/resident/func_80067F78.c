#include "common.h"

/* Classify the incoming low bytes without changing the sentinel 255. Historical
 * parameter/return declarations and gameplay meaning remain provisional. */
s32 func_80067F78(u32 first, u32 second)
{
    u32 value = (u8)first;

    if (value == 0) {
        return 255;
    }
    if (value < 12) {
        return !((u8)second < 12);
    }
    return (u8)second < 12;
}
