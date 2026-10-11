#include "common.h"

extern u8 D_800FF748[];
extern s32 D_800E7658;
/* Observed word slots, including twelve stack arguments. Complete API and
 * field meanings are unknown; the helper narrows several slots internally. */
extern void func_8001CDAC(u32, u32, u32, u32, u32, u32, u32, u32,
                        u32, u32, u32, u32, u32, u32, u32, u32);

/* Record/table extent, state meanings and return contract are provisional. */
void func_8004FAC0(s32 state, u32 index)
{
    u8 *base = D_800FF748;

    D_800E7658 = state;
    if (state >= 15) {
        (base + index * 40)[0x5DC4] = 0;
    } else {
        /* Unsigned subtraction/shift define the observed modulo-word result
         * even for negative state values; only the low byte is forwarded. */
        u8 value = (17u - (u32)state) * 8u;

        func_8001CDAC((u8)index, 4, 0x60000000, 0,
                     0, 6, 0, 0x7000, 0x7000, 0, 0,
                     value, value, value, 0, 1);
    }
}
