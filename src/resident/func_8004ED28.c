#include "common.h"

/* No-storage scalar view of the proved scratch word. */
extern u32 scratch_word __asm__("0x1F8002C8");

/* The unsigned sum wraps before the measured signed comparison. Preserve
 * the initial sum store and the optional second store, including negative
 * wrapped words. Known callers ignore the result; this void ABI view retains
 * the observed $v0 residue of 900 on both paths. Original API and scratch-word
 * meaning remain provisional. */
void func_8004ED28(u32 amount)
{
    u32 updated = scratch_word + 20 * (u8)amount;

    scratch_word = updated;
    if ((s32)updated > 900) {
        scratch_word = 900;
    }
}
