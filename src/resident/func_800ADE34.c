#include "common.h"

/* Partial packet byte view; complete layout and historical API are unknown. */
void func_800ADE34(u8 *packet)
{
    packet[3] = 3;
    packet[7] = 0x40;
}
