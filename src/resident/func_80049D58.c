#include "common.h"

/* No-storage numeric views of the two interleaved scratch byte addresses.
 * Table extent, valid index domain and original record layout are unknown. */
extern u8 scratch31E[] __asm__("0x1F80031E");
extern u8 scratch31F[] __asm__("0x1F80031F");

/* The word result is the measured unsigned byte; the original API is unknown. */
u32 func_80049D58(u8 *record)
{
    u32 index = record[0x399] * 2;
    u32 key = record[0x38D];
    u32 first = scratch31E[index];

    if (key != first) {
        return first;
    }
    return scratch31F[index];
}
