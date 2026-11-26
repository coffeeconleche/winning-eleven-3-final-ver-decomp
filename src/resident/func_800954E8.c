#include "common.h"

extern void func_8003DB08(u8 *);
extern void func_800498AC(u8 *);
extern u8 func_8009568C(void);

void func_800954E8(u8 *actor)
{
    u8 *ball;
    s16 bx;
    s16 bz;

    func_8003DB08(actor);

    if (actor[0x38D] != *(u8 *)0x1F8002A8) {
        func_800498AC(actor);
        return;
    }

    ball = *(u8 **)0x1F8002F4;
    bx = *(s16 *)(ball + 2);

    if (func_8009568C() != 0) {
        if (bx >= -0x23E1) {
            *(s16 *)(actor + 2) = (s16)(*(s16 *)(actor + 2) + 0x23E2 - bx);
        }
    } else if (actor[0x399] == 0) {
        if (bx >= -0x2461) {
            *(s16 *)(actor + 2) = (s16)(*(s16 *)(actor + 2) - 0x2462 - bx);
        }
    } else {
        if (bx < 0x2462) {
            *(s16 *)(actor + 2) = (s16)(*(s16 *)(actor + 2) + 0x2462 - bx);
        }
    }

    ball = *(u8 **)0x1F8002F4;
    bz = *(s16 *)(ball + 6);
    if (bz >= 0x12F5) {
        *(s16 *)(actor + 6) = (s16)(*(s16 *)(actor + 6) + 0x12F4 - bz);
    } else if (bz < -0x12F4) {
        *(s16 *)(actor + 6) = (s16)(*(s16 *)(actor + 6) - 0x12F4 - bz);
    }

    ball = *(u8 **)0x1F8002F4;
    bx = *(s16 *)(ball + 2);
    if (bx >= 0x32E0) {
        *(s16 *)(actor + 2) = (s16)(*(s16 *)(actor + 2) + 0x32E0 - bx);
    } else if (bx < -0x32DF) {
        *(s16 *)(actor + 2) = (s16)(*(s16 *)(actor + 2) - 0x32E0 - bx);
    }
}
