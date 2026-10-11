#include "common.h"

/* Byte access view of existing storage; complete object layout is unknown. */
extern u8 D_800FF748[];

/* The known caller ignores the result; the original return API is unknown. */
void func_8004FCE0(void)
{
    u8 *base = D_800FF748;
    u8 *cursor = base + 0x66D0;
    s32 count = 17;

    do {
        *cursor = 0;
        count--;
        cursor += 0x90;
    } while (count >= 0);
    base[0xABE1] = 0;
}
