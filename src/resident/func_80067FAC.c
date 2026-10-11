#include "common.h"

extern u8 scratch2E2 __asm__("0x1F8002E2");
extern u8 scratch2DF __asm__("0x1F8002DF");
/* Two observed argument words; the helper overwrites incoming $a1 before
 * reading it. These values preserve the caller, not a recovered helper API. */
extern void func_80068040(u32, u32);

/* Selector meaning and return contract are unknown. */
void func_80067FAC(void)
{
    s32 selector = scratch2E2;

    switch (selector) {
    case 0:
    case 2:
    case 3:
        func_80068040(0, scratch2DF & 1);
        break;
    case 1:
        func_80068040(0, scratch2DF & 1);
        func_80068040(1, (scratch2DF & 1) ^ 1);
        break;
    }
}
