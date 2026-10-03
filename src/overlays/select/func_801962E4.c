#include "common.h"

extern u8 D_800F1018[];
extern void func_800B3FB8(void *packet, void *entry, u16 value);
extern void func_800B39D8(void *packet, void *entry, u16 value);

void func_801962E4(u32 *packet, u16 value) {
    if (packet[7] == 0x10001000 && packet[8] == 0) {
        func_800B3FB8(packet, D_800F1018 + *(u8 *)0x1F80029D * 20, value);
    } else {
        func_800B39D8(packet, D_800F1018 + *(u8 *)0x1F80029D * 20, value);
    }
}
