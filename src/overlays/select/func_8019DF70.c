#include "common.h"

/* Word arguments retain their bits before the descriptor callee narrows fields.
 * The original prototype and complete descriptor type remain unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32, s32, s32, s32);

void func_8019DF70(void) {
    s32 i = 0;
    s32 second = 0;
    for (; i < 5; i++) {
        if (i != 1 && i != 4) {
            func_80193FB4(second + 38, i + 0x3018, 0, 79,
                         second * 34 + 15, 24, 0, 0x1000, 0x1000, 0, 0,
                         0x80, 0x80, 0x80, 0, 2, 1);
            func_80193FB4(second + 41, 0x301D, 0, 79,
                         second * 34 + 15, 24, 0, 0x1000, 0x1000, 0, 0,
                         0x80, 0x80, 0x80, 0, 2, 1);
            second++;
        }
    }
}
