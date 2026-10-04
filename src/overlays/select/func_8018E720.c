#include "common.h"

extern u8 D_800FF748[];
extern u8 *D_8011D5F4[];
extern u16 D_801D8F94;
extern u8 *D_801D8FA4;
extern s32 func_8018E994(s16 *, s32, s32);
/* Word ABI views: the descriptor callees narrow their fields internally;
 * their original full prototypes are unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
    s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32, s32,
    s32, s32, s32);

s32 func_8018E720(u8 kind, u32 index) {
    u8 *base = D_800FF748;
    s32 result;
    s32 y;
    /* Retail initializes the returned saved register only for modes 1/2.
     * Observed callers consume those results and discard modes 0/3. The
     * other paths are not a portable C return contract; do not invent one. */
    switch (kind) {
    case 0:
        func_80193FB4(54, 0x3003, 0, 0, 64, 24, 0, 0x1000, 0x1000,
            0, 0, 128, 128, 128, 0, 5, 1);
        func_801942E0(0, D_8011D5F4[(u8)index], -162, 133, 327, 0, 1,
            0, 0, 3, 2, 1);
        break;
    case 1:
        result = func_8018E994((s16 *)(base + 0x6642), 0, 4);
        break;
    case 2:
        result = func_8018E994((s16 *)(base + 0x6642), 64, 4);
        break;
    case 3:
        func_80193FB4(54, 0x3003, 0, 0, 0, 24, 0, 0x1000, 0x1000,
            0, 0, 128, 128, 128, 0, 5, 1);
        func_801942E0(0, D_8011D5F4[(u8)index], -162, 133, 327, 0, 1,
            0, 0, kind, 2, 1);
        break;
    }
    y = *(u16 *)(base + 0x6642) + 69;
    D_801D8F94 = y;
    if ((u8)index != 0) {
        /* Keep the measured v0 index lifetime/address order. This binding
         * emits no instructions; the word arithmetic is the PSX ABI view. */
        register u32 offset __asm__("$2") = (u8)index;
        u8 **slot;
        offset *= 4;
        slot = (u8 **)(offset + (u32)D_8011D5F4);
        /* Reread the selected pointer at the call, not only at the test. */
        if (D_801D8FA4 != *slot)
            func_801942E0(0, *slot, -162, (s16)y, 327, 0,
                1, 0, 0, 3, 2, 1);
    }
    return result;
}
