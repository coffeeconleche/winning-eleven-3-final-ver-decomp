#include "common.h"

/* Caller-level ABI views; the original field meanings and helper types are unknown. */
extern u8 D_8010A322, D_800FF748[], D_801DA2F0, D_801DAD85;
extern u8 D_801D8B18, D_801DAE50;
extern u32 D_801DA058;
extern s32 func_8006F0DC(u32, u32), func_8006F07C(u32);
extern s32 func_801C16DC(u32), func_801AE294(u32), func_801ACE2C(u32);
extern void func_800AB620(s32), func_800171C4(u32);
extern void func_801C2064(void), func_801C20A8(void), func_801C1D94(void);
extern void func_801C2A3C(void), func_801C3150(void), func_801AD7EC(void), func_801B5A7C(void);
extern void func_801C19EC(void (*)(void));

/* The independent selector dispatches 206 entries, not the byte updated below.
 * The v0 binding, empty memory constraints and two volatile byte access views
 * preserve measured case-tail separation, access order and delay-slot scheduling.
 * The empty constraints emit no instructions; the access views do not imply
 * an original volatile contract or introduce extra reads.
 */
void func_801C1208(void) {
    u32 mode = D_8010A322;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    register u32 next __asm__("$2");
    switch (mode) {
    case 0: {
        s32 result = func_8006F0DC(16, 0);
        u32 one = 1;
        if (result == 0) return;
        D_801DA2F0 = 0;
        __asm__("" : : : "memory");
        next = base[0xABDA];
        D_801DAD85 = one;
        next++;
        break;
    }
    case 1:
        D_801D8B18 = 0;
        next = 10;
        break;
    case 10:
        func_801C2064();
        func_801C19EC(func_801C2A3C);
        next = base[0xABDA];
        base[0xABD8] = 0;
        next++;
        break;
    case 11: {
        s32 result = func_8006F07C(16);
        if (result == 0) return;
        next = base[0xABDA];
        next++;
        break;
    }
    case 12:
        if (func_801C16DC(0) == 2) {
            func_800AB620(0x528);
            base[0xABDA]++;
        }
        func_801C2A3C();
        return;
    case 13: {
        s32 result = func_8006F0DC(64, 0);
        if (result == 0) return;
        next = 20;
        __asm__("" : : : "memory");
        break;
    }
    case 20:
        func_801C1D94();
        func_801C20A8();
        func_801C19EC(func_801C3150);
        next = base[0xABDA];
        __asm__("" : : : "memory");
        next++;
        break;
    case 21:
        if (func_8006F07C(16) == 0) return;
        next = *(volatile u8 *)(base + 0xABDA);
        next++;
        break;
    case 22: {
        s32 code;
        switch (func_801C16DC(1)) {
        case 1: goto code529;
        case 2: break;
        default: goto refresh22;
        }
        code = 0x528;
        goto call22;
code529:
        code = 0x529;
call22:
        func_800AB620(code);
        base[0xABDA]++;
refresh22:
        func_801C3150();
        return;
    }
    case 23: {
        u32 field;
        if (func_8006F0DC(64, 0) == 0) return;
        field = D_801DAE50;
        if (field == 1) goto set10;
        if (field != 2) return;
        next = 30;
        break;
set10:
        __asm__("" : : : "memory");
        next = 10;
        break;
    }
    case 30:
        next = base[0xABDA];
        D_801DA2F0 = 0;
        base[0xABD8] = 0;
        __asm__("" : : : "memory");
        next++;
        break;
    case 31:
        switch (func_801AE294(0)) {
        case 1: goto advance31;
        case 2: break;
        default: return;
        }
        next = 40;
        break;
advance31:
        next = *(volatile u8 *)(base + 0xABDA) + 1;
        break;
    case 32:
        if (func_8006F0DC(64, 0) == 0) return;
        next = 20;
        break;
    case 40:
        next = base[0xABDA];
        base[0xABD8] = 0;
        __asm__("" : : : "memory");
        next++;
        break;
    case 41:
        switch (func_801AE294(1)) {
        case 1: goto set30;
        case 2: break;
        default: return;
        }
        next = 50;
        break;
set30:
        __asm__("" : : : "memory");
        next = 30;
        break;
    case 50: {
        u8 *row;
        u32 index, mapped;
        if (D_801D8B18 == 1) base[0xABDA] = 200;
        func_801C1D94();
        index = base[0xAB50];
        mapped = ((u8 *)((u32)base + index))[0xAB80];
        row = (u8 *)((u32)base + mapped * 36);
        if ((row[0x8F24] & 0xC0) == 0) {
            next = row[0x8F25];
            base[0xABA8] = 1;
            base[0xABDA] = 60;
            scratch[0x2DD] = next;
            return;
        }
        D_801D8B18 = 1;
        next = 200;
        break;
    }
    case 60:
        if (func_8006F0DC(16, 1) == 0) return;
        D_801DA2F0 = 0;
        D_801DAD85 = 1;
        scratch[0x2A2] = 0;
        func_800AB620(7);
        next = base[0xABDA];
        base[0xABD8] = 0;
        __asm__("" : : : "memory");
        next++;
        break;
    case 61:
        func_801AD7EC();
        return;
    case 200: case 201: case 202: case 204:
        func_801B5A7C();
        return;
    case 203:
        switch (func_801ACE2C(3)) {
        case 1:
            next = base[0xABDA];
            D_801DA058 = 0;
            next++;
            break;
        case 3:
            scratch[0x29F] = 0;
            func_800171C4(255);
            return;
        default: return;
        }
        break;
    case 205:
        next = 40;
        break;
    default:
        return;
    }
    base[0xABDA] = next;
}
