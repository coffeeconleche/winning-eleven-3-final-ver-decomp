#include "common.h"

/* Existing storage; full record/bank extents and helper APIs are unknown. */
extern u8 D_800FF748[];
extern u8 D_8010A392;
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);

/* Both known call sites discard the result. Coordinate negation is bounded
 * by its signed-halfword load; byte remainder and increment also fit s32.
 * The final increment narrows to a byte and rereads after the second call. */
void func_8005653C(u8 *record, s32 mode)
{
    u8 *bank = D_800FF748;
    u8 *reference;
    s32 x;
    s32 inside;

    if (*(u8 *)0x1F8002A9 == 0) {
        return;
    }
    if (D_8010A392 != 0) {
        return;
    }
    if (func_8001E6B8(2) != 0) {
        return;
    }
    reference = *(u8 **)0x1F8002F4;
    if (*(u32 *)(reference + 0x3A0) <= 0x1800U) {
        return;
    }
    x = *(s16 *)(reference + 2);
    if (record[0x399] != 0) {
        inside = -x < -0x198F;
    } else {
        inside = x < -0x198F;
    }
    if (!inside) {
        return;
    }
    func_800AB620(0x10);
    if (mode == 0) {
        func_800AB620((u8)(bank[0xAC58] % 3U) + 0xD6C);
    } else {
        func_800AB620((u8)(bank[0xAC58] % 3U) + 0xD64);
    }
    bank[0xAC58]++;
}
