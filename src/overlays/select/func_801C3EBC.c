#include "common.h"
/* Preserve word argument bits at the call boundary; the callee narrows fields.
 * Original source prototype and descriptor meanings are unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                        s32, s32, s32, s32, s32, s32, s32, s32);

void func_801C3EBC(u8 value) {
    s32 i;
    func_80193FB4(10, 0x7002, 0, 0, 0, 12, 0, 4096, 4096, 0, 0,
                 value, value, value, 0, 4, 1);
    func_80193FB4(20, 0x7001, 0x40000000, 0, 0, 12, 0, 4096, 4096, 0, 0,
                 value, value, value, 0, 4, 1);
    for (i = 0; i < 8; i++) {
        func_80193FB4(i + 11, i + 0x700C, 0, 0, 0, 12, 0, 4096, 4096, 0, 0,
                     value, value, value, 0, 4, 1);
        func_80193FB4(i + 21, i + 0x7004, 0x40000000, 0, 0, 12, 0, 4096, 4096, 0, 0,
                     value, value, value, 0, 4, 1);
    }
}
