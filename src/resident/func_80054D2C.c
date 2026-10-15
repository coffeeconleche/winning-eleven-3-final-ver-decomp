#include "common.h"

/* Partial byte views of existing records and scratch memory, with no new
 * storage. Record/table extents, selector meanings and the historical API are
 * unknown. Absolute scratch addresses and 32-bit pointer arithmetic require
 * native adaptation. Products retain low words and distance sums wrap at 32
 * bits. Empty identities retain real pointer/load values without instructions,
 * memory accesses or clobbers; register bindings retain measured allocation. */
#define U8_AT(p, o) (*(u8 *)((u8 *)(p) + (o)))
#define S16_AT(p, o) (*(s16 *)((u8 *)(p) + (o)))
#define S32_AT(p, o) (*(s32 *)((u8 *)(p) + (o)))
#define U32_AT(p, o) (*(u32 *)((u8 *)(p) + (o)))

extern u8 D_800FF748[];

s32 func_80054D2C(u8 *player)
{
    register s32 ball_z __asm__("$9");
    register s32 ball_x __asm__("$10");
    s32 dx;
    s32 dz;
    s32 other_dx;
    s32 other_dz;
    s32 mode;
    s32 below_limit;
    s32 speed;
    register s32 result __asm__("$2");
    register u32 distance __asm__("$7");
    u8 selected;
    u8 owner;
    u8 *other;
    u8 *ball;
    register u8 *scratch __asm__("$8");
    u8 *roster = D_800FF748;

    __asm__("" : "=r"(roster) : "0"(roster));
    owner = *(u8 *)0x1F8002A9;
    if (U8_AT(player, 0x38D) == owner) {
        return 1;
    }
    scratch = (u8 *)0x1F800000;
    __asm__("" : "=r"(scratch) : "0"(scratch));
    if (owner != 0) {
        return 0;
    }

    selected = U8_AT(0x1F800000, U8_AT(player, 0x398) + 0x2CF);
    if (selected == 1 && U32_AT(*(u8 **)0x1F8002F4, 0x3A0) >= 0x4000U) {
        mode = *(s32 *)0x1F8002B0;
        if (mode == selected) {
            goto mode_one;
        }
        if (mode != 0xB) {
            goto mode_default;
        }
        below_limit = *(s16 *)0x1F80031C < 9;
        goto limit_ready;
mode_one:
        below_limit = *(s16 *)0x1F80031C < 0x19;
        goto limit_ready;
mode_default:
        below_limit = *(s16 *)0x1F80031C < 0x11;
    } else {
        u32 level = *(u16 *)(scratch + 0x31C);
        __asm__("" : "=r"(level) : "0"(level));
        below_limit = (s16)level < 0x11;
    }
limit_ready:
    if (below_limit != 0) {
        return 0;
    }

    ball = *(u8 **)(scratch + 0x2F4);
    ball_x = S16_AT(ball, 2);
    dx = S16_AT(player, 2) - ball_x;
    ball_z = S16_AT(ball, 6);
    dz = S16_AT(player, 6) - ball_z;
    distance = (u32)((long long)dx * dx) + (u32)((long long)dz * dz);
    result = 0;
    {
        u32 address = (u32)scratch;
        u32 offset;

        address += (U8_AT(player, 0x399) ^ 1) * 2;
        offset = (u8)(U8_AT(address, 0x31E) % 24) * 1000;
        other = roster + offset;
    }
    {
        register u16 level __asm__("$4") = *(u16 *)(scratch + 0x4E);

        if ((s16)level >= -0x7F) {
            speed = S32_AT(ball, 0xC);
            if (speed < 0) {
                speed = (s32)(0U - (u32)speed);
            }
            if (speed < 0x1700 && distance <= 0x50FFFU) {
                other_dx = S16_AT(other, 2) - ball_x;
                other_dz = S16_AT(other, 6) - ball_z;
                result = ((u32)((long long)other_dx * other_dx) +
                          (u32)((long long)other_dz * other_dz)) >= distance;
            }
        }
    }
    return result;
}
