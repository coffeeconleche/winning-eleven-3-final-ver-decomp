#include "common.h"

/* Numeric scalar names view existing scratch halfwords without allocating data. */
extern u16 scratch230 __asm__("0x1F800230");
extern u16 scratch234 __asm__("0x1F800234");

/* Selector 1 chooses the first halfword view; all other values choose the
 * second. Original API, slot limits and field meanings remain provisional. */
s32 func_80017528(u32 slot, u32 selector, u32 mask)
{
    u32 bits;

    if (selector == 1) {
        bits = *(u16 *)((u8 *)&scratch230 + slot * 8) & mask;
    } else {
        bits = *(u16 *)((u8 *)&scratch234 + slot * 8) & mask;
    }
    return bits != 0;
}
