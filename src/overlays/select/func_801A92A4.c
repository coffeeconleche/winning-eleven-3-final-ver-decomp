#include "common.h"

/* Write exactly three observed character bytes, without a terminator.
 * Signed values below zero produce underscores; only the upper end is capped. */
u8 *func_801A92A4(u8 *output, s32 value) {
    s32 hundreds;
    s32 remainder;

    if (value >= 1000) {
        value = 999;
    }
    if (value >= 0) {
        if (value >= 100) {
            hundreds = value / 100;
            remainder = value - hundreds * 100;
            *output++ = hundreds + '0';
            *output++ = remainder / 10 + '0';
        } else if (value >= 10) {
            *output++ = '_';
            *output++ = value / 10 + '0';
        } else {
            *output++ = '_';
            *output++ = '_';
        }
        *output++ = value % 10 + '0';
    } else {
        *output++ = '_';
        *output++ = '_';
        *output++ = '_';
    }
    /* Keep the final advance before the return-delay-slot pointer copy. */
    __asm__ volatile ("" : : "r"(output));
    return output;
}
