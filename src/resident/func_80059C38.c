#include "common.h"

extern u16 D_800C7DA4[];
extern s32 func_8001E6B8(s32 bound);
extern void func_800AB620(s32 value);

/* Partial record and fixed scratch views; the historical native API is unknown.
 * Byte subtraction is promoted to signed int before the explicit low-byte mask.
 * The signed remainder's table displacement is formed as a wrapping word address
 * rather than assuming the random helper can only return nonnegative values.
 */
void func_80059C38(u8 *record)
{
    u8 *other;
    u8 first;
    u8 second;
    u32 difference;
    s32 position;
    s32 argument;
    s32 choice;

    if (*(u8 *)0x1F80029A == 4) {
        if (func_8001E6B8(5) == 0) {
            other = *(u8 **)0x1F8002F4;
            first = other[0x3A8];
            second = other[0x3A4];
            difference = (u8)(first - second);
            if (difference >= 0x81U) {
                if (((second - first) & 0xFF) < 12) {
                    goto small_angle;
                }
            } else if ((s32)difference < 12) {
small_angle:
                argument = func_8001E6B8(2) + 0xDBB;
                goto dispatch;
            }
        }
    } else {
        position = *(s16 *)(*(u8 **)0x1F8002F4 + 2);
        if (record[0x399] != 0) {
            if (-position < 0x1991) {
                return;
            }
            goto far_position;
        }
        if (position >= 0x1991) {
far_position:
            if (func_8001E6B8(4) == 0) {
                choice = func_8001E6B8(3);
                argument = *(u16 *)((u32)D_800C7DA4 + (u32)choice * 2U);
dispatch:
                func_800AB620(argument);
            }
        }
    }
}
