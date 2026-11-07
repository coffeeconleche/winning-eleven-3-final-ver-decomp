#include "common.h"

extern s32 func_8001E6B8(s32);
extern void func_80067860(u8, s16, s16, u8, s32, s32);

#define CURRENT (*(u8 **)((u8 *)scratch + 0x2F4))

/* Replay side camera-angle resolver: camera-distance gate, u8 proximity
 * window, then a table-driven angle pick keyed by the replay classifier.
 * The empty asm between the first guard branch and its goto pins the
 * branch's delay slot without emitting code, and the two asm outputs
 * carrying the doubled side byte keep the camera-halfword checks from
 * sharing the angle tables' addu operand order; both are placement aids
 * only and introduce no value of their own. */
void func_80078EF8(u8 *record)
{
    u16 *scratch = (u16 *)0x1F800000;
    s32 x2;
    s32 a;
    s32 b;
    s32 d;
    s32 e;

    if (*(s16 *)(record + 0x3C8) != 0) {
        *(u16 *)(record + 0x3D6) = *(u16 *)(0x1F800012 + record[0x398] * 2);
        return;
    }
    x2 = *(s16 *)(*(u8 **)0x1F8002F4 + 2);
    a = (record[0x399] == 0) ? x2 - 0x3320 : x2 + 0x3320;
    b = *(s16 *)(CURRENT + 6) * *(s16 *)(CURRENT + 6);
    if (record[0x399] == 0) {
        if (a * (x2 - 0x3320) + b > 0x483FFFF) {
            __asm__ volatile("\t");
            goto far;
        }
    } else {
        if (a * (x2 + 0x3320) + b > 0x483FFFF) {
            goto far;
        }
    }
    d = (u8)((record[0x399] << 7) - *(u8 *)(CURRENT + 0x3A4));
    if ((u8)d >= 0x81) {
        e = (u8)(*(u8 *)(CURRENT + 0x3A4) - (record[0x399] << 7));
        if (e < 0x31) {
            goto store;
        }
    } else {
        if (d < 0x31) {
store:
            *(u16 *)(record + 0x3D6) = scratch[9 + record[0x398]];
            return;
        }
    }
    switch (func_8001E6B8(0xA)) {
    case 0:
    case 1:
    case 2:
        *(u16 *)(record + 0x3D6) = scratch[9 + record[0x398]];
        return;
    case 9:
        func_80067860(record[0x399], *(s16 *)(CURRENT + 2), *(s16 *)(CURRENT + 6), record[0x3AA], 0x30, 0x1000000);
        if (((u8 *)scratch + ({ s32 t; __asm__ volatile("\t" : "=r"(t) : "0"(record[0x399] << 1)); t; }))[0x322] != 0xFF) {
            *(u16 *)(record + 0x3D6) = scratch[0xB + record[0x398]];
            return;
        }
        break;
    case 8:
    default:
        func_80067860(record[0x399], *(s16 *)(CURRENT + 2), *(s16 *)(CURRENT + 6), record[0x3AA], 0x30, 0x900000);
        if (((u8 *)scratch + ({ s32 t; __asm__ volatile("\t" : "=r"(t) : "0"(record[0x399] << 1)); t; }))[0x322] != 0xFF) {
            *(u16 *)(record + 0x3D6) = scratch[0xF + record[0x398]];
            return;
        }
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        break;
    }
    goto tail;
far:
    if (func_8001E6B8(5) == 0) {
        *(u16 *)(record + 0x3D6) = scratch[0xB + record[0x398]];
        return;
    }
tail:
    *(u16 *)(record + 0x3D6) = scratch[0xD + record[0x398]];
}
