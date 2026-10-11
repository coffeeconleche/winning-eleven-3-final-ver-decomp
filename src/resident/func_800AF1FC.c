#include "common.h"

/* Partial packet access view, not a recovered complete structure or API. */
typedef struct {
    u8 tag[3];
    u8 length;
    u32 command;
    u32 end;
} PacketView;

extern u32 func_800AF96C(void *);

void func_800AF1FC(PacketView *packet, void *source)
{
    packet->length = 2;
    packet->command = func_800AF96C(source);
    packet->end = 0;
}
