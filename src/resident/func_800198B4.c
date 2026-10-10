#include "common.h"

/* The caller supplies a halfword buffer and a full-word element count.
 * Its result is ignored; the void ABI view retains the measured $v0 residue:
 * untouched for zero count, otherwise the final unsigned halfword OR 0x8000.
 * Unsigned post-decrement preserves the original zero guard and word wrap. */
void func_800198B4(u16 *words, u32 count)
{
    while (count-- != 0) {
        *words++ |= 0x8000;
    }
}
