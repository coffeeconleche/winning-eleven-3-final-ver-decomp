#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801DAD84, D_801DA2F0, D_801DAE50, D_801D8A8F;
extern u32 D_801DA058;
extern s16 D_801DA5D2, D_801DA5D6;
extern u16 D_8010A5A4;
extern u8 *func_8001D004(s32);
extern void func_8006FCFC(u8);
/* This caller passes zero; the recovered callee does not consume it. */
extern void func_8018E538(s32);
extern void func_801B7B00(void), func_801B8028(void);
extern void func_801B7D44(u8);
extern s32 func_8006F07C(u8), func_8006F0DC(u8, u8);
extern s32 func_8006EC80(u8);
extern void func_800AB620(s32);

s32 func_801B7804(void) {
    /* Measured saved-base allocation; no instructions are supplied by this binding. */
    register u8 *base __asm__("$17") = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    if (D_801DAD84 == 4 && D_801DA2F0 == 1) {
        func_8001D004(0x30AC)[10] = 0x36;
        func_8006FCFC(0x36);
    } else {
        func_8001D004(0x30AC)[10] = 0x5B;
    }
    switch (base[0xABD8]) {
    case 0: {
        u8 state = base[0xABD8];
        D_801DAD84 = 4;
        D_801DAE50 = 0;
        D_801DA058 = 0;
        base[0xABD8] = state + 1;
        break;
    }
    case 1:
        func_8018E538(0);
        scratch[0x2A2] = 5;
        func_801B7B00();
        func_801B7D44(*(u8 *)&D_801DA5D2);
        func_801B8028();
        base[0xABD8]++;
        break;
    case 2:
        if (func_8006F07C(16)) {
            D_801DA2F0 = 1;
            D_801D8A8F = 0;
            base[0xABD8] = 10;
        }
        break;
    case 10:
        base[0x5F7C] = (*(u32 *)(scratch + 0x290) >> 5) & 1;
        D_8010A5A4 = func_8006EC80(0);
        if (D_8010A5A4 == 0x1000) {
            s16 *current = &D_801DA5D2;
            if (*current != 0) {
                s32 value;
                func_800AB620(0x50D);
                /* The post-call reread is unsigned, unlike the signed guard. */
                value = *(u16 *)current - 1;
                *current = value;
                func_801B7D44((u8)value);
                func_801B8028();
            }
        }
        if (D_8010A5A4 == 0x4000) {
            s16 *current = &D_801DA5D2;
            s32 bound = D_801DA5D6;
            if (*current < 24 - bound) {
                s32 value;
                func_800AB620(0x50D);
                value = *(u16 *)current + 1;
                *current = value;
                func_801B7D44((u8)value);
                func_801B8028();
            }
        }
        if (D_8010A5A4 == 0x40) {
            func_800AB620(0x529);
            D_801DAE50 = 1;
            base[0xABD8] = 20;
        }
        if (D_8010A5A4 == 0x20) {
            func_800AB620(0x528);
            D_801DAE50 = 2;
            base[0xABD8] = 20;
        }
        break;
    case 20:
        if (func_8006F0DC(64, 0)) return D_801DAE50;
        break;
    }
    return 0;
}
