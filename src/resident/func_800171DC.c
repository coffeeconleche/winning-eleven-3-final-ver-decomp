#include "common.h"

/* Raw scratch-byte address view; this declaration allocates no storage.
 * Callers dispatch on the byte, but its original name and API are unknown. */
extern u8 scratchByte __asm__("0x1F80029B");

void func_800171DC(void) {
    scratchByte++;
}
