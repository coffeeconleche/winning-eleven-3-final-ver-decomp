#include "common.h"

/* No-storage view of the proved scratch byte. The original return API and
 * record layout are unknown. This void view still preserves measured $v0 = 8;
 * the known caller ignores it, so no return contract is inferred. */
extern u8 D_1F80029A __asm__("0x1F80029A");

void func_8009D380(u8 *record)
{
    if (D_1F80029A != 8) {
        record[0x3E2] = 0;
        record[0x3E3] = 0;
    }
}
