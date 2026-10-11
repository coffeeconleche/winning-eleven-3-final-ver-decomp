#include "common.h"

/* No-storage scratch byte views; table extent and valid indices are unknown. */
extern u8 scratch240 __asm__("0x1F800240");
extern u8 scratch241 __asm__("0x1F800241");
extern u8 scratch31E[] __asm__("0x1F80031E");

/* Record layout, field meaning and original API remain provisional. */
u32 func_80055700(u8 *record)
{
    u32 key = record[0x38D];

    if (key == scratch240) {
        return 1;
    }
    if (key == scratch241) {
        return 1;
    }
    if (key == scratch31E[record[0x399] * 2]) {
        /* Empty control fence retains the measured final return branch;
         * it emits no instructions, accesses or clobbers. */
        __asm__ volatile("" : :);
        return 1;
    }
    return 0;
}
