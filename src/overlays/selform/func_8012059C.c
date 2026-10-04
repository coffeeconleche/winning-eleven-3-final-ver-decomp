#include "common.h"

extern s32 D_801222F0[];
extern u8 *func_8001D004(u32);

/* Preserve the four index/table rereads across potentially aliasing byte stores.
 * The original record type and meanings of the packed fields are unknown. */
void func_8012059C(u8 selector) {
    u8 *record = func_8001D004(selector + 0x1009);
    s32 value;

    record[4] = ((D_801222F0[((u8 *)0x1F8002FD)[selector]] >> 9) & 0x78) - 56;
    record[0x1C] = ((D_801222F0[((u8 *)0x1F8002FD)[selector]] >> 5) & 0x78) - 56;
    record[0x34] = ((D_801222F0[((u8 *)0x1F8002FD)[selector]] >> 1) & 0x78) - 56;
    value = (D_801222F0[((u8 *)0x1F8002FD)[selector]] & 15) * 8 - 192;
    /* Retain the measured word subtraction before byte narrowing; otherwise
     * GCC replaces -192 with the byte-congruent +64. This emits no code. */
    __asm__("" : : "r"(value));
    record[0x3F] = value;
}
