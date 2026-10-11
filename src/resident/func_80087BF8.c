#include "common.h"

/* Only the selected byte access is established; the backing layout is unknown. */
extern u8 D_8010A5A8[];

u32 func_80087BF8(void)
{
    u8 *base = D_8010A5A8;

    if (*(u8 *)0x1F8002DF < 2) {
        return 0;
    }
    switch (*(u8 *)0x1F8002E1) {
    case 0:
    case 3:
        {
            u32 masked = base[0xE] & 2;

            /* Keep the real masked value live: without this input-only empty
             * constraint GCC 2.7.2 replaces the mask/compare with shift/mask.
             * No instructions, fixed register, output, or clobber are added. */
            __asm__("" : : "r"(masked));
            return masked != 0;
        }
    case 1:
        return 0;
    case 2:
        return 1;
    default:
        return 1;
    }
}
