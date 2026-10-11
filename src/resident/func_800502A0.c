#include "common.h"

/* Selector/mode meanings and original API remain provisional. Unsigned word
 * operations preserve wraparound before byte narrowing. One empty identity
 * retains the measured word copy before narrowing on the non-mode-1 path;
 * it emits no instructions/accesses/clobbers. Removing it or using a bare
 * control fence gives 100 bytes; initialized-result shaping gives 84.
 * Basic DOS flags, no bindings, and a natural zero-byte frame suffice. */
u32 func_800502A0(u32 value, u8 mode)
{
    u32 key = value;

    if (mode == 1) {
        return (u8)(value + 0xD3);
    }
    __asm__ volatile ("" : "=r"(key) : "0"(key));
    key &= 0xFF;
    if (key < 0x10) {
        return (u8)(value + 0x20);
    }
    if (key < 0x20) {
        return (u8)(value + 0x30);
    }
    if (key == 0x2B) {
        return 0x22;
    }
    return (u8)(value - 0x58);
}
