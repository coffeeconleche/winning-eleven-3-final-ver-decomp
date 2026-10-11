#include "common.h"

/* Address/byte-access views only; complete table ownership is unknown. */
extern u8 D_8010C1D8[];
extern u8 D_800C851C[];

/* Narrowed count zero skips all data reads. Callers must provide readable
 * list entries and the selected table addresses; no larger table is invented. */
u32 func_800653D4(u8 *list, u32 count, u32 threshold)
{
    u32 table = (u32)D_8010C1D8;
    u32 index = 0;

    count = (u8)count;
    if (count != 0) {
        threshold = (u8)threshold;
        do {
            u32 key = *list;

            if (*(u8 *)(table + key + 0x16) <= threshold) {
                return *(u8 *)((u32)D_800C851C + key);
            }
            ++index;
            ++list;
        } while ((u8)index < count);
    }
    return 255;
}
