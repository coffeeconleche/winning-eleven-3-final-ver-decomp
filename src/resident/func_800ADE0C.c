#include "common.h"

/* Partial byte view: complete packet type and original API remain unknown. */
void func_800ADE0C(u8 *packet)
{
    packet[3] = 2;
    packet[7] = 0x78;
}
