#include "common.h"

/* Partial views of existing records and scratch memory; no storage is defined.
 * The complete layouts, table bounds and historical API remain unknown.
 * Absolute addresses and MIPS signed-word conversions require native adaptation.
 * Squared distances retain low words; the second comparison is signed. Empty
 * identities retain real values/dependencies consumed by C and emit no code. */

#define S16_AT(p, o) (*(s16 *)((u8 *)(p) + (o)))
#define U16_AT(p, o) (*(u16 *)((u8 *)(p) + (o)))
#define S32_AT(p, o) (*(s32 *)((u8 *)(p) + (o)))

extern u8 D_800C6B74[];

void func_800547A4(u8 *player, s32 direction)
{
    s32 x;
    s32 z;
    register s32 dx __asm__("$2");
    s32 dz;
    u32 distance;
    u8 *ball;
    u32 facing;
    u32 difference;
    s32 close;
    s32 position;
    s32 speed;
    s32 reverse;
    u16 incremented;
    register u8 *scratch __asm__("$9");

    if (player[0x39A] != 0) {
        return;
    }
    scratch = (u8 *)0x1F800000;
    __asm__("" : "=r"(scratch) : "0"(scratch));
    if (player[0x3D2] != 0 || *(s32 *)0x1F8002B0 == 1) {
        return;
    }
    x = S16_AT(player, 2);
    dx = x - *(s16 *)0x1F8000F8;
    {
        u32 square_x = (u32)((long long)dx * dx);
        register u32 square_z __asm__("$2");

        z = S16_AT(player, 6);
        dz = z - *(s16 *)0x1F8000FC;
        square_z = (u32)((long long)dz * dz);
        distance = square_x + square_z;
    }
    if (distance > 0x90000U) {
        return;
    }
    ball = *(u8 **)0x1F8002F4;
    dx = x - S16_AT(ball, 2);
    dz = z - S16_AT(ball, 6);
    distance = (u32)((long long)dx * dx + (long long)dz * dz);
    if ((s32)distance <= 0x3FFFF) {
        return;
    }
    facing = ball[0x3A4];
    difference = (u8)(facing - direction);
    if (difference >= 0x81U) {
        close = (s32)((direction - facing) & 0xFF) < 0x21;
    } else {
        close = (s32)difference < 0x21;
    }
    if (close != 0 || scratch[0x28C] == 0) {
        return;
    }
    {
        s32 current_x = S16_AT(player, 2);
        if (player[0x399] != 0 ? -current_x >= 0x1FE3 : current_x >= 0x1FE3) {
            s32 absolute_z = S16_AT(player, 6);

            if (absolute_z < 0) {
                absolute_z = -absolute_z;
            }
            if (absolute_z < 0x12F4) {
                goto direct;
            }
        }
    }
    goto alternate;
direct:
    player[0x396] = 1;
    player[0x397] = 0;
    {
        register u16 level __asm__("$2") = U16_AT(scratch, 0x4E);

        if ((s16)level >= -0x120) {
            speed = S32_AT(*(u8 **)(scratch + 0x2F4), 0xC);
            if (speed < 0) {
                speed = (s32)(0U - (u32)speed);
            }
            if (speed < 0x2E00) {
                return;
            }
        }
    }
    player[0x3D0] = 0;
    player[0x397] = 4;
    return;

alternate:
    {
        u32 selector = scratch[0x28C];
        u8 *selected_ball = *(u8 **)(scratch + 0x2F4);

        __asm__("" : "=r"(selector) : "0"(selector), "r"(selected_ball));
        reverse = D_800C6B74[(u8)selector] - selected_ball[0x3A4] - 0x80;
    }
    {
        s32 comparison = (u8)reverse < 0x81U;

        if (comparison) {
            position = reverse;
        } else {
            position = -reverse;
        }
    }
    if ((u8)position >= 0x21U) {
        return;
    }
    {
        register u16 level __asm__("$2");

        level = U16_AT(scratch, 0x2B8);

        if ((s16)level == 0x7FFF && S16_AT(*(u8 **)(scratch + 0x2F4), 0x3BE) >= -0x100) {
            player[0x396] = 0xE;
            player[0x397] = 0x30;
            return;
        }
    }
    incremented = U16_AT(player, 0x3C4) + 0x20;
    U16_AT(player, 0x3C4) = incremented;
    if ((s16)incremented >= 0x180) {
        U16_AT(player, 0x3C4) = 0x180;
    }
}
