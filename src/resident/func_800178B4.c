#include "common.h"

extern s32 func_800B6D78(void), func_80017684(s32);
extern void func_80019564(u8 *, u32);
extern u8 D_800F106E;
extern u8 *D_801A6000, *D_801A6004;
extern u8 state_byte __asm__("0x1F80029F");

s32 func_800178B4(void)
{
    u32 state = state_byte;
    u8 *scratch = (u8 *)0x1F800000;
    register u32 next __asm__("$2");
    /* The pending paths deliberately retain separate state reads. */
    switch (state) {
    case 0:
        func_800B6D78();
        next = scratch[0x29F];
        D_800F106E = 1;
        __asm__("" : "=r"(next) : "0"(next), "i"(0));
        next++;
        goto advance;
    case 1:
        if ((u8)func_80017684(1) == 0)
            return 0;
        next = scratch[0x29F];
        D_800F106E = 1;
        __asm__("" : "=r"(next) : "0"(next), "i"(1));
        next++;
        goto advance;
    case 2:
        if ((u8)func_80017684(0) == 0)
            return 0;
        next = scratch[0x29F];
        D_800F106E = 1;
        __asm__("" : "=r"(next) : "0"(next), "i"(2));
        next++;
        goto advance;
    case 3:
        if ((u8)func_80017684(2) == 0)
            return 0;
        {
            u8 *group = D_801A6000;
            D_800F106E = 1;
            func_80019564(group, 0);
        }
        func_80019564(D_801A6004, 0);
        next = scratch[0x29F] + 1;
advance:
        scratch[0x29F] = next;
        return 0;
    case 4:
        return 1;
    }
    return 0;
}
