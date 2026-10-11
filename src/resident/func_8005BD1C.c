#include "common.h"

/* Only the observed offsets are described; table contents, valid indices,
 * and the historical return declaration remain provisional. */
u32 func_8005BD1C(u8 *object)
{
    u32 index = object[0x390];
    u32 *table = *(u32 **)(object + 0x18);
    u32 value;

    if (table[index + 1] == 11) {
        object[0x390] = 0;
    } else {
        object[0x390] = index + 1;
    }
    table = *(u32 **)(object + 0x18);
    table += object[0x390];
    value = *table;
    *(u32 *)(object + 0x1C) = value;
    return value;
}
