#include "common.h"

extern u8 D_800F3564;
extern u32 D_800E7668;
extern u32 D_800E765C;
extern u32 D_8010A3E8;
extern u8 D_8019001C[];
extern void func_80019564(void *data, s32 value);

void func_8018EB00(void)
{
    D_800F3564 = 1;
    D_800E7668 = 0x1FF;
    D_800E765C = 0;
    D_8010A3E8 = 0xFF;
    func_80019564(D_8019001C, 0);
}
