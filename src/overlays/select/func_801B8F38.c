#include "common.h"

extern u8 D_800FF748[];
extern s32 D_801D8808[];
extern u8 D_801D8888[];
extern s32 func_801B8FF8(u8);
extern void func_801A97FC(u8 *, s32 *, u32, u32);

u8 *func_801B8F38(void) {
    u8 *base = D_800FF748;
    s32 i = 0;
    s32 *score = D_801D8808;

    do {
        D_801D8888[i] = i;
        *score = func_801B8FF8(i);
        /* Keep the score store before the counter increment. These empty
         * inputs constrain scheduling without emitting instructions. */
        __asm__ volatile ("" : : "m"(*score), "r"(i));
        i++;
        score++;
    } while (i < 32);

    /* The callee sorts signed score words and their corresponding byte indices. */
    func_801A97FC(D_801D8888, D_801D8808, 0, 31);
    i = 0;
    do {
        u8 *output = base + i;
        u8 value = D_801D8888[i];
        i++;
        output += 0xAB50;
        *output = value;
    } while (i < 32);
    return base + 0xAB50;
}
