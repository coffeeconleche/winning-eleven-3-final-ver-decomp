#include "common.h"

/* The measured signed-halfword blend is represented without assigning field
 * meanings or recovering the original API. Interior weights are 1..9, so
 * both products and their sum stay within signed-word range. */
s16 func_8005A76C(s32 first, s32 second, s16 weight)
{
    if (weight <= 0) {
        return (s16)first;
    }
    if (weight >= 10) {
        return (s16)second;
    }
    return (s16)(((s16)first * (10 - weight) + (s16)second * weight) / 10);
}
