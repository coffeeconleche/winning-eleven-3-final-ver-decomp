#include "common.h"

extern u8 D_801D92A3, D_801D8FA0, D_801DAE50;
extern u8 *D_8011D5F4[];
extern s16 D_801D8D90, D_801D8D92, D_801D8D94, D_801D8D96;
extern u8 D_801D8D98, D_801D8D99, D_801D8D9A;
extern u8 D_801D8D9B, D_801D8D9C, D_801D8D9D;
extern u16 D_8010A5A4;
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32,
                        s32, s32, s32, s32, s32, s32);
extern void func_801940EC(s32, s32, void *, s32, s32, s32);
extern s32 func_8006EC80(u8);
extern void func_800AB620(s32);

/* Original descriptor field names and the selector/key meanings are unknown. */
s32 func_801AB6E8(s32 argument) {
    /* These bindings and the empty setup tie retain the measured register
     * allocation and initialization schedule; they do not emit instructions. */
    register s32 index __asm__("$19") = argument;
    register s16 y __asm__("$17");
    s16 height;
    s16 textY;
    s32 key;
    s32 raw;
    s32 result;
    s16 *fields;

    __asm__("" : "=r"(index) : "0"(index));
    y = -32;
    height = 32;
    textY = -24;

    if (index < 0) {
        D_801D92A3 = 0;
        D_801D8FA0 = 0;
        return 2;
    }
    if (index == 77) {
        y = 32;
        height = 52;
        textY = 34;
    } else if ((u32)(index - 85) < 3) {
        y = 32;
        height = 48;
        textY = 40;
    }
    func_801942E0(0, D_8011D5F4[index], -100, textY, 200, 3,
                 0, 0, 0, 3, 0, 1);
    fields = &D_801D8D90;
    *fields = -100;
    D_801D8D94 = 200;
    D_801D8D9A = 48;
    D_801D8D92 = y;
    D_801D8D96 = height;
    D_801D8D98 = 0;
    D_801D8D99 = 0;
    D_801D8D9B = 255;
    D_801D8D9C = 255;
    D_801D8D9D = 255;
    func_801940EC(0, 0, fields, 1, 1, 1);
    D_801DAE50 = 0;
    raw = func_8006EC80(0);
    key = (u16)raw;
    D_8010A5A4 = raw;
    switch (key) {
    case 16:
        if (index == 77) {
            func_800AB620(0x529);
            D_801DAE50 = 3;
        }
        break;
    case 32:
        func_800AB620(0x528);
        D_801DAE50 = 2;
        break;
    case 64:
        if (index == 77) {
            func_800AB620(0x529);
            D_801DAE50 = 1;
        }
        break;
    }
    result = D_801DAE50;
    if (result != 0) {
        D_801D92A3 = 0;
        D_801D8FA0 = 0;
        /* Keep the observed byte reread after these stores instead of reusing
         * the branch value under distinct-global alias assumptions. */
        __asm__ volatile ("" : "=m"(D_801DAE50));
        result = D_801DAE50;
    }
    return result;
}
