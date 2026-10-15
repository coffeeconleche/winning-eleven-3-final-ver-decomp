#include "common.h"

typedef struct {
    u8 unknown[2];
    s16 half2;
    u8 unknown4[2];
    s16 half6;
    u8 unknown8[0x38A];
    u8 byte392;
    u8 unknown393[5];
    u8 byte398;
    u8 unknown399[0x1B];
    u8 byte3B4;
} Resident4840CView;

extern u32 func_8005B36C(s32, s32, s32, s32);
extern void func_8005C2AC(u8 *, u8, u8, u8, u8);
extern u32 func_800B1128(u32);
extern s32 func_8001E694(u32, s32), func_8001E5A4(u32, s32);
extern void func_8004840C(Resident4840CView *);
extern u8 func_80052A68(u8 *, u8, u32);
extern u32 func_8003CEE4(u8 *, u32, u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);

/* One actor input; the caller consumes the genuine 0/1 status. */
s32 func_80028C68(u8 *actor)
{
    u8 *reference = *(u8 **)0x1F8002F4;
    u8 *scratch = (u8 *)0x1F800000;
    u32 heading;
    u32 byteHeading;
    u8 mode;
    s32 animation;
    s32 inRange;
    s32 dx, dz;
    u32 firstSquared;
    s32 speed;
    s32 limit;
    s32 angle;
    u16 x, z, stepX, stepZ;

    if ((*(s32 *)(reference + 0xC) > 0 || *(s16 *)0x1F8002B8 == 0x7FFF) &&
        *(s16 *)0x1F800058 >= -223) {
        heading = func_8005B36C(*(s16 *)(actor + 2), *(s16 *)(actor + 6),
                               *(s16 *)0x1F800040, *(s16 *)0x1F800070);
        animation = *(u16 *)(actor + 0x38E);
        mode = actor[0x3AC];
        switch (animation) {
        case 27:
        case 38:
            inRange = (u32)(actor[0x390] - 7) < 8U;
            goto testRange;
        case 4:
            inRange = (u32)(actor[0x390] - 4) < 7U;
    testRange:
            if (!inRange)
                mode ^= 1;
            break;
        }
        func_8005C2AC(actor, 35, 0, (u8)heading, mode);
        heading = func_8005B36C((s16)*(u16 *)(scratch + 0xF0),
                               (s16)*(u16 *)(scratch + 0xF4),
                               (s16)*(u16 *)(scratch + 0x40),
                               (s16)*(u16 *)(scratch + 0x70));
        dx = (s16)*(u16 *)(scratch + 0xF0) - (s16)*(u16 *)(scratch + 0x40);
        /* Differences fit s32; products and their sum require low-word wrapping. */
        firstSquared = (u32)dx * (u32)dx;
        dz = (s16)*(u16 *)(scratch + 0xF4) - (s16)*(u16 *)(scratch + 0x70);
        /* Divide the actual helper WORD: /6 fits s32 for every u32 result.
         * No narrow square-root-output assumption is needed. */
        speed = func_800B1128(firstSquared + (u32)dz * (u32)dz) / 6U;
        limit = actor[0x3B4] + 4;
        byteHeading = (u8)heading;
        if (speed >= limit)
            speed = limit;
        *(u16 *)(actor + 0x3CA) = func_8001E694(byteHeading, speed);
        *(u16 *)(actor + 0x3CE) = func_8001E5A4(byteHeading, speed);
        *(u16 *)(scratch + 0xF0) += *(s16 *)(actor + 0x3CA) * 6;
        *(u16 *)(scratch + 0xF4) += *(s16 *)(actor + 0x3CE) * 6;
        func_8004840C((Resident4840CView *)actor);
        if (!func_80052A68(actor, 5, 0x40000) &&
            (u8)func_8003CEE4(actor, 5, 0, 0, 0x14400)) {
            func_8005BA30(actor, 35, 0);
            actor[0x3AA] = heading;
            angle = 448 - byteHeading;
            *(u16 *)(actor + 0x26) = (angle % 256) << 4;
            actor[0x397] = 33;
            x = *(u16 *)(actor + 2);
            stepX = *(u16 *)(actor + 0x3CA);
            z = *(u16 *)(actor + 6);
            stepZ = *(u16 *)(actor + 0x3CE);
            *(u32 *)(actor + 0x3A0) = speed;
            actor[0x3AC] = mode;
            *(u16 *)(actor + 2) = x + stepX;
            *(u16 *)(actor + 6) = z + stepZ;
            return 1;
        }
        if ((s16)*(u16 *)(scratch + 0x2B8) == 0x7FFF) {
            actor[0x397] = 16;
            return 1;
        }
        return 0;
    }
    return 0;
}
