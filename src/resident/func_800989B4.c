#include "common.h"

/* No-storage view of the observed scratch halfword. API remains provisional. */
extern u16 scratchE0 __asm__("0x1F8000E0");

void func_800989B4(void)
{
    scratchE0 = 10;
}
