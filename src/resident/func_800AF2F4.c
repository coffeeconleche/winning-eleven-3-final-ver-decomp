#include "common.h"

/* Observed packet accesses only; the complete packet layout/API is provisional. */
typedef struct {
    u8 tag[3];
    u8 length;
    u32 mode;
    u32 end;
} PacketView;

void func_800AF2F4(PacketView *packet, u32 mask, u32 area)
{
    packet->length = 2;
    packet->mode = (mask ? 0xE6000002 : 0xE6000000) | (area != 0);
    packet->end = 0;
}
