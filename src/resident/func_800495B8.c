#include "common.h"

extern void func_800676C4(u32, s32, s32, u32);
extern u8 D_800FF748[];

/* Partial aligned access view, not a complete record or historical API.
 * Selector bytes are not assumed to be binary; the observed indexed accesses
 * require valid memory and do not establish a complete scratch/buffer extent.
 * Differences fit s32;
 * unsigned multiplication/addition retain the original low-word arithmetic. */
u32 func_800495B8(u8 *record)
{
    u8 selected;
    u8 *base;
    u8 *other;
    s32 dx;
    s32 dy;

    func_800676C4(record[0x399] ^ 1, *(s16 *)(record + 2),
                 *(s16 *)(record + 6), 1);
    /* Both the selector and the scratch byte are read after the callback. */
    base = D_800FF748;
    selected = ((u8 *)0x1F800322)[(record[0x399] ^ 1) * 2];
    other = base + (u8)(selected % 24) * 1000;
    dx = *(s16 *)(record + 2) - *(s16 *)(other + 2);
    dy = *(s16 *)(record + 6) - *(s16 *)(other + 6);
    return (u32)dx * (u32)dx + (u32)dy * (u32)dy;
}
