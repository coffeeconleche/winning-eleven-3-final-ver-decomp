#include "common.h"

extern u8 D_8010A400;
extern s32 func_8001E6B8(s32 bound);
extern s32 func_80057AE4(u8 *record, u32 first, u32 second);
extern void func_8005A1F0(u32 first, u32 second);
extern s32 func_80083D94(u8 first, u8 second);
extern void func_800AB620(s32 value);

void func_80059250(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 initial = D_8010A400;
    u32 half;
    s32 argument;

    if (initial >= 22U) {
        func_8005A1F0(((u8 *)0x1F8002DD)[record[0x398]], 0xFD6);
    } else {
        if (initial == 0 && record[0x398] == 0 && *(u8 *)0x1F8002E1 == 4) {
            func_800AB620(0xEA8);
        }
        half = D_8010A400 >> 1;
        if (half == 0) {
            func_8005A1F0((scratch + record[0x398])[0x2DD], 0xFD6);
            argument = 0xEA9;
        } else {
            func_800AB620(half * 2 + 0xEA8);
            func_8005A1F0((scratch + record[0x398])[0x2DD], 0xFD6);
            argument = D_8010A400;
            argument &= 0xFE;
            argument += 0xEA9;
        }
        func_800AB620(argument);
    }
    func_80057AE4(record, 1, 0);
    if ((u8)func_80083D94(scratch[0x2DB], scratch[0x2DC]) != 0) {
        argument = func_8001E6B8(2) + 0xEC0;
        goto dispatch;
    }
    if ((D_8010A400 & 1) == 0) {
        if ((u8)func_80083D94((u8)(scratch[0x2DB] + 1), scratch[0x2DC]) == 0) {
            if ((D_8010A400 & 1) != 0) {
                goto second_side;
            }
        } else {
            goto selected;
        }
    } else {
second_side:
        if ((u8)func_80083D94(scratch[0x2DB], (u8)(scratch[0x2DC] + 1)) != 0) {
selected:
            argument = func_8001E6B8(2) + 0xEBE;
dispatch:
            func_800AB620(argument);
        }
    }
}
