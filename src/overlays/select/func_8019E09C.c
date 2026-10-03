#include "common.h"

/* Preserve word argument bits before the descriptor callee narrows fields.
 * The original prototype and complete descriptor/lookup types are unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32, s32, s32, s32);
extern u8 *func_8001D004(u16);

void func_8019E09C(void) {
    s32 i = 0;
    for (; i < 6; i++) {
        s32 key = i + 0x3038;
        u8 *lookup = func_8001D004(key);
        /* Retain the wide key across lookup and narrow separately at each call.
         * The tied empty constraint prevents reuse of a saved masked key. */
        __asm__ volatile("" : "=r"(key) : "0"(key));
        func_80193FB4(i + 38, (u16)key, 0, (152 - lookup[1]) / 2,
                     i * 20, 27, 0, 0x1000, 0x1000, 0, 0,
                     0x80, 0x80, 0x80, 0, 2, 1);
        func_80193FB4(i + 44, 0x303F, 0, 0,
                     i * 20, 27, 0, 0x1000, 0x1000, 0, 0,
                     0x80, 0x80, 0x80, 0, 2, 1);
    }
}
