#include "common.h"

extern void func_8005C1CC(u8 *, s32);

void func_800498AC(u8 *actor)
{
    s16 absX;
    s16 maxAbsX;
    s16 z;
    s32 absPostZ;
    s16 projX;

    absX = *(s16 *)(actor + 2);
    if (absX < 0) {
        absX = -absX;
    }

    func_8005C1CC(actor, 0);

    maxAbsX = absX;
    projX = *(s16 *)0x1F8000F0;
    if (projX < 0) {
        projX = -projX;
    }
    *(s16 *)0x1F8000F0 = projX;

    if (projX >= absX) {
        z = *(s16 *)0x1F8000F4;
        maxAbsX = projX;
    } else {
        z = *(s16 *)(actor + 6);
    }

    if (maxAbsX >= 0x32E1) {
        absPostZ = z + 0x3C0;
        if (absPostZ < 0) {
            absPostZ = -absPostZ;
        }
        if (absPostZ < 0xC0) {
            if (maxAbsX >= 0x3368) {
                s16 curZ = *(s16 *)(actor + 6);
                s16 offset = (curZ < -0x3BF) ? -0x481 : -0x2FF;
                *(s16 *)(actor + 6) = (s16)((curZ + offset) - z);
            } else {
                s16 curX = *(s16 *)(actor + 2);
                *(s16 *)(actor + 2) = (curX > 0) ? (s16)(curX + 0x32E0 - maxAbsX)
                                                 : (s16)(maxAbsX + curX - 0x32E0);
            }
        } else {
            absPostZ = z - 0x3C0;
            if (absPostZ < 0) {
                absPostZ = -absPostZ;
            }
            if (absPostZ < 0xC0) {
                if (maxAbsX >= 0x3368) {
                    s16 curZ = *(s16 *)(actor + 6);
                    s16 offset = (curZ < 0x3C1) ? 0x2FF : 0x481;
                    *(s16 *)(actor + 6) = (s16)((curZ + offset) - z);
                } else {
                    s16 curX = *(s16 *)(actor + 2);
                    *(s16 *)(actor + 2) = (curX > 0) ? (s16)(curX + 0x32E0 - maxAbsX)
                                                     : (s16)(maxAbsX + curX - 0x32E0);
                }
            }
        }
    }

    if (z < 0) {
        z = -z;
    }
    if (z < 0x3C0 && maxAbsX >= 0x3555) {
        s16 curX = *(s16 *)(actor + 2);
        *(s16 *)(actor + 2) = (curX > 0) ? (s16)(curX + 0x3554 - maxAbsX)
                                         : (s16)(maxAbsX + curX - 0x3554);
    }
}
