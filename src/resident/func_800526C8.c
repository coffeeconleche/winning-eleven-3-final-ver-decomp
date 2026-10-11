#include "common.h"

/* A no-storage view; original scratch meaning and API remain unknown. */
extern u8 scratch2E0 __asm__("0x1F8002E0");

u32 func_800526C8(u32 mode)
{
    u32 condition = (u8)mode < 12;
    if (condition != 0) {
        if (scratch2E0 != 0) {
            /* Empty control fence keeps this zero-result path distinct;
             * no instructions, accesses or clobbers are emitted. */
            __asm__ volatile("" : :);
            return 0;
        }
        return 1;
    } else {
        if (scratch2E0 == 0) {
            /* Empty control fence retains the measured second byte branch. */
            __asm__ volatile("" : :);
            return 0;
        }
        return 1;
    }
}
