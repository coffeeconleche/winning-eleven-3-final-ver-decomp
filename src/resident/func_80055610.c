#include "common.h"

/* Partial record views and original PS1 scratch addresses, not a native API.
 * Scale and threshold arithmetic deliberately retain wrapping low words.
 */
s32 func_80055610(u8 *record, u8 *other, u32 scale)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 angle = record[0x3AA];
    u8 reference = (*(u8 **)0x1F8002F4)[0x3A4];
    s32 difference = angle - reference;
    s32 distance;
    u32 level;
    u32 folded;
    u32 threshold;
    u32 adjustment;

    if ((u32)(u8)difference < 0x81U) {
        distance = difference;
    } else {
        distance = reference - angle;
    }
    if (record[0x399] == other[0x399]) {
        return 0;
    }
    level = *(u16 *)(scratch + 0x31C);
    if ((s16)level < 9) {
        return 1;
    }
    folded = (u8)distance;
    if ((scratch + record[0x398])[0x2CF] == 0) {
        return 0;
    }
    adjustment = (scale * folded >> 2) - 0x5000U;
    threshold = ((u32)(s32)(s16)level << 8) - adjustment;
    if (folded < 0x21U) {
        threshold += 0x2000U;
    }
    if (*(u32 *)(record + 0x3A0) < 0x31U && folded >= 0x60U) {
        threshold += 0x3000U;
    }
    return *(u32 *)(*(u8 **)(scratch + 0x2F4) + 0x3A0) >= threshold;
}
