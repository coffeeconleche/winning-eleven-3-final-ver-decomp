#include "common.h"

extern u8 D_800FF748[], D_80108668;
extern s16 D_801DA5D2;
extern u8 *D_801D1DC8[];
extern s32 func_801C1C5C(s32, s32);
/* Word-sized ABI arguments are narrowed by the descriptor callee. */
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32);

void func_801C3150(void) {
    s32 i = 0;
    u8 *base = D_800FF748;
    u32 mapped, value, first;
    u8 *record;
    for (; base[0x8F20] == 3 ? i < 3 : i < 4; i++) {
        register s16 *halfword __asm__("$17");
        halfword = &D_801DA5D2;
        /* Keep the captured halfword address through both calls and the later
         * reread, with its original saved-register lifetime. No code emitted. */
        __asm__ volatile ("" : "=r"(halfword) : "0"(halfword));
        if (func_801C1C5C(i, *halfword) != 0) {
            if (func_801C1C5C(i, *halfword) == 3) break;
            record = (u8 *)((u32)base + (u32)(*halfword + i));
            first = record[0xAB50];
            record = (u8 *)((u32)base + first);
            mapped = record[0xAB80];
            record = base + mapped * 36;
            value = record[0x8F25];
            func_801942E0(i + 4, D_801D1DC8[value], -124, i * 30 - 18,
                         109, 3, 0, 0, 0, 2, 2, 2);
        }
    }
}
