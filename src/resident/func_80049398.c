#include "common.h"

/* Views of existing storage and the observed four-word helper call.
 * Complete record layouts and historical APIs remain unknown. */
extern u8 D_800FF748[];
extern u32 func_8005B36C(s32, s32, s32, s32);

u32 func_80049398(u8 *record, u32 fallback, u32 limit)
{
    u32 offset = (record[0x399] ^ 1) * 2;
    /* GCC 2.7.2 captures for the observed byte operand and full limit. */
    register u32 rawIndex __asm__("$3") = ((u8 *)0x1F80031E)[offset];
    register u32 distanceLimit __asm__("$9") = limit;
    u8 *bank = D_800FF748;
    u8 index;
    u8 *other;
    s32 currentX;
    s32 otherX;
    s32 first;
    u32 square;
    s32 currentZ;
    s32 otherZ;
    s32 second;

    index = (u8)(rawIndex % 24U);
    other = bank + index * 1000;
    if (other[0x396] == 16) {
        rawIndex = ((u8 *)0x1F80031F)[offset];
        index = (u8)(rawIndex % 24U);
        other = bank + index * 1000;
    }

    currentX = *(s16 *)(record + 2);
    otherX = *(s16 *)(other + 2);
    first = currentX - otherX;
    square = (u32)((long long)first * first);
    currentZ = *(s16 *)(record + 6);
    otherZ = *(s16 *)(other + 6);
    second = currentZ - otherZ;
    /* Retain each signed product's low word and the unsigned wrapped sum. */
    if (square + (u32)((long long)second * second) < distanceLimit) {
        fallback = func_8005B36C(otherX, otherZ, currentX, currentZ);
    }
    /* Both paths retain a byte result, not a Boolean helper result. */
    return (u8)fallback;
}
