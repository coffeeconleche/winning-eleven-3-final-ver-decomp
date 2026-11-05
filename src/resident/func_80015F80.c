#include "common.h"

extern u8 D_800FF748[];
extern u32 D_800E6BE0;
extern u32 D_800E6BE8;
extern s16 D_800E6B84;
extern void func_800171A0(void);
extern void func_8001714C(void);
extern void func_8001CEE0(u32, u32, u32, u32, u32, u32, u32, u32);
extern s32 func_800178B4(void);
extern void func_800AB294(void);
extern s32 func_8006F07C(u32, u32);
extern s32 func_8006F0DC(u8, u8);

/* Replay-mode setup dispatcher on the scratch mode at 0x1F80029A. */
void func_80015F80(void) {
    u8 *scratch = (u8 *)0x1F800000;
    u8 *records = D_800FF748;

    switch (*(u8 *)0x1F80029A) {
    case 0:
    case 1:
        D_800E6BE0 = 0;
        scratch[0x29F] = 0;
        *(u16 *)(records + 0xABD6) = 0xFF;
        D_800E6BE8 = 0;
        scratch[0x330] = 1;
        /* fallthrough */
    case 3:
    shared:
        func_800171A0();
        break;
    case 2:
        func_8006F07C(8, 0);
        func_8001CEE0(2, 0x48, 0x1000000, 8, 0, 0x1D, 0xFD, 1);
        func_8001CEE0(3, 0x48, 0x1000000, 0x88, 0, 0x1E, 0xFD, 1);
        func_8001CEE0(1, 0x49, 0x1000000, 0, 0, 0x1C, 0xFE, 1);
        if ((u8)func_800178B4() != 0) goto shared;
        break;
    case 4:
        func_800AB294();
        goto shared;
    case 5:
        if (func_8006F0DC(16, 0) == 0) break;
        if (D_800E6B84 != 0) break;
        func_8001714C();
        break;
    }
}
