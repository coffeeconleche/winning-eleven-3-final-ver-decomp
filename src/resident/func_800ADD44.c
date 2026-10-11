#include "common.h"

/* Packet prefix byte offsets are proved; complete layout/API are provisional. */
void func_800ADD44(u8 *packet)
{
    packet[3] = 9;
    packet[7] = 0x34;
}
