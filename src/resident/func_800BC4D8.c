#include "common.h"

typedef struct {
    u32 current;
    u32 initial;
    u8 pad08[0xC];
    u8 started;
    u8 pad15[0xB];
    u8 enabled;
    u8 pending;
    u8 pad22[0x76];
    u32 flags;
    u8 pad9C[0x14];
} VoiceEntry;

extern VoiceEntry *volatile D_8010C2A8[];

void func_800BC4D8(s32 bank, s32 voice)
{
    u32 shifted = (u32)bank << 16;
    u32 table = (u32)D_8010C2A8;
    VoiceEntry *volatile *bankSlot = (VoiceEntry *volatile *)(table + (u32)((s32)shifted >> 14));
    s32 index = (s16)voice;
    u32 offset = (u32)index * sizeof(VoiceEntry);

    ((VoiceEntry *)((u32)*bankSlot + offset))->started = 1;
    /* Resolve the bank slot again after the byte write. */
    ((VoiceEntry *)(offset + (u32)*bankSlot))->flags &= ~8U;
}
