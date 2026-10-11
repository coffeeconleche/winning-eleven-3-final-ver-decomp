#include "common.h"

/* No-storage byte views of the measured interleaved scratch lookups. Table
 * extent, record layout, selector meaning, and original APIs remain unknown.
 * One empty scratch-pointer identity prevents folding the second cursor back
 * into absolute addressing. It emits no instructions/accesses/clobbers.
 * The two narrow volatile views retain the observed record rereads, not MMIO.
 * Removing the identity differs at 92 bytes; index/key/both reread removal
 * gives 84/100/88 bytes. All three register bindings were removed together.
 * Basic DOS flags and a natural zero-byte frame need no further aids. */
extern u8 D_1F800322[] __asm__("0x1F800322");

u32 func_80049D94(u8 *record)
{
    u32 index = record[0x399];
    u32 key = record[0x38D];
    u32 first = D_1F800322[index * 2];
    u32 second;
    u8 *scratch = (u8 *)0x1F800000;

    if (key == first || first == 255) {
        __asm__ volatile ("" : "=r"(scratch) : "0"(scratch));
        {
            u32 address = (u32)scratch;
            address += *(volatile u8 *)(record + 0x399) * 2;
            second = *(u8 *)(address + 0x323);
        }
        if (second == 255) {
            return *(volatile u8 *)(record + 0x38D);
        }
        return second;
    }
    return first;
}
