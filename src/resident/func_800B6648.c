#include "common.h"

/* Measured call-site view of the unchanged original helper. */
extern s32 func_800B6684(u32);

/* One known direct caller (func_800B6588). Mask the input magnitude to
 * 12 bits and negate the helper result for negative input. Unsigned
 * subtraction preserves the original NEGU word wrap, including INT_MIN.
 * The signed formal/result are measured 32-bit target ABI views; the
 * original helper's purpose and historical declarations remain unknown. */
s32 func_800B6648(s32 value)
{
    if (value < 0) {
        return (s32)(0U - (u32)func_800B6684((0U - (u32)value) & 0xFFF));
    }
    return func_800B6684(value & 0xFFF);
}
