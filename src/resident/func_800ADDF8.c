#include "common.h"

/* Byte-field access view; complete packet layout and return API are unknown. */
void func_800ADDF8(u8 *packet)
{
    packet[3] = 2;
    packet[7] = 0x70;
}
