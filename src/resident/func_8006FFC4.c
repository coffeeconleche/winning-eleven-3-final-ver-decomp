#include "common.h"

extern u8 D_800FF740;

/* The word result is consumed by callers; gameplay meanings and the
 * historical return declaration remain provisional. */
s32 func_8006FFC4(void)
{
    s32 result = *(u8 *)0x1F8002A0;

    if (result == 1) {
        result = D_800FF740;
    } else {
        /* This capture binding retains the measured register allocation. */
        register s32 secondary __asm__("$3") = *(u8 *)0x1F8002E2;

        if (secondary == 1) {
            /* Consuming the actual byte preserves the measured branch;
             * this empty input emits no instructions or extra accesses. */
            __asm__("" : : "r"(secondary));
            result = 2;
        } else {
            result = 0;
        }
    }
    return result;
}
