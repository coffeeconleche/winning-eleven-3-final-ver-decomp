#include "common.h"

/* Keep word argument bits at the call boundary; the callee narrows its fields.
 * Its original source prototype and complete descriptor layout are unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32, s32, s32, s32);

void func_801A8CD0(void) {
    func_80193FB4(55, 0x3000, 0x01000000, 0, 0, 13, 254,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
    func_80193FB4(56, 0x3001, 0x01000000, 0, 0, 14, 254,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
    func_80193FB4(57, 0x3002, 0x01000000, 0, 0, 15, 254,
                 0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 6, 1);
}
