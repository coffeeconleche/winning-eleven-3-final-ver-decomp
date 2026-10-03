#include "common.h"

extern u8 D_800FF748[], D_801D8A4C[], D_801DA2F0;
extern u8 D_801D9278[], D_801D9291[], D_801DA332;
extern u8 D_801D8EE0[], D_801D8FA0[];
/* Word call view preserves argument bits; the callee narrows its fields.
 * Original source types and complete table/record layouts are unknown. */
extern void func_80196378(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801BD9F8(void) {
    u8 *base = D_800FF748;
    s32 i = 0;
    s32 y = -50;
    s32 offset = 288;
    s32 pair = 24;
    s32 flag = 12;
    do {
        if (!(D_801D8A4C[flag] & 15)) {
            if (D_801DA2F0) {
                s32 second = i * 2;
                if (D_801D9278[pair] == base[0x8F21]) {
                    D_801D8EE0[offset] = (D_801DA332 >> 5) & 1;
                }
                /* Keep the second index as a value, not a loop-carried pointer. */
                __asm__("" : "=r"(second) : "0"(second));
                if (D_801D9291[second] == base[0x8F21]) {
                    D_801D8FA0[offset] = (D_801DA332 >> 5) & 1;
                }
            }
            func_80196378(0, -12, y, 24, 16, 104, 232, 26, 19, 1);
        }
        y += 19;
        offset += 24;
        pair += 2;
        i++;
        flag++;
    } while (i < 8);
}
