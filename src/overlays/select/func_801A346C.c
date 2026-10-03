#include "common.h"

extern s32 func_8018E69C(u8 side);
extern u16 D_80189FF0[];
extern void func_80193FB4(u8 slot, s32 resource, s32 arg2, s32 arg3,
    u16 arg4, u8 arg5, u8 arg6, u16 arg7, u16 arg8, u16 arg9, u16 arg10,
    u8 arg11, u8 arg12, u8 arg13, s32 arg14, u8 arg15, u8 arg16);

/* Configure two slots; only the low byte of each resource index is used. */
void func_801A346C(u8 first, u8 second) {
    s32 index;
    register s32 slot asm("$4");
    register s32 resource asm("$5");
    register s32 zero asm("$6");

    index = func_8018E69C(0);
    slot = 5;
    /* Preserve the slot immediate before the return-value byte conversion. */
    __asm__ volatile ("" : : "r"(slot));
    index = (u8)index;
    func_80193FB4(slot, index + 0x3062, 0, 0, 0, 26, 0, 0x1000, 0x1000,
        0, 0, 128, 128, 128, 0, 1, first);

    index = func_8018E69C(1);
    slot = 6;
    __asm__ volatile ("" : : "r"(slot));
    index = (u8)index;
    resource = index + 0x3062;
    zero = 0;
    /* Prepare a1/a2 before shifting the index for the unsigned halfword lookup. */
    __asm__ volatile ("" : : "r"(resource), "r"(zero), "r"(index));
    func_80193FB4(slot, resource, zero, D_80189FF0[index], 0, 26, 0,
        0x1000, 0x1000, 0, 0, 128, 128, 128, 0, 1, second);
}
