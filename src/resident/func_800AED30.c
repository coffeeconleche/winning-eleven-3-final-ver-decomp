#include "common.h"

extern u8 D_800CEAD4[];
extern void func_800B1118(void *, const void *, u32);

void *func_800AED30(void *destination)
{
    func_800B1118(destination, D_800CEAD4, 0x5Cu);
    return destination;
}
