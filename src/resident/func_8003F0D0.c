#include "common.h"

/* Same storage-free partial type used by the existing 52D90 declaration. */
typedef struct {
    u8 unknown000[0x38D];
    u8 byte38D;
    u8 unknown38E[0xB];
    u8 byte399;
    u8 unknown39A;
    u8 byte39B;
    u8 unknown39C[4];
    u32 word3A0;
    u8 unknown3A4[0x24];
    s16 half3C8;
} Resident3EF94View;

extern void func_800512B8(u8 *, u32);
extern void func_80056360(u8 *);
extern s32 func_8005C7A0(u32);
extern s32 func_8001E6B8(s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8004B0F0(u8 *, u32, u32, u32);
extern u8 func_80052D90(Resident3EF94View *);

/* PS1 partial aligned record/scratch views. Keep side-effecting random calls,
 * callback rereads, modulo-word products, and the original signed comparison
 * of the wrapped squared-distance word; this is not a host geometry rewrite. */
void func_8003F0D0(u8 *first, u8 *second)
{
    s32 direction;
    s32 amount;
    u32 forward;
    u32 backward;
    u32 speed;
    u32 facing;
    u32 otherFacing;
    s32 random;
    s32 offset;
    u8 *ball;
    u8 *scratch = (u8 *)0x1F800000;
    s32 x;
    s32 z;
    u32 distance;

    func_800512B8(first, 1);
    func_80056360(first);
    if (first[0x397] == 16) {
        offset = func_8005C7A0(24);
        direction = first[0x3AA] + offset;
        random = func_8001E6B8(8) + 8;
        {
            u8 *firstBall = *(u8 **)0x1F8002F4;
            u32 firstSpeed = *(u32 *)(firstBall + 0x3A0);
            amount = *(s16 *)(first + 0x3C6) + (s32)(firstSpeed >> 10) + random;
        }
        goto clampMaximum;
    }
    offset = func_8005C7A0(4) + 128;
    direction = func_8005B7CC((second[0x3AA] + offset) & 255, first[0x3AA], 32);
    func_8001E6B8(16);
    func_8001E6B8((first[0x3B9] / 10) & 255);
    {
        u8 *otherBall = *(u8 **)0x1F8002F4;
        facing = first[0x3A4];
        otherFacing = otherBall[0x3A4];
        speed = *(u32 *)(first + 0x3A0);
        forward = (facing - otherFacing) & 255;
        if (forward < 129) {
            amount = (s32)((speed * forward) >> 7);
        } else {
            backward = (otherFacing - facing) & 255;
            amount = (s32)((speed * backward) >> 7);
        }
    }
    if (amount < 41) {
        amount = 40;
    }
clampMaximum:
    if (amount >= 104) {
        amount = 104;
    }
    func_8004B0F0(first, direction & 255, (u32)amount, (u32)func_8001E6B8(3));
    *(u16 *)(scratch + 0x31C) = (first[0x399] ^ 1) & 255;
    if (!func_80052D90((Resident3EF94View *)second)) {
        second[0x3D1] = 0;
        ball = *(u8 **)(scratch + 0x2F4);
        x = *(s16 *)(second + 2) - *(s16 *)(ball + 2);
        z = *(s16 *)(second + 6) - *(s16 *)(ball + 6);
        distance = (u32)x * (u32)x + (u32)z * (u32)z;
        if ((s32)distance > 0xC3FF) {
            second[0x396] = 24;
        } else {
            second[0x396] = 16;
        }
        second[0x397] = 0;
    }
}
