#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A322;
extern u8 D_801DA2F0, D_801D8B18, D_801D8DFB, D_801D8DFC;
extern u8 D_801DA06B, D_801DA069, D_801DA06A, D_801DA068;
extern u16 D_801DA5D0, D_801DA5D2, D_801DA5D4, D_801DA5D6;
/* Word-argument ABI view: the observed call supplies zero, although the
 * matching callee does not consume it. The original prototype is unknown. */
extern void func_8018E538(u32);
extern void func_801C2064(void);
extern void func_801C2A3C(void);
extern s32 func_801C16DC(u32);
extern s32 func_8006F07C(u8);
extern s32 func_8006F0DC(u8, u8);
extern void func_800AB620(s32);
extern void func_800171FC(u32);

/* Dispatch the byte state without assigning higher-level field meanings. */
void func_801BFEDC(void) {
    u32 state = D_8010A322;
    u8 *base = D_800FF748;
    /* Retain the measured increment/constant register allocation. */
    register u32 next __asm__("$2");

    switch (state) {
    case 0:
        base[0x8F22] = 0;
        base[0x8F23] = 0;
        base[0xABA8] = 0;
        base[0x8F15] = 0;
        base[0x8F21] = 0;
        D_801DA2F0 = 0;
        D_801D8B18 = 0;
        D_801D8DFB = 0;
        D_801D8DFC = 1;
        base[0xABA1] = 0;
        base[0xABA0] = 0;
        D_801DA06B = 0;
        D_801DA069 = 0;
        D_801DA06A = 0;
        D_801DA068 = 0;
        D_801DA5D0 = 0;
        D_801DA5D2 = 0;
        /* No instructions: prevent the counter read and later constants from
         * moving across the preceding alias-sensitive reset stores. */
        __asm__ volatile ("" : : : "memory");
        next = base[0xABDA];
        D_801DA5D4 = 4;
        D_801DA5D6 = 4;
        next++;
        goto storeCounter;
    case 1:
        func_8018E538(0);
        func_801C2064();
        func_801C2A3C();
        goto advance;
    case 2:
        if (func_8006F07C(16) == 0) {
            break;
        }
advance:
        next = base[0xABDA] + 1;
storeCounter:
        base[0xABDA] = next;
        break;
    case 3:
        if (func_801C16DC(0) == 2) {
            func_800AB620(0x528);
            base[0xABDA]++;
        }
        func_801C2A3C();
        break;
    case 4:
        if (func_8006F0DC(64, 0)) {
            next = base[0x8F22];
            base[0x8F23] = 17;
            next++;
            base[0x8F22] = next;
            func_800171FC(1);
            base[0xABDA] = 0;
        }
        break;
    }
}
