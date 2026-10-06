#include "common.h"

extern u8 D_800FF748[], D_8010C1D8[], D_8010A322;
extern u8 D_80193C88, D_80193C98[], D_800FFB30[];
extern u16 D_800E6B86;
extern s32 D_801918F8;

/* Aliasing access view, not a recovered union or an allocated object. The
 * indirect halfword stores may affect the absolute pointer slot, so each
 * store obtains its destination again. Only offsets 2 and 6 are observed. */
typedef union { u8 *pointer; u16 half[4]; } AliasView;
extern AliasView scratchDestination __asm__("0x1F8002F4");

extern s32 func_8004FBC4(s32), func_800525A4(void), func_8001E6B8(s32);
extern void func_8001DD50(s32), func_80099F20(u8);
extern void func_80050140(s16, s16, s32, s32);
extern void func_8018EA5C(void), func_8018B020(void);
extern void func_8018CE40(u8 *), func_8018E8D0(u8 *);
extern void func_8018AE8C(void), func_800B53D8(s32), func_80050888(u8);
extern void func_800AB620(s32), func_8018E490(u32);
extern s32 func_8004FB68(s32);
extern void func_8001723C(u8), func_80189DB4(void), func_8018F93C(void);
extern void func_8018D21C(u8), func_8018A3A8(void), func_8018DBBC(u8);
extern void func_8018A008(void), func_8001FA1C(void), func_8018FB8C(void);
extern void func_8018EB00(void), func_8018C898(void);

