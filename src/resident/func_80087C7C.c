#include "common.h"

/* Measured scalar access views; scratch ownership, global meaning, and the
 * historical return declaration remain unknown. Each branch reads only its
 * selected value before the shared zero test. */
extern u8 D_1F8002E1 __asm__("0x1F8002E1");
extern u8 D_1F8002DF __asm__("0x1F8002DF");
extern u16 D_8010A5B6;

s32 func_80087C7C(void)
{
    u32 mode = D_1F8002E1;
    u32 difference;

    if (mode == 0 || mode == 3) {
        difference = (D_8010A5B6 & 5) ^ 4;
    } else {
        difference = D_1F8002DF ^ 3;
    }
    return difference == 0;
}
