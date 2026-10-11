#include "common.h"

/* Provisional word ABI view for the four registers; only their signed low
 * halfwords participate. The fifth argument is the signed halfword at the
 * caller's sp+0x10, not a pointer or an unsigned/full-word radius.
 * Bounds are calculated as words: no narrowing or inclusive edge test.
 * No direct caller was found, so names and the full API remain provisional. */
s32 func_8005AD84(s32 x, s32 y, s32 centerX, s32 centerY, s16 radius)
{
    /* One measured allocation aid retains the boolean in v0; removing it
     * changes the radius/condition registers, scheduling and final move. */
    register s32 result __asm__("$2") = 0;

    x = (s16)x;
    centerX = (s16)centerX;
    if (centerX - radius < x && x < centerX + radius) {
        s32 boundY;

        y = (s16)y;
        boundY = (s16)centerY;
        if (boundY - radius < y) {
            result = y < boundY + radius;
        }
    }
    return result;
}
