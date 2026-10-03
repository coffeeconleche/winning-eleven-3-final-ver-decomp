#include "common.h"

/* Word-sized call arguments retain their bits before the callee narrows fields.
 * The original source prototype and complete record type remain unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32, s32, s32, s32);

void func_8019A168(void) {
    s32 i = 0;
    for (; i < 5; i++) {
        func_80193FB4(i + 19, i + 0x3018, 0, (i & 1) ? 512 : -512,
                     i * 24, 24, 0, 0x1000, 0x1000, 0, i * 24 - 56,
                     0x80, 0x80, 0x80, 0, 3, 1);
        func_80193FB4(i + 24, 0x301D, 0x40000000, (i & 1) ? 512 : -512,
                     i * 24, 24, 0, 0x1000, 0x1000, 0, i * 24 - 56,
                     0x80, 0x80, 0x80, 0, 3, 1);
    }
}
