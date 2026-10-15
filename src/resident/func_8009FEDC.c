#include "types.h"

/* Numeric access views of the existing scratch byte tables. Their full
 * extents and the valid record[0x399] domain remain unproved. */
#define scratch31E ((u8 *)0x1F80031E)
#define scratch31F ((u8 *)0x1F80031F)

/* Partial record view only. The unsigned byte remainder and signed state
 * remainder deliberately retain different domains, including negative state. */
u32 func_8009FEDC(u8 *record)
{
    u32 index = record[0x399] * 2;
    u32 identifier = record[0x38D];
    u32 remainder;

    if (identifier == scratch31E[index] || identifier == scratch31F[index]) {
        remainder = (u8)(identifier % 22U);
        if (remainder != *(s32 *)0x1F800290 % 22) {
            *(u16 *)(record + 0x3D6) = 0;
            record[0x39C] = 0;
            *(u16 *)(record + 0x3D4) = *(u16 *)(record + 0x3D8);
            return 1;
        }
    }
    return 0;
}
