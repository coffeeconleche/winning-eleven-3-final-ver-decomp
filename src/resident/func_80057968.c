#include "common.h"

/* Byte views only; mode/counter meanings, record layout, original APIs and
 * return contract remain provisional. Signed remainders stay signed; the
 * selected byte is reduced unsigned and reread after the final callback. */
extern u8 D_1F80029A __asm__("0x1F80029A");
extern u8 D_8010A3AF;
extern void func_800AB620(s32);
extern s32 func_8001E6B8(s32);
extern s32 func_80057AE4(u8 *, u32, u32);

void func_80057968(u8 *record)
{
    u32 counter;
    if (D_1F80029A != 1) {
        return;
    }
    func_800AB620(16);
    if (func_8001E6B8(2) == 0 && func_80057AE4(record, 0, 1) != 0) {
        return;
    }
    counter = D_8010A3AF;
    func_800AB620((u8)(counter % 3U) + 0xD51);
    D_8010A3AF++;
}
