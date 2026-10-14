#include "common.h"

extern u8 D_8010A397;
extern u8 D_8010A392;
extern u8 D_800FF748[];
extern u8 scratch29A __asm__("0x1F80029A");
extern u8 *scratchCurrent __asm__("0x1F8002F4");
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);

/* Partial record and existing scratch/global access views only. Complete
 * object extents, helper APIs and historical return convention are unknown.
 * Both current-pointer reads are preserved by the measured control graph.
 * Wrapped word differences narrow to bytes before signed threshold tests. */
void func_80055B84(u8 *record)
{
    u8 *base = D_800FF748;
    u8 *current;
    s32 coordinate;
    s32 side;
    s32 angle;
    s32 difference;

    D_8010A397 = 255;
    if (D_8010A392 != 0 || scratch29A != 1) {
        return;
    }
    func_800AB620(16);
    coordinate = *(s16 *)(scratchCurrent + 2);
    if (record[0x399] != 0) {
        if (coordinate < 0) {
            goto coordinate_gate;
        }
        return;
    } else if (coordinate <= 0) {
        return;
    }
coordinate_gate:
    current = scratchCurrent;
    side = record[0x399] << 7;
    angle = current[0x3A4];
    difference = ((u32)side - (u32)angle) & 255;
    if ((u32)difference > 128U) {
        s32 reverse = ((u32)angle - (u32)side) & 255;
        if (reverse >= 80) {
            goto random_gate;
        }
        return;
    }
    if (difference < 80) {
        return;
    }
random_gate:
    if (func_8001E6B8(4) != 0) {
        return;
    }
    func_800AB620((u8)((u32)base[0xAC50] % 6U) + 0xCB7);
    base[0xAC50] = (u8)((u32)base[0xAC50] + 1U);
}
