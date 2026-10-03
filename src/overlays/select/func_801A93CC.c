#include "common.h"

/* Always writes three bytes and returns the advanced cursor, without a NUL.
 * Values below zero produce underscores; values above 999 are capped. */
u8 *func_801A93CC(u8 *output, s32 value) {
    if (value >= 1000) value = 999;
    if (value >= 0) {
        if (value >= 100) {
            *output++ = value / 100 + '0';
            *output++ = value % 100 / 10 + '0';
            *output++ = value % 10 + '0';
        } else if (value >= 10) {
            *output++ = value / 10 + '0';
            *output++ = value % 10 + '0';
            *output++ = '_';
        } else {
            *output++ = value % 10 + '0';
            *output++ = '_';
            *output++ = '_';
        }
    } else {
        *output++ = '_';
        *output++ = '_';
        *output++ = '_';
    }
    return (u8 *)output;
}
