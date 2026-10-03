#include "common.h"

extern s32 func_8001E6B8(s32 limit);
extern u8 D_800FF748[];
extern u8 D_8011BD74[];
extern u8 D_801D8A70;
extern u8 D_801D8DC0[];
extern u8 D_801DAD88[];

/* Retry until neither availability table marks the selected entry. */
u8 func_801A24E4(void) {
    u8 *base = D_800FF748;
    u8 *table;
    u32 attempts;
    /* Keep the next count in v0, separate from the saved count across calls. */
    register u32 next asm("$2");
    u8 choice;
    s32 unavailable;

    {
        s32 index;
        u8 *lookup;
        index = func_8001E6B8(3);
        attempts = 0;
        /* Retain the counter initialization before narrowing the random result. */
        __asm__ volatile ("" : "=r"(attempts) : "0"(attempts));
        index = (u8)index;
        lookup = D_8011BD74;
        table = lookup + index * 40;
    }
    next = attempts + 1;
    /* Keep the first increment outside the loop; retries use the branch delay. */
    __asm__ volatile ("" : : "r"(next));
    for (;;) {
        /* Both the threshold and fallback use the counter's wrapping low byte. */
        attempts = next;
        /* Preserve distinct comparison/fallback byte conversions without code. */
        __asm__ volatile ("" : "=r"(next) : "0"(next), "r"(attempts));
        if ((u8)next > 50) {
            choice = (u8)attempts % 40;
        } else if ((base[0x8F1F] & 15) == 0) {
            s32 index = func_8001E6B8(10);
            choice = (table + (D_801D8A70 & 3) * 10)[index];
        } else {
            choice = func_8001E6B8(40);
        }
        unavailable = D_801D8DC0[choice] | D_801DAD88[choice];
        if (!unavailable) {
            break;
        }
        next = attempts + 1;
    }
    return choice;
}
