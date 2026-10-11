#include "common.h"

extern s16 D_800EF864;
extern void func_8006F310(void);

/* Signed halfword access view of existing storage. This result describes the
 * starting state, not whether subtraction reaches zero; its API is provisional. */
s32 func_8006F220(u32 amount)
{
    /* Matching-only scalar reservation retains the observed 32-byte frame;
     * it is not recovered stack data and emits no stack access. */
    u32 reservation;
    s32 initial = D_800EF864;
    /* Retain the measured signed-load capture independently of subtraction. */
    register s32 remaining __asm__("$3") = initial;
    s32 result;

    if (initial > 0) {
        initial = remaining - (u8)amount;
        D_800EF864 = initial;
        if (D_800EF864 < 0) {
            D_800EF864 = 0;
        }
        func_8006F310();
        result = 0;
    } else {
        D_800EF864 = 0;
        func_8006F310();
        result = 1;
    }
    __asm__("" : : "m"(reservation));
    return result;
}
