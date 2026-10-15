#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A392;
extern u8 D_8010A3AD;
extern void func_800AB620(s32 value);
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80057AE4(u8 *object, u32 first, u32 second);

/* Partial access and call views only; complete layouts and historical APIs
 * remain unknown. The known caller discards the result-register residue. */
void func_80056ED0(u8 *object, u32 squared)
{
    u8 *bank = D_800FF748;
    s32 direction;
    s32 angle;
    s32 reverse;
    u32 delta;

    if (D_8010A392 != 0) {
        return;
    }
    if (*(u8 *)0x1F80029A != 1) {
        return;
    }
    func_800AB620(0x11);
    if (func_8001E6B8(2) != 0 && func_80057AE4(object, 0, 1) != 0) {
        return;
    }
    if (squared > 0x6400000U) {
        if (func_8001E6B8(8) != 0) {
            return;
        }
        direction = object[0x399] << 7;
        angle = object[0x3AA];
        delta = (direction - angle) & 0xFF;
        if (delta < 0x81) {
            goto near;
        }
        reverse = (angle - direction) & 0xFF;
        if (reverse < 0x11) {
            goto announce;
        }
        return;
near:
        if ((s32)delta >= 0x11) {
            return;
        }
announce:
        func_800AB620(0xCF0);
        return;
    }
    if (func_8001E6B8(6) == 0) {
        if (squared > 0x3840000U) {
            if (func_8001E6B8(2) != 0) {
                func_800AB620((D_8010A3AD & 1) + 0xCEF);
            }
            goto increment;
        }
        if (squared > 0x1000000U) {
            func_800AB620((D_8010A3AD & 1) + 0xCED);
            goto increment;
        }
    }
    func_800AB620((D_8010A3AD & 1) + 0xCD7);
increment:
    bank[0xAC65]++;
}
