#include "common.h"

/* Compare signed low halfwords, checking the upper bound first even when the
 * bounds are inverted. The parameter types remain a provisional ABI view. */
s32 func_8005C454(s16 *value, s16 upper, s16 lower)
{
    s32 current = *value;

    if (upper < current) {
        *value = upper;
        return 1;
    }
    if (current < lower) {
        *value = lower;
        return 1;
    }
    return 0;
}
