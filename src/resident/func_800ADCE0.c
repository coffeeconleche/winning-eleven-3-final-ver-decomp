#include "common.h"

/* Partial packet command-byte view; original API/layout remain provisional. */
void func_800ADCE0(u8 *packet, s32 enabled)
{
    if (enabled) {
        packet[7] |= 1;
    } else {
        packet[7] &= 0xFE;
    }
}
