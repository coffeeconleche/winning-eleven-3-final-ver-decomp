#include "common.h"

/* Halfword flag setter; the known caller ignores the result register. */
void func_800C0B78(void) {
    s32 value = 1;
    /* Actual initialized address binding and empty use retain the measured
     * address register; neither emits a game instruction or allocates storage. */
    register u8 *page __asm__("$1") = (u8 *)0x800F0000;
    __asm__("" : : "r"(page));
    *(s16 *)(page + 0xF70) = value;
}
