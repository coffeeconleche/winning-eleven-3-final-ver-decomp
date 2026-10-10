#include "common.h"

/* Word-level ABI view; original types and gameplay purpose are unknown.
 * The unsigned quotient is at most 5592403, so the signed conversion and
 * addition below are defined for every incoming word. */
s32 func_8002F6C8(u32 value) {
    s32 result;

    if (value < 1024u)
        return 2;

    value -= 1024u;
    result = (s32)(value / 768u) + 2;
    if (result >= 9)
        result = 8;
    return result;
}
