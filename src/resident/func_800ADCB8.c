#include "common.h"

/* Byte-field access view; complete packet layout and original API unknown. */
void func_800ADCB8(u8 *packet, u32 enabled) {
    if (enabled != 0)
        packet[7] |= 2;
    else
        packet[7] &= 0xFD;
}
