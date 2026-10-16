#include "types.h"
extern u8 D_800FF748[];

/* Partial views of the existing bank, not declarations of table extents.
 * The caller supplies selectors 0/1; retain the full incoming word here.
 * Guest address arithmetic wraps in 32 bits, and the loop compares the
 * resulting addresses as signed PS1 words. Native bounds/translation are
 * intentionally not asserted. The comparison literal has one measured
 * register binding; it is initialized and consumed within each iteration. */

s32 func_80053728(u32 side)
{
    u8 *bank = D_800FF748;
    u32 cursor;
    u32 end;
    u32 phase;
    u32 entry;
    u8 *row;
    register s32 one __asm__("$2");
    if ((u32)(*(u8 *)0x1F8002E1 - 1) < 2U) {
        cursor = side * 22U + (u32)bank + 0x8E9CU;
        end = cursor + 22U;
        phase = *(u8 *)(0x1F8002DDU + side) * 132U;
        do {
            entry = *(u8 *)cursor;
            row = (u8 *)((u32)bank + (entry * 6U + phase));
            entry = row[0x93A9];
            one = 1;
            if (entry == one)
                return 0;
            cursor += 1U;
        } while ((s32)cursor < (s32)end);
    }
    return 1;
}
