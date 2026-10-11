#include "common.h"

extern u8 D_8010A5A8[];

/* Partial byte views only; the state/flag domains and broader layout are
 * provisional. The caller tests the low byte of this classifier result. */
s32 func_80087AB8(void)
{
    u8 *data = D_8010A5A8;
    u8 *scratch = (u8 *)0x1F800000;
    s32 result;
    s32 state = *(u8 *)0x1F8002E1;

    if (state == 1) {
        result = 1;
        goto done;
    }
    if (state < 2) {
        if (state == 0) {
            goto flags;
        }
        result = 1;
        goto done;
    }
    if (state == 2) {
        goto second;
    }
    if (state != 3) {
        result = 1;
        goto done;
    }
flags:
    if (scratch[0x2D1] == scratch[0x2D2]) {
        result = 0;
    } else if (data[0xE] & 2) {
        result = 1;
    } else {
        /* Matching-only input of the existing pointer keeps this flag's
         * branch form; it emits no instruction and adds no memory access. */
        __asm__("" : : "r"(data));
        result = 0;
    }
    goto done;
second:
    result = *(u8 *)0x1F8002D5 != *(u8 *)0x1F8002D9;
done:
    return result;
}
