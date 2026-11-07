#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A5A8[];
extern u8 D_800E7DE8;
extern u8 D_8010C538;
extern u8 D_8010C2A2;
extern void func_8009ACC0(void);
extern void func_800AB620(s32);
extern void func_8004FE30(void);
extern void func_800171A0(void);
extern void func_8004FEE8(s32);
extern u8 func_80017A20(void);
extern void func_8001DD50(s32);
extern void func_800500B0(s32, s32, s32, s32);
extern void func_8004FD14(s32);
extern void func_8001723C(s32);
extern void func_80020DB8(void);
extern void func_8001F53C(void);
extern void func_80189754(void);
extern void func_800B53D8(s32);
extern void func_80189574(void);
extern void func_8002283C(void);
extern s32 func_8004FB68(s32);
extern s32 func_80070008(void);
extern void func_8004FAC0(s32, s32);
extern void func_80017178(s32);
extern void func_8005ADE4(void);
extern s32 func_8004FBC4(s32);
extern void func_8001720C(void);

/* Menu/mode state router on the scratch mode byte: panel resets, replay
 * setup, and the attract/replay transition handlers. The two labeled
 * epilogue calls are shared landing pads for several arms; the one
 * explicit clobber below is a placement aid keeping the call argument
 * with its jal, and emits no code. */
void func_8001E814(void)
{
    u8 *panel = D_8010A5A8;
    u8 *buf = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *m1 = (u8 *)0x1F800000;
    u8 *m2 = (u8 *)0x1F800000;
    s32 i;
    s32 r;
    s32 arg;

    if (m1[0x29A] >= 2) {
        func_8009ACC0();
    }
    switch (m2[0x29A]) {
    case 0:
        if (*(u8 *)(scratch + 0x2E1) == 5) {
            arg = 0xD;
        } else if (*(u8 *)(scratch + 0x298) == 3 || panel[5] != 0) {
            arg = 0xC;
        } else {
            arg = 0xD;
        }
        func_800AB620(arg);
        buf[0x8F18] = 0;
        buf[0x8F19] = 0;
        scratch[0x335] = 0;
        scratch[0x334] = 0;
        scratch[0x333] = 0;
        D_8010C538 = 0;
        for (i = 0; i < 0x16; i++) {
            (buf + i)[0x88A5] = 0;
            (buf + i)[0x88BB] = 0;
        }
        func_8004FE30();
    common:
        func_800171A0();
        break;
    case 1:
        func_8004FEE8(0xD0);
        if (func_80017A20() == 0) {
            break;
        }
        func_8001DD50(0xC);
        func_800500B0(0, 0x1E8, 1, 0x1E9);
        *(s32 *)(scratch + 0x198) = 1;
        *(s32 *)(scratch + 0x19C) = 2;
        /* Keeps the argument materialization at the call. */
        __asm__ volatile("\t" : : : "$4");
        func_8004FD14(1);
        func_8001723C(0);
        func_80020DB8();
        if (*(u8 *)(scratch + 0x298) == 3) {
            if (D_800E7DE8 == *(u8 *)(scratch + 0x298)) {
                goto common;
            }
            goto wipe;
        }
        if (*(u8 *)(scratch + 0x2E1) == 4) {
            goto wipe;
        }
        buf[0xABD9] = 0;
        if (*(u8 *)(scratch + 0x2E1) != 5) {
            goto common;
        }
        func_8001F53C();
        func_80189754();
        *(s16 *)(scratch + 0xE) = -0x1C00;
        *(s32 *)(scratch + 0x2F8) = 0xFF;
        scratch[0x331] = 0;
        *(s32 *)(scratch + 0x32C) = 0x400;
        func_800B53D8(0x400);
        func_800171A0();
        goto common;
    case 2:
        func_80189574();
        break;
    case 3:
        func_8002283C();
        if (func_8004FB68(0) != 0) {
            goto common;
        }
        break;
    case 4:
        func_8002283C();
        switch (func_80070008()) {
        case 1:
            func_8004FAC0(0x10, 0);
            func_80017178(3);
            D_8010C2A2 = 0x10;
            break;
        case 2:
            func_8005ADE4();
            goto common;
        }
        break;
    case 5:
        if (func_8004FBC4(0) == 0) {
            break;
        }
    wipe:
        func_8001720C();
        break;
    }
}
