#include "common.h"

/* Measured signed-low16 inputs and result; the original API is provisional. */
s16 func_8005A7E4(s32 first, s32 second, s32 weight)
{
    weight = (s16)weight;
    if (weight <= 0) {
        return (s16)first;
    }
    if (weight >= 100) {
        return (s16)second;
    }
    /* Promoted full-word products and sum are bounded by -3276800..3276700;
     * signed division truncates toward zero before the final narrowing. */
    return (s16)(((s16)first * (100 - weight) + (s16)second * weight) / 100);
}
