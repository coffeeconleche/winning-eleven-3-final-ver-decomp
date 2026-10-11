#include "common.h"

/* Only the incoming selector's low byte and this record byte are observed;
 * complete record ownership, selector meaning, and original API are unknown.
 * Two empty control fences retain the measured explicit return branches.
 * Removing the first, second, or both gives 52, 56, or 44 bytes instead of 64.
 * They emit no instructions or accesses, require no bindings/clobbers/frame,
 * and do not replace the C comparisons. The basic DOS profile needs no flags. */
s32 func_800659E0(u8 *record, u8 selector)
{
    if (record[0x38D] < 12) {
        if (selector < 12) {
            return 1;
        }
        __asm__ volatile ("");
        return 0;
    } else {
        if (selector < 12) {
            return 0;
        }
        __asm__ volatile ("");
        return 1;
    }
}
