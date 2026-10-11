#include "common.h"

extern s16 D_8010A31E;

/* This routine reads the existing halfword as signed. Its complete meaning
 * and the historical parameter declaration remain provisional. */
s32 func_8006F07C(u32 amount)
{
    /* Matching-only reservation for the observed eight-byte leaf frame.
     * This is not recovered stack data and is never accessed at runtime. */
    u32 reservation;
    /* These two capture bindings retain the measured load/copy allocation. */
    register s32 remaining __asm__("$3") = D_8010A31E;
    s32 result;
    u8 *scratch = (u8 *)0x1F800000;

    __asm__("" : : "m"(reservation));
    scratch[0x330] = 1;
    if ((u8)amount >= remaining) {
        scratch[0x330] = 0;
        D_8010A31E = 0;
        result = 1;
    } else {
        register s32 saved __asm__("$5") = remaining;
        u32 narrowed;

        /* The tied empty operand leaves the actual argument unchanged while
         * keeping its later byte narrowing separate from the comparison. */
        __asm__("" : "=r"(amount) : "0"(amount), "r"(saved));
        narrowed = (u8)amount;
        narrowed = saved - narrowed;
        D_8010A31E = narrowed;
        result = 0;
    }
    return result;
}
