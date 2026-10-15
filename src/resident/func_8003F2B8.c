#include "common.h"

extern u8 D_800FF748[];
extern u8 func_80052A68(u8 *, u8, u32);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_8005CE30(u32);

/* Aligned partial PS1 record and live scratch views. Real-value bindings
 * preserve measured allocation; each retained binding has an omission control.
 * Products and their sum wrap unsigned, then the original signed comparison
 * interprets the low word. Complete layouts and host backing remain unknown. */
s32 func_8003F2B8(u8 *record)
{
    u8 *bank = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s32 firstPosition;
    s32 goal;
    u32 angle;
    u32 secondAngle;
    u32 facing;
    u32 difference;
    u32 side;
    s32 close;
    u16 coordinate;
    s32 dx;
    s32 dz;
    register s32 distance __asm__("$3");
    register s32 threshold __asm__("$2");
    u8 index;
    if (!func_80052A68(record, 6, 0x24000)) {
        side = record[0x399];
        firstPosition = *(s16 *)0x1F800042;
        if (side != 0) {
            close = -firstPosition < 0x23E2;
        } else {
            close = firstPosition < 0x23E2;
        }
        if (close == 0) {
            {
                s32 recordX = *(s16 *)(record + 2);
                u16 scratchX = *(u16 *)(scratch + 0x42);
                s32 recordZ = *(s16 *)(record + 6);
                u16 scratchZ = *(u16 *)(scratch + 0x72);
                angle = func_8005B36C(recordX, recordZ, (s16)scratchX, (s16)scratchZ);
            }
            facing = record[0x3AA];
            difference = (angle - facing) & 255;
            if (difference >= 129) {
                close = (s32)((facing - angle) & 255) < 81;
            } else {
                close = (s32)difference < 81;
            }
            if (close != 0) {
                coordinate = *(u16 *)(scratch + 0x44);
                {
                    s32 signedCoordinate = (s16)coordinate;
                    if (record[0x399] != 0) {
                        if (-signedCoordinate < 0x3321) {
                            goto nearCase;
                        }
                        goto farCase;
                    }
                    if (signedCoordinate >= 0x3321) {
farCase:
                        index = (u8)((u8)func_8005CE30(record[0x38D]) % 24U);
                        {
                            u32 offset = index * 1000;
                            u8 *other = bank + offset;
                            if (*(s16 *)(other + 0x3BC) == 0) {
                                coordinate = *(u16 *)(scratch + 0x5A);
                                if ((s16)coordinate >= -256) {
                                    {
                                        register u16 farX __asm__("$3") = *(u16 *)(scratch + 0x42);
                                        dx = *(s16 *)(record + 2) - (s16)farX;
                                    }
                                    {
                                        register u16 farZ __asm__("$3") = *(u16 *)(scratch + 0x72);
                                        dz = *(s16 *)(record + 6) - (s16)farZ;
                                    }
                                    {
                                        register u32 farFirstProduct __asm__("$4") = (u32)dx * (u32)dx;
                                        register u32 farSecondProduct __asm__("$3") = (u32)dz * (u32)dz;
                                        u32 sum = farFirstProduct + farSecondProduct;
                                        distance = (s32)sum;
                                    }
                                    threshold = 0x190000;
                                    goto distanceCheck;
                                }
                                goto zeroReturn;
                            }
                            return 0;
                        }
                    }
                }
nearCase:
                coordinate = *(u16 *)(scratch + 0x5A);
                if ((s16)coordinate >= -160) {
                    {
                        register u16 nearX __asm__("$3") = *(u16 *)(scratch + 0x42);
                        dx = *(s16 *)(record + 2) - (s16)nearX;
                    }
                    {
                        register u16 nearZ __asm__("$3") = *(u16 *)(scratch + 0x72);
                        dz = *(s16 *)(record + 6) - (s16)nearZ;
                    }
                    {
                        register u32 nearFirstProduct __asm__("$4") = (u32)dx * (u32)dx;
                        register u32 nearSecondProduct __asm__("$3") = (u32)dz * (u32)dz;
                        u32 sum = nearFirstProduct + nearSecondProduct;
                        distance = (s32)sum;
                    }
                    threshold = 0x64000;
distanceCheck:
                    if (threshold >= distance) {
                        {
                            register s32 recordX __asm__("$4") = *(s16 *)(record + 2);
                            s32 recordZ;
                            side = record[0x399];
                            recordZ = *(s16 *)(record + 6);
                            goal = -0x3320;
                            if (side == 0) {
                                goal = 0x3320;
                            }
                            secondAngle = func_8005B36C(recordX, recordZ, goal, 0);
                        }
                        difference = (angle - secondAngle) & 255;
                        if (difference >= 129) {
                            if ((s32)((secondAngle - angle) & 255) >= 73) {
                                return 0;
                            }
                            goto success;
                        }
                        if ((s32)difference < 73) {
success:
                            record[0x3D1] = 0;
                            return 1;
                        }
                        return 0;
                    }
                    return 0;
                }
                return 0;
            }
            goto zeroReturn;
        }
        return 0;
    }
zeroReturn:
    return 0;
}
