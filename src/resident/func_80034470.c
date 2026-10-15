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

extern u8 D_8010C330[];
extern u32 func_80034734(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_80049DF0(u8 *, u32, u32, u32);
extern s32 func_8005385C(u8 *, u32);
extern void func_8002CE60(u8 *, u32, u32);
extern void func_8004840C(Resident4840CView *);
extern void func_800479B8(u8 *, u32);

void func_80034470(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 angle;
    u32 direction;
    u32 facing;
    u32 difference;
    u32 next;
    u8 flag;

    *(u16 *)(record + 0x3C2) = (u8)func_80034734(record);
    angle = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                         *(s16 *)(record + 0x3C8), *(s16 *)(record + 0x3CA));
    facing = record[0x3AA];
    difference = (angle - facing) & 255;
    if (difference >= 129) {
        if ((s32)((facing - angle) & 255) < 33) {
            goto near;
        }
        goto far;
    }
    if ((s32)difference < 33) {
near:
        func_8005BA30(record, 15, 22);
        {
            u32 index = record[0x392];
            u32 side = record[0x398];
            u32 word = *(u32 *)(D_8010C330 + index * 12 + side * 264);
            s32 z = *(s16 *)(record + 6);
            u8 *ball;
            s32 x;
            record[0x3AC] = (word >> 4) & 1;
            ball = *(u8 **)(scratch + 0x2F4);
            x = *(s16 *)(record + 2);
            direction = func_8005B36C(x, z, *(s16 *)(ball + 2), *(s16 *)(ball + 6));
        }
        angle = func_8005B7CC(angle & 255, direction & 255, 12);
        func_80049DF0(record, angle & 255, 26, 5);
        next = 5;
        goto save;
    }
far:
    {
        s32 x = *(s16 *)(record + 2);
        u8 *ball = *(u8 **)(scratch + 0x2F4);
        s32 z = *(s16 *)(record + 6);
        direction = func_8005B36C(x, z, *(s16 *)(ball + 2), *(s16 *)(ball + 6));
    }
    if (((angle - direction) & 255) >= 129) {
        s32 x = *(s16 *)(record + 2);
        u8 *ball = *(u8 **)(scratch + 0x2F4);
        s32 z = *(s16 *)(record + 6);
        direction = func_8005B36C(x, z, *(s16 *)(ball + 2), *(s16 *)(ball + 6));
        if ((s32)((direction - angle) & 255) >= 88) {
            goto capture;
        }
        goto turn;
    }
    {
        s32 x = *(s16 *)(record + 2);
        u8 *ball = *(u8 **)(scratch + 0x2F4);
        s32 z = *(s16 *)(record + 6);
        direction = func_8005B36C(x, z, *(s16 *)(ball + 2), *(s16 *)(ball + 6));
    }
    if ((s32)((angle - direction) & 255) >= 88) {
capture:
        if (func_8005385C(record, 1) != 0) {
            u32 id = record[0x38D];
            u8 *ball = *(u8 **)(scratch + 0x2F4);
            scratch[0x2A8] = id;
            ball[0x396] = 3;
            func_8002CE60(record, angle & 255, record[0x3AA]);
            next = 6;
            goto state;
        }
        if (record[0x396] != 24) {
            record[0x3D1] = 2;
            func_8004840C((Resident4840CView *)record);
            func_800479B8(record, 1);
        }
        return;
    }
turn:
    func_8005BA30(record, 20, 0);
    flag = ((angle - record[0x3AA]) & 255) >= 129;
    record[0x3AC] = flag;
    {
        u32 lowAngle = angle & 255;
        if (flag == 0) {
            angle = lowAngle - 64U;
        } else {
            angle = lowAngle + 64U;
        }
    }
    {
        s32 x = *(s16 *)(record + 2);
        u8 *ball = *(u8 **)(scratch + 0x2F4);
        s32 z = *(s16 *)(record + 6);
        direction = func_8005B36C(x, z, *(s16 *)(ball + 2), *(s16 *)(ball + 6));
    }
    angle = func_8005B7CC(angle & 255, direction & 255, 16);
    func_80049DF0(record, angle & 255, 3, 3);
    next = 3;
save:
    record[0x3AB] = angle;
state:
    record[0x397] = next;
}
