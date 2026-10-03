#include "common.h"

extern u8 D_8011CAF4[];

u8 func_801B3D20(u8 value) {
    u8 *cursor = D_8011CAF4;
    s32 sum = *cursor;
    s32 count = 1;
    s32 result;

    /* The cumulative scan has no explicit limit or invalid-input fallback. */
    if (value >= sum) {
        cursor++;
        do {
            sum += *cursor++;
            count++;
        } while (value >= sum);
    }
    count--;
    sum = 0;
    result = 0;
    /* Each preceding entry contributes its byte plus one; narrow the result
     * only at return, as in the original. Table semantics are unknown. */
    for (; sum < count; sum++) {
        result += D_8011CAF4[sum];
        result++;
    }
    return result;
}
