#include "common.h"

extern u8 D_800F106E;
extern u8 D_801D8A50;
extern u8 *D_801A6000;
extern u8 *D_801A6004;
extern u8 *D_80110000;

/* Return contracts are call-site views; the helpers' original APIs are unknown. */
extern s32 func_80017684(s32);
extern void func_80019564(u8 *, u32);
extern s32 func_800198E8(s32);

/* Scratchpad selector dispatcher. Known callers pass a small integer and
 * treat the result as boolean; selector, helper and record meanings remain
 * unknown. The out-of-range exit falls through with the bounds-compare
 * register as result-register residue; the scratchpad base view keeps its
 * original saved-register form. */
s32 func_800188B4(s32 arg0)
{
    u8 *scratch = (u8 *)0x1F800000;

    switch (scratch[0x29F]) {
    case 0:
        D_800F106E = 1;
        scratch[0x29F] = scratch[0x29F] + 1;
        return 0;
    case 1: {
        register u32 result __asm__("$2");

        result = (u32)(u8)func_80017684(6);
        if (result == 0)
            goto done;
        /* Empty identity keeps the narrowed result live across the branch;
         * it emits no instruction or memory access. */
        __asm__ volatile("" : : "r"(result));
        func_80019564(D_801A6000, 0);
        func_80019564(D_801A6004, 0);
        /* Empty barrier ends the shared call tail; it emits nothing. */
        __asm__ volatile("");
        goto advance;
    }
    case 2:
        if ((u8)func_80017684((u8)arg0) == 0)
            goto done;
        func_80019564(D_80110000, 0);
        goto advance;
    case 3:
        if ((u8)func_800198E8(0) == 0)
            goto done;
        goto advance;
    case 4:
        if ((u8)func_800198E8(5) == 0)
            goto done;
        goto advance;
    case 5:
        if ((u8)func_800198E8(4) == 0)
            goto done;
        goto advance;
    case 6:
        if ((u8)func_800198E8(7) == 0)
            goto done;
advance:
        D_800F106E = 1;
        scratch[0x29F] = scratch[0x29F] + 1;
done:
        return 0;
    case 7:
        D_801D8A50 = 0;
        return 1;
    }
}
