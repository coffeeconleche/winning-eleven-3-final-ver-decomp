#include "common.h"

/* Partial byte view: complete packet type and original API remain unknown. */
void func_800ADD94(u8 *packet)
{
    packet[3] = 12;
    packet[7] = 0x3C;
}
