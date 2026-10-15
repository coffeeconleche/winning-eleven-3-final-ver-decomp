#include "common.h"

extern s16 D_800F3566;
extern u8 D_800FF748[];
extern void func_800814EC(u8 *);
extern u32 func_80067860(u32, s32, s32, u32, u32, u32);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);

/* Partial aligned PS1 object/pool/scratch views, not storage ownership.
 * Reread the side and live fields after helpers. Negated coordinates wrap
 * to a low halfword, then use PS1 signed16 interpretation.
 * Native APIs need reconciliation: 67860 has an older void-return view,
 * and B36C an older narrow-argument/return view in other private callers. */
void func_80081374(u8 *object)
{
    s32 mode;
    u8 *pool;
    u8 *other;
    u8 *reference;
    u32 index;
    u8 slot;
    u32 heading;

    mode = D_800F3566;
    pool = D_800FF748;
    if (mode / 128 != 0) {
        if ((s16)(mode % 16) == 5) {
            func_800814EC(object);
        }
    } else {
        func_80067860(object[0x399] ^ 1, *(s16 *)(object + 2),
            *(s16 *)(object + 6), object[0x3AB], 40, 0x40000);
        index = ((u8 *)0x1F800000)[0x322 + (object[0x399] ^ 1) * 2];
        if (index == 255) {
            reference = *(u8 **)0x1F8002F4;
            object[0x3AB] = func_8005B36C(*(s16 *)(object + 2),
                *(s16 *)(object + 6),
                (s16)(u16)(0U - *(u16 *)(reference + 2)), 0);
        } else {
            slot = index % 24;
            other = pool + slot * 1000;
            heading = func_8005B36C(*(s16 *)(other + 2), *(s16 *)(other + 6),
                *(s16 *)(object + 2), *(s16 *)(object + 6));
            object[0x3AB] = func_8005B7CC(heading & 0xFF, object[0x3AB], 12);
        }
    }
}
