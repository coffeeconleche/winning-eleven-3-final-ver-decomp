#include "common.h"

/* Numeric scalar views allocate no storage or imply hardware volatility. */
extern u8 scratch2E1 __asm__("0x1F8002E1");
extern u8 scratch2D6 __asm__("0x1F8002D6");
extern u8 scratch2DA __asm__("0x1F8002DA");
extern u8 D_8010A5A8[];

/* Preserve conditional byte accesses. The scratch region and record displacement
 * are access views only; full layouts, domains and original API are provisional. */
s32 func_80087B58(void)
{
    u8 *record = D_8010A5A8;
    u8 *scratch = (u8 *)0x1F800000;
    s32 result;

    switch (scratch2E1) {
    case 0:
    case 3:
        if (scratch[0x2D1] == scratch[0x2D2]) {
            goto flagCheck;
        }
one:
        result = 1;
        goto done;
flagCheck:
        result = record[14] & 4;
        result = result == 0;
        goto done;
    case 2:
        result = scratch2D6 != scratch2DA;
        goto done;
    case 1:
    default:
        goto one;
    }
done:
    return result;
}
