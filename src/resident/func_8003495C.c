#include "common.h"

extern s32 func_80052C6C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);

/* Partial record access views and observed helper APIs; complete layouts and
 * historical types remain provisional. Coordinate differences and products
 * use unsigned words so the low-word squared sum wraps without signed overflow.
 * The absolute value is computed as int, including the input -32768. */
s32 func_8003495C(u8 *first, u8 *second)
{
    s32 x;
    s16 z;
    u32 dx;
    u32 dz;
    s32 check;
    u32 angle;
    u8 facing;
    u32 reference;
    u32 delta;

    if (first != second) {
        if ((u8)func_80052C6C(second) == 0) {
            dx = *(s16 *)(first + 2);
            x = *(s16 *)(second + 2);
            dx -= (u32)x;
            dz = (u32)*(s16 *)(first + 6) - (u32)*(s16 *)(second + 6);
            if ((s32)(dx * dx + dz * dz) > 0x3FFFFF) {
                if (second[0x399] != 0) {
                    check = -x < 0x23E2;
                } else {
                    check = x < 0x23E2;
                }
                if (!check) {
                    z = *(s16 *)(second + 6);
                    check = __builtin_abs(z);
                    if (check < 0x10F5) {
                        angle = func_8005B36C(*(s16 *)(first + 2), *(s16 *)(first + 6),
                                              *(s16 *)(second + 2), z);
                        facing = (*(u8 **)0x1F8002F4)[0x3A4];
                        delta = (angle - facing) & 255;
                        if (delta >= 129) {
                            check = (s32)((facing - angle) & 255) < 80;
                        } else {
                            check = (s32)delta < 80;
                        }
                        if (check) {
                            reference = first[0x399] << 7;
                            delta = (angle - reference) & 255;
                            if (delta < 129) {
                                goto near;
                            }
                            check = (s32)((reference - angle) & 255) < 96;
                            if (!check) {
                                goto no;
                            }
                            goto yes;
near:
                            if ((s32)delta >= 96) {
                                goto no;
                            }
yes:
                            return 1;
                        }
                    }
                }
            }
        }
    }
no:
    return 0;
}
