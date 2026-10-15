#include "common.h"

extern s32 func_8001E6B8(s32 bound);

/* Partial record views and fixed PS1 scratch addresses, not a native API.
 * Signed halfword differences fit s32, but their squares can overflow it.
 * Widen each product, retain the low word, wrap the sum, then interpret it
 * as a signed MIPS word for the original signed-distance comparison.
 */
s32 func_800550C8(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u16 mode = *(u16 *)(record + 0x38E);
    u16 rawFirst;
    u16 rawSecond;
    u16 rawHeight;
    s32 first;
    s32 second;
    u32 firstSquare;
    s32 distance;
    u32 offset;
    u32 key;

    switch (mode) {
    case 0xF:
    case 0x10:
    case 0x12:
    case 0x14:
    case 0x54:
        return 1;
    }
    rawFirst = *(u16 *)(scratch + 0x36);
    first = *(s16 *)(record + 2) - (s16)rawFirst;
    firstSquare = (u32)((long long)first * first);
    rawSecond = *(u16 *)(scratch + 0x66);
    second = *(s16 *)(record + 6) - (s16)rawSecond;
    distance = (s32)(firstSquare + (u32)((long long)second * second));
    if (distance <= 0xFFFF) {
        rawHeight = *(u16 *)(scratch + 0x4E);
        if ((s16)rawHeight < -0x7F) {
            offset = record[0x399] * 2;
            key = record[0x38D];
            if (key == (scratch + offset)[0x31E] && func_8001E6B8(4) == 1) {
                return 1;
            }
        }
    }
    return 0;
}
