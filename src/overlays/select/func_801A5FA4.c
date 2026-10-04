#include "common.h"

extern u8 D_801D8198, D_801D8199, D_801D819A, D_801D819B, D_801D819C;
extern u8 D_801D819D, D_801D819E, D_801D819F, D_801D81A0, D_801D81A1;
extern u8 D_800F1018[], D_801D8078[], D_801D8108[];
/* Word-return caller view preserves the measured lack of caller narrowing.
 * The independently matching callee returns only values 0..4; its complete
 * original prototype is not established here. */
extern s32 func_8018E69C(u8);
extern void func_801A5B88(u32, u8);
/* Caller ABI views only; original complete prototypes are unknown. */
extern void func_801A5CFC(u32, u32);
extern void func_800B3808(void *, u8 *, u16);
/* Word-width caller ABI view; the callee narrows its descriptor fields. */
extern void func_80196378(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);

/* Local record access views only; original data format and gameplay names
 * are unknown. Preserve callback order and scratch-index rereads. */
void func_801A5FA4(void) {
    s32 firstResult = func_8018E69C(0);
    s32 secondResult = func_8018E69C(1);
    s32 i;
    u8 *source, *rows;
    u8 *scratch = (u8 *)0x1F800000;

    if (D_801D8198 == 1) {
        if (D_801D819C == 0) {
            func_801A5CFC(D_801D819A, 0);
        } else {
            func_801A5B88(D_801D819A, 0);
        }
        i = 0;
        rows = D_800F1018;
        source = D_801D8078;
        do {
            /* Retain source and zero-selector setup before pointer advance.
             * The scoped bindings and empty inputs emit no instructions. */
            register u8 *current asm("$4") = source;
            register u32 zero asm("$6") = 0;
            u32 index;
            __asm__("" : : "r"(current), "r"(zero));
            source += 36;
            index = scratch[0x29D];
            i++;
            func_800B3808(current, (u8 *)(index * 20 + (u32)rows), zero);
        } while (i < 4);
    }
    if (D_801D8199 == 1) {
        if (D_801D819D == 0) {
            func_801A5CFC(D_801D819B, 1);
        } else {
            func_801A5B88(D_801D819B, 1);
        }
        i = 4;
        rows = D_800F1018;
        source = D_801D8108;
        do {
            /* As above, retain measured argument setup and callback rereads. */
            register u8 *current asm("$4") = source;
            register u32 zero asm("$6") = 0;
            u32 index;
            __asm__("" : : "r"(current), "r"(zero));
            source += 36;
            index = scratch[0x29D];
            i++;
            func_800B3808(current, (u8 *)(index * 20 + (u32)rows), zero);
        } while (i < 8);
    }
    /* Retain the measured short countdown, without claiming a host timing
     * meaning. This empty identity prevents folding its initial 1. */
    i = 1;
    __asm__("" : "=r"(i) : "0"(i));
    while (--i >= 0) {}
    if (D_801D819E == 1) {
        func_80196378(0, -166, D_801D81A0, 24, 20, 48,
                     firstResult * 20, 29, 157, 1);
    }
    if (D_801D819F == 1) {
        func_80196378(0, -166, D_801D81A1, 24, 20, 48,
                     secondResult * 20, 29, 157, 1);
    }
}
