#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A392[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);
extern s32 func_80057AE4(u8 *object, u32 first, u32 second);

/* Partial byte/pointer/halfword views; object bounds, state meanings, helper
 * contracts and the historical return convention remain provisional. */
void func_80056240(u8 *object)
{
    u8 *base = D_800FF748;
    u8 *other;
    s32 value;

    if (func_8001E6B8(2) != 0) {
        return;
    }
    if (D_8010A392[0] != 0) {
        return;
    }
    if (*(u8 *)0x1F80029A != 1) {
        return;
    }
    other = *(u8 **)0x1F8002F4;
    value = *(s16 *)(other + 2);
    if (object[0x399] != 0) {
        if (value < 0) {
            return;
        }
    } else if (value > 0) {
        return;
    }
    func_800AB620(0x10);
    if (func_8001E6B8(3) != 0 && func_80057AE4(object, 0, 0) != 0) {
        return;
    }
    func_800AB620((u8)((u32)base[0xAC59] % 3U) + 0xD98);
    /* The callback may change this byte; increment its current value. */
    base[0xAC59] += 1;
}
