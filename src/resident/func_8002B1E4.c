#include "common.h"

extern u32 func_800B1128(u32);
extern s32 func_8001E6B8(s32);

/* Partial record/API view; original names and complete layout are unknown.
 * Offset coordinates fit signed squares; their sum wraps as an unsigned word.
 * Equivalent wide-signed/unsigned squares preserve the two range comparisons. */
s32 func_8002B1E4(u8 *record)
{
    s32 x = *(s16 *)(record + 2);
    s32 first = record[0x399] ? x + 0x3320 : x - 0x3320;
    s32 y = *(s16 *)(record + 6);
    u32 distance = func_800B1128((u32)(first * (record[0x399] ? x + 0x3320 : x - 0x3320)) + (u32)(y * y));
    register s32 result __asm__("$3") = 0;

    if (record[0x396] == 48) {
        if ((u32)((long long)(s32)distance * (s32)distance) > 0x2A3FFFFU &&
            distance * distance < 0x4000000U) {
            result = func_8001E6B8(2) + 10;
        } else {
            result = func_8001E6B8(2) + 11;
        }
    } else if (distance <= 2048) {
        return -5 - func_8001E6B8(4);
    } else {
        distance -= 2048;
        if (record[0x396] == 4) {
            if (func_8001E6B8(3) == 0) {
                result = func_8001E6B8(4) + 4;
            } else {
                s32 random = func_8001E6B8(4);
                result = (s32)(distance / (u32)(512 - func_8001E6B8(64))) + 4;
                result = random + result;
            }
            if (result >= 14) {
                result = 13;
            }
        } else {
            result = (s32)(distance / (u32)(384 - func_8001E6B8(64)) - 3U);
        }
    }
    if (result >= 17) {
        result = 16;
    }
    return result;
}
