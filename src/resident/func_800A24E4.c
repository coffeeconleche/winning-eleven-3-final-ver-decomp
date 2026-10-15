#include "types.h"

extern u8 D_8010C1D8[];
extern s32 func_800A23BC(u8 *, u32);
/* The helper ignores a0; retain the explicitly loaded slot before a1. */
extern s32 func_800A2374(u8 *, u32);
extern s32 func_8001E6B8(s32);
extern void func_8006845C(u32);
extern void func_80068378(u32, u32);

/* Existing byte-indexed scratch/record views, not complete native layouts
 * or proved allocations. The original selector is retained across callbacks. */
void func_800A24E4(u8 *record)
{
    u8 selected = 255;
    u8 selector = record[0x398];
    s32 index = selector & 255;
    u8 flag = *(u8 *)(0x1F8002CF + index);
    u8 *scratch = (u8 *)0x1F800000;
    u8 *state = D_8010C1D8;
    s32 primary, secondary;
    u8 freshSelector;
    s32 stateValue;

    if (flag == 0) {
        primary = func_800A23BC(record, *(u8 *)(0x1F800303 + index));
        secondary = func_800A23BC(record, *(u8 *)(0x1F800301 + index));
        if (*(u8 *)(0x1F800305 + index) != 0 && func_8001E6B8(5) != 3)
            return;
    } else {
        primary = func_800A2374(record, *(u8 *)(0x1F800303 + index));
        secondary = func_800A2374(record, *(u8 *)(0x1F800301 + index));
        /* Both helper calls precede these alias-sensitive fresh reads. */
        freshSelector = record[0x398];
        stateValue = state[freshSelector + 13];
        /* Retain the original signed checks even after the byte load. */
        if (stateValue < 0) goto choose;
        if (stateValue < 4)
            func_8006845C(freshSelector);
    }
choose:
    /* RNG uses signed remainder: negative results also satisfy this test. */
    if (func_8001E6B8(100) < (primary & 255))
        selected = *(u8 *)(((u32)scratch | selector) + 0x303);
    if (func_8001E6B8(100) < (secondary & 255))
        selected = *(u8 *)(((u32)scratch | selector) + 0x301);
    if ((selected & 255) != 255)
        func_80068378(selector & 255,
            (selected & 255) != *(u8 *)(scratch + (selector & 255) + 0x303));
}
