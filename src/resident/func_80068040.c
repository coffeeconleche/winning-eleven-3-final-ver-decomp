#include "common.h"

/* Partial scratch views only. The caller also sets a1, but this original
 * consumes only a0; no broader API or valid selector/state domain is known. */
void func_80068040(u32 selector)
{
    u32 index = (u8)selector;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *slot;

    if (*(u16 *)(scratch + 0x234 + index * 8) & 0x100) {
        if (scratch[0x2CF + index] == 0) {
            scratch[0x2FF + index] += 1;
        } else {
            scratch[0x2FF + index] -= 1;
        }
        slot = scratch + (u8)selector;
        if (slot[0x2FF] == 255) {
            slot[0x2FF] = 2;
        } else if (slot[0x2FF] == 3) {
            slot[0x2FF] = 0;
        }
    }
}
