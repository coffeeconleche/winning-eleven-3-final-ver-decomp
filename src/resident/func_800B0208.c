#include "common.h"

/* Existing linker symbols; the FIFO pointer slots and the GPU tag word are
 * measured access views. */
extern u32 *D_800CEB9C;
extern u32 *D_800CEB98;

/* Address-taken (callback table at file offset 0xBF290) with no direct
 * callers. The tag word is written unconditionally (the original store
 * sits in the beqz delay slot); the word stream only when count is
 * nonzero. The zero return is the measured $v0 value, not a recovered
 * contract. */
u32 func_800B0208(u32 *src, u32 count)
{
    u32 remaining = count - 1;

    *D_800CEB9C = 0x04000000;
    if (count != 0) {
        do {
            u32 word = *src++;

            *D_800CEB98 = word;
            remaining--;
        } while (remaining != 0xFFFFFFFF);
    }
    return 0;
}
