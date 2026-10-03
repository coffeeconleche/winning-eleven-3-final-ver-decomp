#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D8A60[];
extern void func_801AF938(s32);

void func_801AFECC(void) {
    u8 *base = D_800FF748;
    u8 *cursor;
    s32 i;

    /* Keep the saved base setup before the call, as in the reference. */
    __asm__ volatile ("" : : "r"(base));
    func_801AF938(0x200);
    i = 8;
    /* The original initializes the counter before constructing the cursor. */
    __asm__ volatile ("" : : "r"(i));
    cursor = D_801D8A60;
    /* Nine bytes descend from this address; the preceding layout is unknown. */
    do {
        *cursor = i;
        i--;
        cursor--;
    } while (i >= 0);
    base[0x5F04] = 0;
}
