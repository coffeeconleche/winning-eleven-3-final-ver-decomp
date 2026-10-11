#include "common.h"

/* Call-site word views only; the original formal helper APIs are provisional. */
extern u32 func_8005B36C(s32 x, s32 y, s32 otherX, s32 otherY);
extern u32 func_8005B7CC(u32 direction, u32 current, u32 step);

/* Partial byte-addressed records: signed halfwords at 2/6 and a byte at 3AA.
 * The scratch pointer's ownership, lifetime and complete layouts are unknown.
 * Capture the other coordinates before the first callback, then read 3AA
 * afterwards. The second callback receives low bytes and its result stores
 * as a byte. Inspected callers ignore v0; this void view leaves its full
 * helper residue intact rather than inventing a narrowed C return. */
void func_8004A0B0(u8 *record, u32 step)
{
    u8 *other = *(u8 **)0x1F8002F4;
    u32 direction = func_8005B36C(*(s16 *)(record + 2),
        *(s16 *)(record + 6), *(s16 *)(other + 2), *(s16 *)(other + 6));

    record[0x3AA] = func_8005B7CC((u8)direction, record[0x3AA], (u8)step);
}
