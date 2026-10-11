#include "common.h"

extern u8 scratch2E6 __asm__("0x1F8002E6");
/* Four observed argument words; complete helper API remains provisional. */
extern void func_80050140(u32, u32, u32, u32);

/* Only the low input byte is tested. The original return contract is unknown. */
void func_80050510(u32 mode)
{
    if (scratch2E6 >= 5 && (u8)mode == 0) {
        func_80050140(0x130, 0x1EB, 0x60, 0x1F8);
        func_80050140(0xA0, 0x1F8, 0x70, 0x1F8);
    } else {
        func_80050140(0x130, 0x1EB, 0x70, 0x1F8);
        func_80050140(0xA0, 0x1F8, 0x60, 0x1F8);
    }
}
