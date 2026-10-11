#include "common.h"

/* Existing-symbol access views; ownership and complete layouts are unknown. */
extern u8 D_800E6D69;
extern u16 D_800F0EE0, D_8010C2A0;
extern u8 *func_8001D004(u32 id);

/* No known direct caller establishes a return API. Keep the original selected
 * reads, signed/unsigned halfword comparisons and raw register residue. */
void func_8008820C(u32 mask, u32 selector)
{
    u32 offset = (u8)selector * 8;
    u32 narrowed = (u16)mask;

    if ((*(u16 *)(0x1F800234 + offset) & mask) == narrowed) {
        D_800E6D69 = 0;
    }
    if ((*(u16 *)(0x1F800236 + offset) & mask) == narrowed ||
        *(s16 *)0x1F800288 == D_800F0EE0 ||
        *(s16 *)0x1F800288 == D_8010C2A0) {
        u8 *records = func_8001D004(0x3E);
        u8 index = 0;

        do {
            records[index * 12 + 0xA] = 0x16;
            index++;
        } while (index < 6);
    }
}
