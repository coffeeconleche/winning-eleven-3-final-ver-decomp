#include "common.h"

/* Word arguments and result model the observed registers, not a recovered API.
 * Only the low unsigned halfword of the bound participates in the clamp. */
s32 func_80094444(s32 *value, s32 bound)
{
    s32 current = *value;
    s32 comparison;

    bound = (u16)bound;
    comparison = bound < current;
    if (comparison == 0) {
        bound = -bound;
        comparison = current < bound;
        if (comparison == 0) {
            return comparison;
        }
    }
    *value = bound;
    return comparison;
}
