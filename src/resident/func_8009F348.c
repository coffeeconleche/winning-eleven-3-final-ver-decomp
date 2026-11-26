#include "common.h"

extern u32 func_800B1128(u32);
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);

u32 func_8009F348(void)
{
    s32 x0 = *(s32 *)0x1F8001F0;
    s32 x1 = *(s32 *)0x1F8001FC;
    s32 z0 = *(s32 *)0x1F8001F8;
    s32 z1 = *(s32 *)0x1F800204;
    s32 dx = x0 - x1;
    s32 dz = z0 - z1;
    u32 dist = func_800B1128((u32)(dx * dx + dz * dz));
    u32 best_err = 0xFFFFFFFFU;
    s32 best_ang = 0;
    s32 ang = 0;
    s32 i;

    for (i = 0; i < 16; i++, ang += 16) {
        u8 a = (u8)ang;
        s32 ex = *(s32 *)0x1F8001F0 - (*(s32 *)0x1F8001FC + func_8001E694(a, dist));
        s32 ez = *(s32 *)0x1F8001F8 - (*(s32 *)0x1F800204 + func_8001E5A4(a, dist));
        u32 err = (u32)((ex < 0 ? -ex : ex) + (ez < 0 ? -ez : ez));
        if (err < best_err) {
            best_err = err;
            best_ang = ang;
        }
    }

    best_err = 0xFFFFFFFFU;
    ang = best_ang - 8;
    for (i = 0; i < 16; i++, ang += 1) {
        u8 a = (u8)ang;
        s32 ex = *(s32 *)0x1F8001F0 - (*(s32 *)0x1F8001FC + func_8001E694(a, dist));
        s32 ez = *(s32 *)0x1F8001F8 - (*(s32 *)0x1F800204 + func_8001E5A4(a, dist));
        u32 err = (u32)((ex < 0 ? -ex : ex) + (ez < 0 ? -ez : ez));
        if (err < best_err) {
            best_err = err;
            best_ang = ang;
        }
    }

    return (u8)best_ang;
}
