#include "common.h"

/* These local entries dispatch BIOS A0/27 and A0/28. Keep neutral argument
 * naming rather than assuming a modern library prototype or buffer ownership. */
extern void func_800AD648(void *, void *, s32);
extern void func_800AD658(void *, s32);

s32 func_801D0820(u8 *first, u8 *second, s32 count) {
    u32 sum;
    register u8 *read __asm__("$4");
    register s32 i __asm__("$5");
    s32 blocks, aligned, padding;
    /* The measured frame includes eight unused local bytes; their original
     * purpose is unknown, and no accesses are introduced. */
    u8 frameSlot[8];

    func_800AD648(second, first, count);
    first += count;
    sum = 0;
    i = 0;
    if (count > 0) {
        read = second;
        do {
            /* Retain the distinct integer counter and byte cursor instead of
             * replacing the comparison with an end-pointer test. The empty
             * input and bindings preserve the measured registers without code. */
            __asm__ volatile("" : : "r"(i), "r"(read));
            sum += *read++;
            i++;
        } while (i < count);
    }
    *first = sum;
    first++;
    count++;
    blocks = count / 128;
    aligned = blocks * 128;
    padding = 128 - (count - aligned);
    if (padding != 128) {
        func_800AD658(first, padding);
    }
    return (count & 127) != 0 ? (blocks + 1) * 128 : aligned;
}
