#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D89F8[];
extern u8 D_801D8A08[];
extern u16 D_801D5988[];

void func_801CB37C(u32 side) {
    u8 i;
    u8 *first;
    u8 *scratch;
    u16 *values;
    u8 *second;
    /* Keep the doubled selector and subsequent destination in retail v1. */
    register u32 destination __asm__("$3");
    u8 *base;

    i = 0;
    side = (u8)side;
    /* These empty constraints retain byte narrowing before address setup and
     * finish the second selector-row address before the final destination base.
     * They emit no instructions; the original parameter declaration is unknown. */
    __asm__ volatile ("" : "=r"(side) : "0"(side));
    base = D_801D89F8;
    destination = side * 2;
    first = base + side * 6;
    scratch = (u8 *)0x1F800000 + side * 2;
    values = D_801D5988;
    second = D_801D8A08 + side * 6;
    __asm__ volatile ("" : : "r"(second));
    base = D_800FF748;
    destination = destination + (u32)base;
    destination += 0x8F1A;
again:
    /* Read each selector and its halfword after any preceding store. Unsupported
     * selectors make no store; the two selector tables have independent slots. */
    switch (first[i]) {
    case 0: *(u16 *)(scratch + 0x1A) = values[i]; break;
    case 1: *(u16 *)(scratch + 0x16) = values[i]; break;
    case 2: *(u16 *)(scratch + 0x12) = values[i]; break;
    case 3: *(u16 *)(scratch + 0x1E) = values[i]; break;
    case 4: *(u16 *)(scratch + 0x2E) = values[i]; break;
    case 5: *(u16 *)(scratch + 0x22) = values[i]; break;
    }
    switch (second[i]) {
    case 0: *(u16 *)(scratch + 0x2A) = values[i]; break;
    case 1: *(u16 *)(scratch + 0x26) = values[i]; break;
    case 2: *(u16 *)destination = values[i]; break;
    case 3: *(u16 *)(scratch + 0x32) = values[i]; break;
    case 4: *(u16 *)(scratch + 0x2E) = values[i]; break;
    case 5: *(u16 *)(scratch + 0x22) = values[i]; break;
    }
    i++;
    /* The explicit back-edge keeps both indexed dispatch lookups in the body. */
    if (i < 6) {
        goto again;
    }
}
