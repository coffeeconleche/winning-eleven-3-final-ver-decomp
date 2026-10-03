#include "common.h"

/* Word-sized arguments retain their bits before the callee narrows fields.
 * The original prototype and complete descriptor/table types are unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32, s32, s32, s32);
extern u8 D_801D8A4C[];

void func_80199E8C(void) {
    s32 i = 0;
    for (; i < 7; i++) {
        func_80193FB4(i + 5, i + 0x300D, 0, (i & 1) ? 512 : -512,
                     i * 20 - 5, 24, 0, 0x1000, 0x1000, 0, i * 20 - 56,
                     0x80, 0x80, 0x80, 0, 3, 1);
        func_80193FB4(i + 12, 0x3014, 0x40000000, (i & 1) ? 512 : -512,
                     i * 20 - 5, 24, 0, 0x1000, 0x1000, 0, i * 20 - 56,
                     0x80, 0x80, 0x80, 0, 3, 1);
        D_801D8A4C[i + 12] = i;
    }
}
