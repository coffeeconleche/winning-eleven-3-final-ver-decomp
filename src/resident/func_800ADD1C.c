#include "common.h"

/* Partial byte view: complete packet type and original API remain unknown. */
void func_800ADD1C(u8 *packet)
{
    packet[3] = 7;
    packet[7] = 0x24;
}
