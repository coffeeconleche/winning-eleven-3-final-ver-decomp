#include "types.h"

extern u8 D_80107FEC;
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);
extern u32 func_8005B36C(s32, s32, s32, s32);

/* Native partial record/scratchpad views: live aligned storage and the
 * existing current-actor pointer are required, not a complete portable
 * object layout. Exactly two incoming words are consumed; only direction's
 * low byte is observed. All five known callers ignore the return. */
void func_80078CE4(u8 *input, u32 direction)
{
    register u8 *player __asm__("s3") = input;
    u8 *scratch = (u8 *)0x1F800000;
    s32 x;
    s32 radius;
    u32 across;
    u32 heading;
    s32 first;
    s32 second;
    s32 sine;
    u32 output;
    u32 identity;
    register u32 angleByte __asm__("v1");
    u32 currentX;
    u32 z;
    s32 phase;

    if (*(u8 *)0x1F80029A == 2 && D_80107FEC == 0) {
        x = *(s16 *)(*(u8 **)0x1F8002F4 + 2);
        if (player[0x399] != 0) {
            /* x is a promoted signed halfword; -x cannot overflow s32. */
            if (-x < 2048) {
                /* Measured zero-instruction input keeps this actual
                 * conditional player store distinct from the other clears. */
                __asm__("" : : "r"(player));
                *(s16 *)(player + 0x3C8) = 0;
            }
        } else if (x < 2048) {
            *(s16 *)(player + 0x3C8) = 0;
        }
    } else {
        *(s16 *)(player + 0x3C8) = 0;
    }
    radius = 2880;
    if (*(s16 *)(player + 0x3C8) == 0) {
        direction = (u8)direction;
        if (player[0x3AC] == 0) {
            direction -= 16U;
        } else {
            direction += 16U;
        }
        radius = 704;
    }
    angleByte = (u8)direction;
    if (player[0x3AC] == 0) {
        across = angleByte - 64U;
    } else {
        across = angleByte + 64U;
    }
    heading = (u8)direction;
    first = func_8001E694(heading, radius);
    across &= 255;
    second = func_8001E694(across, 40);
    /* Capture the native current x before clearing player height. */
    currentX = *(u16 *)(*(u8 **)(scratch + 0x2F4) + 2);
    *(s16 *)(player + 4) = 0;
    *(u16 *)(player + 2) = currentX - (u32)first + (u32)second;
    sine = func_8001E5A4(heading, radius);
    second = func_8001E5A4(across, 40);
    z = *(u16 *)(*(u8 **)(scratch + 0x2F4) + 6) - (u32)sine + (u32)second;
    *(u16 *)(player + 6) = z;
    output = func_8005B36C(*(s16 *)(player + 2), (s16)z,
                           *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2),
                           *(s16 *)(*(u8 **)(scratch + 0x2F4) + 6));
    output = (u8)output;
    if (player[0x3AC] == 0) {
        output -= 4U;
    } else {
        output += 4U;
    }
    player[0x3AA] = output;
    player[0x3A4] = output;
    phase = 448 - player[0x3AA];
    *(s16 *)(player + 0x26) = (phase % 256) * 16;
    player[0x3D1] = 0;
    *(u16 *)(scratch + 0x31C) = 128;
    /* First identity read precedes scratch2AB; subsequent native rereads
     * follow their preceding scratch stores, without restrict/volatility. */
    identity = player[0x38D];
    scratch[0x2AB] = 255;
    scratch[0x2AA] = identity;
    scratch[0x2A9] = player[0x38D];
    scratch[0x2AC] = player[0x38D];
    *(u32 *)(player + 0x3A0) = 0;
}
