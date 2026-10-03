#include "common.h"

extern u8 D_800FF748[], D_801D1F54[], D_801D8FB8;
extern u8 *func_8001D004(u32);
extern s32 func_8019E3EC(u32, u32);
extern void func_800219F4(u8 *, u32, u32);
/* Word ABI views retain the supplied coordinate bits; the original complete
 * descriptor declarations are not established by these calls. */
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32);
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_8019E25C(u32 selector) {
    u8 *base = D_800FF748;
    u8 *records = func_8001D004(0x303E);
    u32 fill = 0x5B;
    s32 index = 23;
    u8 *cursor = records + 0x114;
    u32 rawMode;
    u32 mode;
    do {
        cursor[10] = fill;
        index--;
        cursor -= 12;
    } while (index >= 0);

    rawMode = *(u8 *)0x1F8002E1;
    /* The empty tie retains the measured byte re-narrowing, emitting no code. */
    asm("" : "=r"(rawMode) : "0"(rawMode));
    mode = (u8)rawMode;
    if ((mode == 2 && (u8)selector < 2) || mode == 1) {
        base[0x5E8C] = 0;
        func_801942E0(1, D_801D1F54, -155, 22, 142, 1, 0, 0, 0, 1, 1, 1);
    } else {
        index = 0;
        cursor = records;
        do {
            if (func_8019E3EC((u8)index, (u8)selector)) {
                u8 *entry = cursor;
                cursor[1] = 16;
                cursor += 12;
                func_800219F4(entry, index, 0);
            }
            index++;
        } while (index < 40);
        D_801D8FB8 = 0;
        func_80193FB4(5, 0x303E, 0, 0, 0, 6, 0, 0x1000, 0x1000,
                     0, 0, 128, 128, 128, 0, 2, 1);
    }
}
