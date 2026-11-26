#include "common.h"

extern u32 func_800B1128(u32);
extern u8 *func_8001D004(u32);

void func_80079C50(u8 *actor)
{
    u8 *ball = *(u8 **)0x1F8002F4;
    s16 bx = *(s16 *)(ball + 2);
    s16 bz = *(s16 *)(ball + 6);
    s32 dx = (actor[0x399] == 0) ? (bx - 0x3320) : (bx + 0x3320);
    u32 dist = func_800B1128((u32)(dx * dx + bz * bz)) >> 8;
    u16 meters = (u16)dist;
    u8 *pkt = func_8001D004(0x46);
    u16 hundreds = (u16)(meters / 100U);
    u16 rem = (u16)(meters - hundreds * 100U);
    u16 tens = (u16)(meters / 10U);
    u16 units = (u16)(meters - tens * 10U);

    pkt[0x03] = (u8)(hundreds << 4);
    pkt[0x1B] = (u8)(units << 4);
    pkt[0x0F] = (u8)((rem / 10U) << 4);
}
