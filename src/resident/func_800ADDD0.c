#include "common.h"

/* Existing packet byte fields; complete layout and API remain provisional. */
void func_800ADDD0(u8 *packet)
{
    packet[3] = 4;
    packet[7] = 0x64;
}
