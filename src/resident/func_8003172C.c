#include "common.h"

/* Observed word arguments only; historical helper APIs and record extents
 * remain unknown. Direct callers do not consume the path-dependent result
 * register residue; this is not a Boolean-return API. */
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8001E694(u32, u32);
extern u32 func_8001E5A4(u32, u32);
/* A view of the existing pointer word, not a new object or MMIO claim. */
extern u8 *scratchRecord __asm__("0x1F8002F4");

void func_8003172C(u8 *record, u32 direction)
{
    /* GCC 2.7.2 capture of the direction retained across the first callback. */
    register u32 adjusted __asm__("$16");
    s32 currentX = *(s16 *)(record + 2);
    u8 *initial;
    u8 *other;
    u32 angle;
    s32 first;
    s32 second;
    u32 square;
    u32 otherDirection;
    u32 currentDirection;
    u32 difference;
    u32 component;
    u32 coordinate;

    initial = scratchRecord;
    adjusted = direction;
    angle = func_8005B36C(currentX, *(s16 *)(record + 6),
                         *(s16 *)(initial + 2), *(s16 *)(initial + 6));
    other = scratchRecord;
    first = *(s16 *)(record + 2) - *(s16 *)(other + 2);
    square = (u32)((long long)first * first);
    second = *(s16 *)(record + 6) - *(s16 *)(other + 6);
    /* Signed comparison of a wrapped low-word sum; negative totals pass. */
    if ((s32)(square + (u32)((long long)second * second)) <= 0xFFFFF) {
        otherDirection = other[0x3A4];
        difference = (direction - otherDirection) & 255;
        if (difference >= 129U ?
            (s32)((otherDirection - direction) & 255) < 33 :
            (s32)difference < 33) {
            currentDirection = record[0x3A4];
            difference = (angle - currentDirection) & 255;
            if (!(difference >= 129U ?
                  (s32)((currentDirection - angle) & 255) < 56 :
                  (s32)difference < 56)) {
                if (((angle - adjusted) & 255) >= 129U) {
                    adjusted += 64;
                } else {
                    adjusted -= 64;
                }
                adjusted &= 255;
                component = func_8001E694(adjusted, 12);
                *(u16 *)(record + 2) = *(u16 *)(record + 2) + component;
                component = func_8001E5A4(adjusted, 12);
                coordinate = *(u16 *)(record + 6);
                record[0x3D1] = 0;
                *(u16 *)(record + 6) = coordinate + component;
            }
        }
    }
}
