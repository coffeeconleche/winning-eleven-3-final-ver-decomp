#include "common.h"

/* Existing byte storage view. The 40-byte stride and touched fields do not
 * establish a complete record type, selector domain, or ownership model. */
extern u8 D_80105508[];

s32 func_8006F428(u32 selector, u32 amount)
{
    u8 *record = D_80105508 + (u8)selector * 40;
    s32 first = *(s16 *)(record + 0x1E);
    u8 *data = *(u8 **)(record + 0x0C);

    if (first != 0x1000 || *(s16 *)(record + 0x20) != first ||
        *(u32 *)(record + 0x24) != 0) {
        u32 value = *(u16 *)(record + 0x1A);

        value += *(u16 *)(data + 6);
        value -= amount;
        *(u16 *)(record + 0x1A) = value;
    }
    /* Reread after the preceding store: data may alias the record. Word
     * arithmetic wraps explicitly before each halfword store. */
    {
        u32 value = amount - *(u16 *)(data + 6);

        *(u16 *)(record + 0x10) = value;
    }
    return 1;
}
