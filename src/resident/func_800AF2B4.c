#include "common.h"

/* Observed packet accesses only; no complete packet layout or API is claimed. */
typedef struct {
    u8 tag[3];
    u8 length;
    u32 command;
    u32 end;
} PacketView;

extern u32 func_800AF950(s32, s32);

void func_800AF2B4(PacketView *packet, s16 *source)
{
    packet->length = 2;
    packet->command = func_800AF950(source[0], source[1]);
    packet->end = 0;
}
