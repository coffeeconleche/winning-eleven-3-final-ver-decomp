#include "common.h"

extern u8 D_800C7C3C[];

/* Byte offsets are access views, not a recovered record layout. The word result
 * retains observed $v0 residue; known callers ignore it. Original API and
 * gameplay meanings remain provisional. */
u32 func_800219F4(u8 *record, u32 code, u32 flag)
{
    u32 key = (u8)code;
    u32 value;

    record[3] = (D_800C7C3C[key] & 15) << 4;
    /* The preceding store may alias the table; retain this separate read. */
    record[4] = (D_800C7C3C[key] >> 4) * 10;

    /* Classify low bytes, but offset the original word with unsigned wrapping. */
    if ((u8)flag == 0) {
        if (key < 16) {
            value = code + 32;
        } else if (key < 32) {
            value = code + 48;
        } else {
            value = code - 88;
        }
    } else {
        value = code + 211;
    }
    /* Narrow only the store; retain the complete word in the result view. */
    record[10] = value;
    return value;
}
