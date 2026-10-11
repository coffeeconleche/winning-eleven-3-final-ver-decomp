#include "common.h"

/* Existing pointer initially targets raw PS1 registers. Complete layout and
 * original SDK API remain provisional and need adaptation for a native port. */
extern u8 *D_800CEA48;

u32 func_800ACFB4(u32 selector) {
    register s32 narrowed __asm__("$3") = (u16)selector;
    u32 result;

    /* Empty actual-value identity retains measured narrowing allocation. */
    __asm__("" : "=r"(narrowed) : "0"(narrowed));
    if (narrowed < 3)
        result = *(u16 *)(D_800CEA48 + narrowed * 16);
    else
        result = 0;
    return result;
}
