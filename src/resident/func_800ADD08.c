#include "common.h"

/* Byte-field access view; complete packet layout and return API are unknown. */
void func_800ADD08(u8 *packet)
{
    packet[3] = 4;
    packet[7] = 0x20;
}
