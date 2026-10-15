#include "types.h"

extern u8 D_800FF748[];
extern s16 D_80105122, D_80105126;
extern u8 D_801054F3;
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);
/* Typed views of existing guest cells, shared with other resident routines. */
extern u8 scratch2E7 __asm__("0x1F8002E7");
extern u32 scratch200 __asm__("0x1F800200");
extern u32 scratch1FC __asm__("0x1F8001FC");
extern u32 scratch204 __asm__("0x1F800204");
extern u32 scratch1F0 __asm__("0x1F8001F0");
extern u32 scratch1F4 __asm__("0x1F8001F4");
extern u32 scratch1F8 __asm__("0x1F8001F8");

/* Partial existing record views; native ownership and alias contracts unknown. */
void func_800972AC(void)
{
    u8 mode = (*(u8 *)0x1F8002F0);
    u8 *record = D_800FF748;
    u32 first, oldX, oldZ;
    s32 recordX;
    s32 component;

    switch (mode) {
    case 0:
        record += (u8)((*(u8 *)0x1F8002AE) % 24U) * 1000;
        first = scratch200 * 9U - 0x200U;
        oldX = scratch1FC;
        recordX = *(s16 *)(record + 2);
        oldZ = scratch204;
        scratch200 = (s32)first / 10;
        scratch1FC = (s32)(oldX * 9U + (u32)recordX) / 10;
        scratch204 = (s32)(oldZ * 9U + (u32)(s32)*(s16 *)(record + 6)) / 10;
        component = func_8001E694(scratch2E7, 0x1800);
        scratch1F0 = (s32)(scratch1F0 * 9U + scratch1FC + (u32)component) / 10;
        scratch1F4 = (s32)(scratch1F4 * 9U - 0x800U) / 10;
        component = func_8001E5A4(scratch2E7, 0x1800);
        scratch1F8 = (s32)(scratch1F8 * 9U + scratch204 + (u32)component) / 10;
        break;
    case 1: {
        s32 initialX, initialRecordX;
        D_801054F3 = 1;
        record += (u8)((*(u8 *)0x1F8002AD) % 24U) * 1000;
        initialX = D_80105122;
        initialRecordX = *(s16 *)(record + 2);
        scratch200 = (u32)-0x200;
        scratch1FC = (initialX + initialRecordX) >> 1;
        scratch204 = (D_80105126 + *(s16 *)(record + 6)) >> 1;
        component = func_8001E694(scratch2E7, 0x1800);
        scratch1F4 = (u32)-0x800;
        scratch1F0 = scratch1FC + (u32)component;
        component = func_8001E5A4(scratch2E7, 0x1800);
        scratch1F8 = scratch204 + (u32)component;
        break;
    }
    }
}
