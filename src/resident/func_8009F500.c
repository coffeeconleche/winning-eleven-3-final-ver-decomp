#include "common.h"

/* Word ABI view, with signed low-halfword inputs and sign-extended result.
 * No direct caller was found; the original formal API remains provisional.
 * The difference/magnitude stays a word (up to 65535), not a halfword.
 * Negative increments and final low-halfword wrap are retained. */
s32 func_8009F500(s32 target, s32 current, s32 step)
{
    s32 result;
    /* One allocation aid keeps narrowing in the incoming a2 register.
     * Removing it changes both the magnitude temporary and delay scheduling.
     * A result binding and empty constraint were measured and removed. */
    register s32 increment __asm__("$6") = step;

    current = (s16)current;
    target = (s16)target;
    result = current - target;
    if (result < 0) {
        result = -result;
    }
    increment = (s16)increment;
    if (result < increment) {
        result = target;
    } else {
        if (target - current >= 0) {
            result = current + increment;
        } else {
            result = current - increment;
        }
        result = (s16)result;
    }
    return result;
}
