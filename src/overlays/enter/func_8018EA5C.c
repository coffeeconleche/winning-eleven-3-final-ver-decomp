#include "common.h"

extern u8 D_800F3564;
extern u32 D_800E7668;
extern u32 D_800E765C;
extern u32 D_8010A3E8;
extern u8 D_8019183C[];
extern u8 D_80193C88;
extern void func_80019564(void *data, s32 value);
extern void func_80050140(s16 first, s16 second, s32 third, s32 fourth);

void func_8018EA5C(void)
{
    s32 first;

    D_800F3564 = 1;
    D_800E7668 = 0x1FF;
    D_800E765C = 0;
    D_8010A3E8 = 0xFF;
    func_80019564(D_8019183C, 0);
    switch (D_80193C88) {
    case 0:
        return;
    case 1:
        first = 0x20;
        break;
    case 2:
        first = 0x30;
        break;
    case 3:
        first = 0x40;
        break;
    default:
        return;
    }
    func_80050140(first, 0x1E8, 0, 0x1FF);
}
