#include "common.h"

/* Existing callback word; pointer type and original formal API are provisional. */
extern u32 D_800D3C64;

u32 func_800B9510(u32 value) {
    u32 previous = D_800D3C64;
    register u8 *page __asm__("$1");

    /* Consume the actual prior word before materializing the store address.
     * The initialized address binding and empty inputs emit no instructions. */
    __asm__("" : : "r"(previous));
    page = (u8 *)0x800D0000;
    __asm__("" : : "r"(page));
    *(u32 *)(page + 0x3C64) = value;
    return previous;
}
