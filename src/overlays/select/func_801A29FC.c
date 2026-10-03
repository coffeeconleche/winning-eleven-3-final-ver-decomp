#include "common.h"

extern u8 D_801D9300[], D_800FF748[];
extern u8 D_80189FFC[], D_8018A004[];
extern s32 func_8018EA08(u16 *, u16, u16, u16 *);
extern s32 func_8018E994(s16 *, s32, s32);
extern s32 func_801A36D0(u8);
extern u8 func_8018E69C(u8);

/* These offsets are access views, not recovered full record types. Every
 * helper call runs in order; completion combines results with bitwise AND. */
s32 func_801A29FC(void) {
    u8 *row = D_801D9300;
    u8 *base;
    s16 *final;
    s32 complete;
    u8 selector;

    complete = func_8018EA08((u16 *)row, 348, 20, (u16 *)(row - 4)) & 1;
    complete &= func_8018E994((s16 *)(row + 24), -174, 32);
    complete &= func_8018E994((s16 *)(row + 52), 1, 32);
    base = D_800FF748;
    complete &= func_8018E994((s16 *)(base + 0x5EE8), 0, 32);
    complete &= func_8018E994((s16 *)(base + 0x5F38), 0, 32);
    selector = func_801A36D0(1);
    complete &= func_8018E994((s16 *)(base + 0x5F10), D_80189FFC[selector], 32);
    complete &= func_8018E994((s16 *)(base + 0x5F60), D_8018A004[selector], 32);
    complete &= func_8018E994((s16 *)(base + 0x5F88), 0, 32);
    if ((u32)(*(u8 *)0x1F8002E1 - 1) < 2) {
        final = (s16 *)(base + 0x6050);
    } else {
        func_8018E69C(1);
        final = (s16 *)(base + 0x5FB0);
    }
    complete &= func_8018E994(final, 0, 32);
    /* Retain the saved-register accumulator before the separate return copy;
     * the empty input emits no instruction. */
    __asm__ volatile("" : : "r"(complete));
    return complete;
}
