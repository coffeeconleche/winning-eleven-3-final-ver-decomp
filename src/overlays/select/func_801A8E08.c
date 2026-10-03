#include "common.h"

extern u8 D_80108667;
/* The callee narrows these word-sized ABI arguments to descriptor fields;
 * the original source prototype and full descriptor type remain unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32, s32, s32, s32);

void func_801A8E08(void) {
    u32 selector = D_80108667 & 15;
    s32 key;
    if (selector < 6) {
        key = selector | 0x30E0;
    } else {
        key = 0x3006;
        /* Preserve the branch-local key assignment and separate selector
         * lifetime instead of hoisting the default key before the test. */
        __asm__ volatile ("" : : "r"(selector));
    }
    func_80193FB4(1, key, 0, 0, 0, 24, 58,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 1, 1);
    func_80193FB4(2, 0x300C, 0, 0, 0, 24, 0,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 1, 1);
}
