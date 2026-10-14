#include "common.h"

extern u8 D_800FF748[];
extern u8 scratch2DD __asm__("0x1F8002DD");
extern u8 scratch2DE __asm__("0x1F8002DE");
extern u8 scratch2E2 __asm__("0x1F8002E2");

/* Existing byte-storage views only; extents, selector domains and historical
 * API/field meanings remain provisional. The known caller discards v0.
 * Preserve the full comparisons, short-circuit reads and post-store rereads.
 * The signed 32-bit address comparison models the original SLT; raw addresses
 * and native pointer/layout contracts require separate recovery. */
void func_80050738(void)
{
    u8 *base = D_800FF748;
    /* Every continuing switch arm initializes the real iteration count.
     * This binding retains its original register and per-iteration bound. */
    register s32 count __asm__("$9");

    if (scratch2DD != scratch2DE) {
        switch (scratch2E2) {
        case 0:
        case 2:
        case 3:
            count = 1;
            break;
        case 1:
            count = 2;
            break;
        default:
            return;
        }

        if (count != 0) {
            u32 firstOffset = 0x89BD;
            /* Retain the actual source-offset constant and scratch cursor:
             * removals alter the original address operations/base loads. */
            register u32 sourceOffset __asm__("$11") = 0xABDC;
            u32 packedOffset = 0x89E8;
            u8 *source = base;
            register u8 *scratch __asm__("$5") = (u8 *)0x1F800000;

            do {
                u8 *selected = base + scratch[0x2DD];

                if (selected[firstOffset] != scratch[0x2FD] * 4 +
                                          source[sourceOffset] ||
                    (selected[packedOffset] >> 4) != scratch[0x301] ||
                    (selected[packedOffset] & 15) != scratch[0x303]) {
                    base[0x8F14] |= 1;
                }
                (base + scratch[0x2DD])[firstOffset] =
                    scratch[0x2FD] * 4 + source[sourceOffset];
                (base + scratch[0x2DD])[packedOffset] =
                    (scratch[0x301] << 4) + scratch[0x303];
                source++;
                scratch++;
            } while ((s32)source < (s32)((u32)count + (u32)base));
        }
    }
}
