#include "common.h"

/* Existing packet byte fields; complete layout and API remain provisional. */
void func_800ADD58(u8 *packet)
{
    packet[3] = 5;
    packet[7] = 0x28;
}
