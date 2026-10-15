#include "common.h"

extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_800494C0(u8 *);
extern u32 func_8005B7CC(u32, u32, u32);
extern u32 func_80033DC8(u8 *, u32);

/* Partial aligned record views. Preserve each direction call and the facing
 * reread after it; masked differences are compared only in the range0..255. */
u32 func_80033B88(u8 *record)
{
    s32 goal;
    s16 lateral;
    s32 position;
    s32 x;
    s32 z;
    u32 target;
    u32 current;
    u32 difference;
    u32 angle;
    u32 first;
    /* Actual initialized second argument of the final angle-adjustment call. */
    register u32 second __asm__("$5");
    u32 step;

    x = *(s16 *)(record + 2);
    z = *(s16 *)(record + 6);
    goal = 0x3320;
    if (record[0x399] == 0) {
        goal = -0x3320;
    }
    func_8005B36C(x, z, goal, 0);
    if ((u32)func_800494C0(record) <= 0xA8FFF || record[0x396] == 42) {
        position = *(s16 *)(*(u8 **)0x1F8002F4 + 2);
        if (record[0x399] != 0) {
            if (-position < -0x1BE1) {
                goto angle_test;
            }
            goto goal_near;
        }
        if (position >= -0x1BE1) {
            goto goal_near;
        }
angle_test:
        current = record[0x3AA];
        target = record[0x399] << 7;
        difference = (target - current) & 255;
        if (difference >= 129) {
            if ((s32)((current - target) & 255) >= 80) {
                goto lateral_test;
            }
            goto goal_near;
        }
        if ((s32)difference >= 80) {
lateral_test:
            x = *(s16 *)(record + 2);
            angle = func_8005B36C(x, *(s16 *)(record + 6), x, 0);
            if (((angle - record[0x3AA]) & 255) >= 129) {
                x = *(s16 *)(record + 2);
                angle = func_8005B36C(x, *(s16 *)(record + 6), x, 0);
                if ((s32)((record[0x3AA] - angle) & 255) >= 73) {
                    goto goal_near;
                }
            } else {
                x = *(s16 *)(record + 2);
                angle = func_8005B36C(x, *(s16 *)(record + 6), x, 0);
                if ((s32)((angle - record[0x3AA]) & 255) >= 73) {
                    goto goal_near;
                }
            }
            z = *(s16 *)(record + 6);
            lateral = 0x2200;
            if (z < 0) {
                lateral = -0x2200;
            }
            x = *(s16 *)(record + 2);
            first = (u8)func_8005B36C(x, z, x, lateral);
            goto finish_near;
        } else {
            goto goal_near;
        }
goal_near:
        x = *(s16 *)(record + 2);
        z = *(s16 *)(record + 6);
        goal = -0x3320;
        if (record[0x399] == 0) {
            goal = 0x3320;
        }
        angle = func_8005B36C(x, z, goal, 0);
        first = (u8)func_8005B7CC((u8)angle, (record[0x399] << 7) & 128, 16);
finish_near:
        second = record[0x3AA];
        step = 64;
    } else {
        x = *(s16 *)(record + 2);
        z = *(s16 *)(record + 6);
        goal = -0x3320;
        if (record[0x399] == 0) {
            goal = 0x3320;
        }
        first = (u8)func_8005B36C(x, z, goal, 0);
        step = 16;
        second = (record[0x399] << 7) & 128;
    }
    return (u8)func_80033DC8(record, (u8)func_8005B7CC(first, second, step));
}
