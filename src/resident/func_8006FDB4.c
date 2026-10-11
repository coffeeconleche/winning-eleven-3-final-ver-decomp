#include "common.h"

/* Only the incoming low byte is observed. The pointer is untouched when zero;
 * the original parameter declaration and the pointed object's layout are unknown.
 * The known caller tests the result's low byte; this word-return view does not
 * establish the historical return type. The initialized result retains the
 * observed nonzero branch and shared return with no matching aids. */
s32 func_8006FDB4(u8 value, u8 *output)
{
    s32 result = 1;
    if (value == 0) {
        result = 0;
    } else {
        *output = 0;
    }
    return result;
}
