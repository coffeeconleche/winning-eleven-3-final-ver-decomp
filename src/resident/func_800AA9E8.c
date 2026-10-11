#include "common.h"

extern u8 D_8010A5C0[];
extern void func_800C441C(u8 *output);

void func_800AA9E8(void)
{
    func_800C441C(D_8010A5C0);
}
