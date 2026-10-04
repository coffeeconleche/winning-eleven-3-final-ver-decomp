#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A5A8[];
extern u8 D_801D59E8[];
extern u8 *D_801D1AF8;
/* Caller-side ABI views; complete original callback prototypes are unknown. */
extern s32 func_80192A30(s32, s32, const u8 *, void *, s32, u8);
extern s32 func_801CFF38(u8 *);
extern void func_801CF964(void);
extern void func_800AB620(s32);
extern void func_800A9714(s32);
extern void func_800AB124(s32);
extern void func_800A98E0(s32);
extern void func_800B4958(s32, s32);

s32 func_801CF760(u8 mode) {
    s32 result;
    u8 *config;
    u8 *base;
    /* Retail retains this scratch base in s0 across dispatch. The binding
     * reproduces that allocation and its natural 48-byte saved-register frame. */
    register u8 *scratch __asm__("$16");
    u32 value;

    result = func_80192A30(1, 0, D_801D59E8, D_801D1AF8, 0x2400, 1);
    config = D_8010A5A8;
    base = D_800FF748;
    scratch = (u8 *)0x1F800000;
    switch (result) {
    case 1:
        if (mode == 0) {
            func_801CFF38(D_801D1AF8 + 0x100);
        }
        func_801CF964();
        /* Each byte is read after the preceding callback, not captured early. */
        func_800AB620(config[5] ? 12 : 13);
        func_800AB620(config[6] ? 4 : 5);
        value = config[2];
        if (value >= 32) {
            value = 15;
        } else {
            value >>= 1;
        }
        func_800A9714(value);
        value = config[3];
        if (value >= 32) {
            value = 15;
        } else {
            value >>= 1;
        }
        func_800AB124(value);
        value = config[4];
        if (value >= 32) {
            value = 15;
        } else {
            value >>= 1;
        }
        func_800A98E0(value);
        func_800B4958(*(s16 *)(base + 0xAC18), *(s16 *)(base + 0xAC1A));
        result = 1;
        break;
    case -4:
        *(u16 *)(scratch + 0x294) = 0;
        result = -4;
        break;
    case -2:
        base[0x8F1E] = 0;
        /* Fall through to the same scratch reset as -3/-1. */
    case -3:
    case -1:
        *(u16 *)(scratch + 0x294) = 0;
        result = -1;
        break;
    }
    return result;
}
