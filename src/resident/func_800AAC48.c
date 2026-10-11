#include "common.h"

/* Measured two-word call view; historical return/API remain provisional. */
extern void func_800C3B98(s32 selector, u32 mask);

void func_800AAC48(void)
{
    func_800C3B98(0, 0x800000);
}
