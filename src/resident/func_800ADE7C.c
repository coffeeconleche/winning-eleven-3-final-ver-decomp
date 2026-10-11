#include "common.h"

/* Partial view of the existing packet fields; complete layout is provisional. */
typedef struct {
    u8 tag[3];
    u8 length;
    u8 color[3];
    u8 command;
    u32 body[6];
} PacketView;

void func_800ADE7C(PacketView *packet)
{
    packet->length = 7;
    packet->command = 0x58;
    packet->body[5] = 0x55555555;
}
