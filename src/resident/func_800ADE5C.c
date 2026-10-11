#include "common.h"

/* Partial packet field view; complete object layout/API are provisional. */
typedef struct ResidentADE5CPacket {
    u8 prefix[20];
    u32 pattern;
} ResidentADE5CPacket;

void func_800ADE5C(ResidentADE5CPacket *packet)
{
    packet->prefix[3] = 5;
    packet->prefix[7] = 0x48;
    packet->pattern = 0x55555555;
}
