#include "common.h"

/* Byte-field access view; complete packet layout and return API are unknown. */
void func_800ADD80(u8 *packet)
{
    packet[3] = 8;
    packet[7] = 0x38;
}
