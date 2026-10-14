#include "common.h"

/* Measured call-site view of the unchanged original helper. */
extern s32 func_800B6684(u32);

/* One direct caller (func_800B6588). Computes the helper's absolute
 * value with the measured 0xFFF mask on the magnitude; the signed
 * formal and result are ABI views. */
s32 func_800B6648(s32 value)
{
    if (value < 0) {
        return -func_800B6684(-value & 0xFFF);
    }
    return func_800B6684(value & 0xFFF);
}
