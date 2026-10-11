#include "common.h"

extern void func_800B4978(u32 value, u8 *destination);
extern void func_800B5368(u8 *block);

/* Partial pointer/word access views only. Both callbacks' broader meanings,
 * the object/block layouts, and the historical return API are provisional. */
void func_8001BD78(u8 *object)
{
    u8 *block;
    u8 *cursor;

    func_800B4978(0, object + 0x2C);
    block = *(u8 **)(object + 0x10);
    cursor = *(u8 **)(block + 4);
    cursor += 4;
    func_800B5368(cursor);

    /* The second callback mutates the block. Keep these reads after it and
     * interleaved with stores, since the pointed storage may alias object. */
    cursor += 8;
    *(u32 *)(object + 0x7C) = *(u32 *)cursor;
    cursor += 8;
    *(u32 *)(object + 0x80) = *(u32 *)cursor;
    cursor += 8;
    *(u32 *)(object + 0x84) = *(u32 *)cursor;
    *(u32 *)(object + 0x88) = *(u32 *)(cursor + 4);
}
