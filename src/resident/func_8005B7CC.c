#include "common.h"

/* Word API view only; original domains and gameplay meaning remain unknown.
 * Narrow all three inputs to unsigned bytes, retain signed remainder arithmetic
 * and the inclusive 128 split, and narrow each returned remainder separately. */
u32 func_8005B7CC(u32 first, u32 second, u32 third)
{
    u32 firstByte = (u8)first;
    u32 secondByte = (u8)second;
    s32 difference = (s32)firstByte - (s32)secondByte;
    u32 distance = (u8)((difference + 256) % 256);
    u32 step = (u8)third;
    u32 result;

    if (distance <= 128) {
        if (step < distance) {
            result = (u8)(((s32)secondByte + (s32)step) % 256);
            goto done;
        }
        goto unchanged;
    } else {
        if ((s32)step < 256 - (s32)distance) {
            goto subtract;
        }
    }
unchanged:
    result = firstByte;
    goto done;
subtract:
    result = (u8)(((s32)secondByte - (s32)step) % 256);
done:
    return result;
}
