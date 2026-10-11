#include "common.h"

/* Only these byte/word fields are evidenced; complete packet layout is unknown. */
void func_800ADEBC(u8 *packet)
{
    packet[3] = 9;
    packet[7] = 0x5C;
    *(u32 *)(packet + 0x24) = 0x55555555u;
}
