#include "common.h"

extern void func_8005C1CC(u8 *, u32);
extern u32 func_8004E410(u8 *);
extern s32 func_8004E5A8(u32);
extern void func_800951C4(u8 *, u32, s32, u32);
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);
extern s32 func_80052C6C(u8 *);
extern s32 func_8001E6B8(s32);
extern u8 *ballView __asm__("0x1F8002F4");
extern s16 heightView __asm__("0x1F8000F2");

s32 func_8004D7D4(u8 *input)
{
    register u8 *record __asm__("$17") = input;
    register u8 *scratch __asm__("$19");
    u32 direction;
    u32 adjustment;
    s32 level;
    s32 component;

    scratch = (u8 *)0x1F800000;
    if (*(u8 *)0x1F8002A9 != 0) {
        goto failure;
    }
    __asm__("" : "=r"(record) : "0"(record));
    {
        u8 *ball = ballView;
        s32 dx = *(s16 *)(record + 2) - *(s16 *)(ball + 2);
        s32 dz = *(s16 *)(record + 6) - *(s16 *)(ball + 6);
        if ((s32)((u32)dx * (u32)dx + (u32)dz * (u32)dz) >= 0x4001) {
            goto failure;
        }
    }
    func_8005C1CC(record, 0);
    {
        u8 *ball = ballView;
        s32 value = heightView;
        s32 height = *(s16 *)(ball + 4);
        if (height < value - 32) {
            return 0;
        }
    }
    __asm__("" : "=r"(scratch) : "0"(scratch));
    func_8005C1CC(record, 8);
    {
        u8 *ball = ballView;
        s32 value = heightView;
        s32 height = *(s16 *)(ball + 4);
        if (value + 16 >= height) {
            goto proceed;
        }
    }
    func_8005C1CC(record, 11);
    {
        u8 *ball = ballView;
        s32 value = heightView;
        s32 height = *(s16 *)(ball + 4);
        if (value + 16 >= height) {
            goto proceed;
        }
    }
failure:
    return 0;
proceed:
    scratch[0x2F2] = 0;
    *(u16 *)(scratch + 0x2B4) = 0x7FFF;
    *(u16 *)(scratch + 0x2B8) = 0x7FFF;
    direction = func_8004E410(record);
    {
        u8 *ball = *(u8 **)(scratch + 0x2F4);
        u32 facing = record[0x3A4];
        u32 otherFacing = ball[0x3A4];
        u32 speed = *(u32 *)(record + 0x3A0);
        u32 difference = (facing - otherFacing) & 255;
        if (difference < 129) {
            adjustment = (speed * difference) / 192U;
        } else {
            adjustment = (speed * ((otherFacing - facing) & 255)) / 192U;
        }
    }
    direction = (u8)direction;
    level = func_8004E5A8(direction);
    func_800951C4(record, direction, level, adjustment);
    (*(u8 **)(scratch + 0x2F4))[0x3B0] = 2;
    (*(u8 **)(scratch + 0x2F4))[0x3B2] = 2;
    component = func_8001E694(direction, 104);
    {
        u16 coordinate = *(u16 *)(record + 2);
        u8 *pointed = *(u8 **)(scratch + 0x2F4);
        *(u16 *)(pointed + 2) = (u32)coordinate + (u32)component;
    }
    component = func_8001E5A4(direction, 104);
    {
        u16 coordinate = *(u16 *)(record + 6);
        u8 *pointed = *(u8 **)(scratch + 0x2F4);
        *(u16 *)(pointed + 6) = (u32)coordinate + (u32)component;
    }
    *(u32 *)(scratch + 0x2B0) = 11;
    *(u16 *)(scratch + 0x31C) = 0;
    {
        register u8 *selected __asm__("$2") = scratch + record[0x398];
        selected[0x2CF] = 1;
    }
    if ((u8)func_80052C6C(record) != 0) {
        return 1;
    }
    {
        register u32 value __asm__("$2") = (u32)func_8001E6B8(4) + 4U;
        record[0x3D0] = value;
        value = 14;
        record[0x396] = value;
        value = 64;
        record[0x397] = value;
    }
    return 1;
}
