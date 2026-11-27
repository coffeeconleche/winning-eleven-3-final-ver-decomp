#include "common.h"

s32 func_8006DA9C(u8 *actor, u8 *target, s16 x)
{
    u8 *ball = *(u8 **)0x1F8002F4;
    u8 dir = (u8)(target[0x399] << 7);
    u8 ballHeading = ball[0x3A4];
    u8 diff = (u8)(dir - ballHeading);
    s32 line;
    u8 side;

    if (diff < 0x81U) {
        if (diff >= 0x19U) {
            return 0;
        }
    } else {
        if ((u8)(ballHeading - dir) >= 0x19U) {
            return 0;
        }
    }

    side = actor[0x399];
    line = *(s32 *)(0x1F800314 + side * 4) - 0x400;
    if (side == 0) {
        return (x < line) ? 1 : 0;
    }
    return (-x < -line) ? 1 : 0;
}
