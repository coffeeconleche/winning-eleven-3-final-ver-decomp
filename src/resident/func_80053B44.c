#include "common.h"

extern u8 D_800FF748[];
/* Call-site view; the callee fills the scratch halfwords read below. */
extern void func_8005C2AC(u8 *, u8, u8, u8, u8);

/* Scratch snapshot update and nearest-record probe. The record, the record
 * table and the scratch cells are byte/word access views of existing storage;
 * complete layouts and the original gameplay terms remain unknown.
 *
 * The two squared-distance tests keep their temporaries block-local, and the
 * second snapshot write of each pair rereads the scratch pointer through a
 * volatile view: the store to the first halfword may alias that pointer and
 * retail reloads it. Both are measured source-shape choices, not MMIO claims.
 * The 0x2CF byte index stays an absolute scratch view, matching the measured
 * separate constant materialization. */
s32 func_80053B44(u8 *record)
{
    u8 *bank = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *other;
    s32 x;
    s32 z;

    func_8005C2AC(record, record[0x38E], record[0x390], record[0x3AA],
                  record[0x3AC]);
    if (record[0x38D] == scratch[0x2A9]) {
        /* This record owns the scratch trigger: mirror its position. */
        *(u16 *)(*(u32 *)(scratch + 0x2F4) + 2) =
            *(u16 *)(scratch + 0xF0) + *(u32 *)(record + 8);
        *(u16 *)(*(u32 volatile *)(scratch + 0x2F4) + 6) =
            *(u16 *)(scratch + 0xF4) + *(u32 *)(record + 0x10);
        return 1;
    }
    if (scratch[0x2A9] != 0 && ((u8 *)0x1F8002CF)[record[0x398]] == 1)
        return 0;
    x = (s16)*(u16 *)(scratch + 0xF0);
    z = (s16)*(u16 *)(scratch + 0xF4);
    {
        s32 dx = x - (s16)*(u16 *)(scratch + 0x36);
        s32 dz = z - (s16)*(u16 *)(scratch + 0x66);
        if (dx * dx + dz * dz >= 0x6401)
            return 0;
    }
    {
        s32 sideOffset = (record[0x399] ^ 1) * 2;
        other = bank +
            ((((u8 *)(sideOffset + scratch))[0x31E] % 24U) & 0xFF) * 1000;
    }
    {
        s32 dx = *(s16 *)(other + 2) - x;
        s32 dz = *(s16 *)(other + 6) - z;
        if (dx * dx + dz * dz >= 0x6401) {
            /* Selected record is out of range: mirror this position. */
            *(u16 *)(*(u32 *)(scratch + 0x2F4) + 2) =
                *(u16 *)(scratch + 0xF0) + *(u32 *)(record + 8);
            *(u16 *)(*(u32 volatile *)(scratch + 0x2F4) + 6) =
                *(u16 *)(scratch + 0xF4) + *(u32 *)(record + 0x10);
            return 1;
        }
    }
    /* Near record: release a pending trigger owned by this record only. */
    if (record[0x38D] == scratch[0x2A9])
        scratch[0x2A9] = 0;
    return 0;
}
