#include "common.h"

extern u8 *func_8001D004(u32);
extern u32 func_8005B99C(void);

void func_8002A83C(u8 *actor, u32 power)
{
    u32 side;
    u32 slot;
    u8 *packet;
    u32 clamped;

    if (actor[0x39A] != 0) {
        return;
    }

    if (*(u8 *)0x1F8002E2 == 2) {
        side = func_8005B99C() & 0xFF;
    } else {
        side = actor[0x399];
    }

    if (side == 0) {
        slot = 7;
    } else if (side == 1) {
        slot = 8;
    } else {
        return;
    }

    packet = func_8001D004(slot);
    clamped = power & 0xFF;
    if (clamped >= 17U) {
        clamped = 16U;
    }
    packet[1] = (u8)(clamped * 6U);
}
