#include "common.h"

/* The scratch byte's meaning and selector domain remain provisional. */
s32 func_8009FDC8(u32 selector)
{
    s32 value = ((u8 *)0x1F8002FD)[(u8)selector];
    s32 result;

    if (value < 4) {
        result = 0;
    } else if (value < 11) {
        result = 1;
    } else if (value < 16) {
        if (value < 14) {
            result = 0;
        } else {
            /* Preserve the measured branch using the already-read byte;
             * this empty input emits no code or additional memory access. */
            __asm__("" : : "r"(value));
            result = 1;
        }
    } else {
        result = 0;
    }
    return result;
}