s32 func_8018A7C4(void)
{
    u8 *base, *control;
    u8 *scratch = (u8 *)0x1F800000;
    u32 state;

    ((AliasView *)scratchDestination.pointer)->half[1] = *(u32 *)0x1F8001F0;
    ((AliasView *)scratchDestination.pointer)->half[3] = *(u32 *)0x1F8001F8;
    base = D_800FF748;
    state = D_8010A322;
    control = D_8010C1D8;
    switch (state) {
    case 0: {
        u8 i, *row, *first, *second;
        /* Retain the predicate's zero return directly. Removing this binding
         * inserts a redundant move-to-zero in the original nop delay slot. */
        register s32 ready __asm__("$2") = func_8004FBC4(0);

        if (!ready) return ready;
        func_8001DD50(12);
        func_80099F20(1);
        if (scratch[0x2E1] == 2) {
            switch (base[0x8F1F] & 15) {
            case 1: D_80193C88 = 1; goto selected;
            case 0: case 2: D_80193C88 = 0; goto selected;
            case 3: D_80193C88 = 3; goto selected;
            case 4: D_80193C88 = 2; goto selected;
            case 5: D_80193C88 = 1; goto selected;
            }
        }
        D_80193C88 = func_8001E6B8(4);
selected:
        func_8018EA5C();
        D_801918F8 = 0;
        scratch[0x1E8] = 0;
        func_80050140(304, 491, 96, 504);
        func_80050140(304, 491, 112, 504);
        func_8018B020();
        first = D_80193C98;
        second = first + 0x530;
        func_8018CE40(first);
        func_8018CE40(second);
        func_8018E8D0(first);
        func_8018E8D0(second);
        row = base;
        i = 0;
        scratch[0x1EC] = 4;
        do { *row = 0; i++; row += 1000; } while (i < 24);
        func_8018AE8C();
        *(u32 *)(scratch + 0x32C) = 512;
        func_800B53D8(512);
        func_80050888(0);
        base[0xABDA] = 16;
        func_800AB620(0x14E6);
        *(u16 *)(scratch + 0x294) = 0;
        func_8018E490(12);
        break;
    }
    case 16:
        base[0x59D8] = 0;
        base[0xABDA]++;
        switch (func_8001E6B8(11)) {
        case 0: case 9: *(u32 *)(control + 32) = 0; break;
        case 1: case 10: *(u32 *)(control + 32) = 1; break;
        case 2: *(u32 *)(control + 32) = 2; break;
        case 3: *(u32 *)(control + 32) = 3; break;
        default: *(u32 *)(control + 32) = 4; break;
        case 5: *(u32 *)(control + 32) = 5; break;
        case 6: *(u32 *)(control + 32) = 6; break;
        }
        *(u16 *)(scratch + 14) = *(u16 *)(scratch + 14) - 2560;
        func_8018D21C(control[32]);
        *(u16 *)(scratch + 0x294) = 0;
        break;
    case 17:
        func_8018AE8C();
        D_801918F8 = 1;
        base[0xABDA]++;
        break;
    case 18: {
        u16 old = *(u16 *)(scratch + 0x294);
        *(u16 *)(scratch + 0x294) = old + 1;
        if (old >= 5) func_8004FB68(0);
        if (*(u16 *)(scratch + 0x294) >= 421) base[0xABDA] = 19;
        if (func_800525A4()) base[0xABDA] = 19;
        break;
    }
    case 19:
        if (func_8004FBC4(0)) base[0xABDA] = 32;
        break;
    case 32: {
        u8 i, *row;
        u32 selection;
        scratch[0x1E8] = 0;
        control[13] = 1;
        control[14] = 1;
        scratch[0x1EC] = 4;
        row = base + 1000;
        i = 0;
        do { *row = 1; i++; row += 1000; } while (i < 22);
        func_8001723C(0);
        func_80189DB4();
        *(u32 *)(scratch + 0x32C) = 768;
        func_800B53D8(768);
        func_80050888(0);
        func_8018F93C();
        base[0xABDA]++;
        selection = (u32)func_8001E6B8(6) + 16;
        *(u32 *)(control + 32) = selection;
        func_8018D21C((u8)selection);
        *(u16 *)(scratch + 0x294) = 0;
        break;
    }
    case 33: {
        u16 old = *(u16 *)(scratch + 0x294);
        *(u16 *)(scratch + 0x294) = old + 1;
        if (old >= 5) func_8004FB68(0);
        func_8018A3A8();
        if (*(u16 *)(scratch + 0x294) < 361) {
            u8 i, *row;
            func_8018DBBC(control[32]);
            row = D_800FFB30;
            i = 0;
            do { row[0x3D3] = 1; i++; row += 1000; } while (i < 22);
            if (!func_800525A4()) break;
        }
        base[0xABDA] = 48;
        func_800AB620(14);
        break;
    }
    case 48: {
        u32 selection;
        if (func_8004FBC4(0)) {
            scratch[0x1E8] = 0;
            base[0xABDA]++;
            selection = (u32)func_8001E6B8(6) + 32;
            *(u32 *)(control + 32) = selection;
            func_8018D21C((u8)selection);
            func_8018A008();
            *(u16 *)(scratch + 0x294) = 0;
            func_8001FA1C();
            func_8018E490(12);
        }
        break;
    }
    case 49: {
        u16 old;
        func_8018FB8C();
        old = *(u16 *)(scratch + 0x294);
        *(u16 *)(scratch + 0x294) = old + 1;
        if (old >= 5) func_8004FB68(0);
        if (func_800525A4()) base[0xABDA] = 64;
        else {
            func_8018DBBC(control[32]);
            if (*(u16 *)(scratch + 0x294) >= 849) base[0xABDA]++;
        }
        break;
    }
    case 50:
        if (func_8004FBC4(0)) {
            *(u16 *)(scratch + 0x294) = 0;
            *(u32 *)(control + 32) = 48;
            func_8018D21C(48);
            base[0xABDA]++;
            func_8018E490(12);
        }
        break;
    case 51: {
        u16 old;
        func_8018FB8C();
        old = *(u16 *)(scratch + 0x294);
        *(u16 *)(scratch + 0x294) = old + 1;
        if (old >= 5) func_8004FB68(0);
        func_8018DBBC(control[32]);
        if (func_800525A4() ||
            (D_800E6B86 == 0 && *(u16 *)(scratch + 0x294) >= 121))
            base[0xABDA] = 64;
        break;
    }
    case 64:
        if (func_8004FBC4(0)) {
            func_8018EB00();
            func_800AB620(17);
            return 1;
        }
        break;
    }
    if (D_801918F8 == 1) func_8018C898();
    return 0;
}
