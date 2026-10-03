#include "common.h"

extern u32 D_801915A8[];
extern u32 D_8019015C[];

void func_8018EA04(u8 *object, s32 state, u8 index) {
    u32 *table;
    u32 value;

    state &= 0xFF;
    *(volatile u16 *)(object + 0x38E) = state;
    object[0x390] = index;
    if (*(volatile u16 *)(object + 0x38E) == 0) {
        *(u32 **)(object + 0x18) = D_801915A8;
    } else {
        *(u32 **)(object + 0x18) = D_8019015C;
    }
    table = *(u32 **)(object + 0x18);
    table += object[0x390];
    value = *table;
    object[0x3AD] = 1;
    *(u32 *)(object + 0x1C) = value;
}
