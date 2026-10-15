#include "common.h"

/* No-storage name for the same scratch byte used by the literal read. */
extern u8 D_1F8002A9 __asm__("0x1F8002A9");

/* Same partial member layout as the existing 5B864 definition; no storage. */
typedef struct {
    u8 before2[2];
    u16 half2;
    u8 between4[2];
    u16 half6;
    u32 word8;
    u8 betweenC[4];
    u32 word10;
    u8 between14[0x12];
    u16 half26;
    u8 between28[0x37C];
    u8 copied3A4;
    u8 between3A5[5];
    u8 phase3AA;
} RecordView;

/* Measured offset views of an existing actor; complete ownership is external. */
extern void func_8005BA30(u8 *, u32, u32);
extern s32 func_8001E6B8(s32);
extern s32 func_8005C7A0(u32);
extern void func_8004B0F0(u8 *, u32, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005B864(RecordView *, u16);
extern void func_800498AC(u8 *);

#define B(o) (actor[(o)])
#define H(o) (*(u16 *)(actor + (o)))
#define W(o) (*(u32 *)(actor + (o)))

void func_800267D8(u8 *actor)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 oldSpeed;
    s32 bias;
    s32 position;
    s32 index;

    index = B(0x397);
    H(0x3AE) -= 3;
    switch (index) {
    case 0:
        func_8005BA30(actor, 31, 0);
        index = B(0x38D);
        W(0x3A0) = 48;
        if (index == *(u8 *)0x1F8002A8) {
            if (func_8001E6B8(2) != 0) {
                bias = 0;
            } else {
                bias = 64 - func_8001E6B8((B(0x3B8) / 10) & 255);
            }
            {
                s32 jitter = func_8005C7A0(32);
                func_8004B0F0(actor, (B(0x3AA) + jitter) & 255, bias, 0);
            }
        } else if (index == *(u8 *)0x1F8002A9) {
            D_1F8002A9 = 0;
        }
        B(0x397)++;
        break;
    case 1:
        func_8005BD1C(actor);
        oldSpeed = W(0x3A0);
        if (oldSpeed < 3) {
            W(0x3A0) = 0;
        } else {
            W(0x3A0) = oldSpeed - 2;
        }
        if (B(0x390) >= 26) {
            func_8005BA30(actor, 1, 0);
            B(0x3D0) = 12 - func_8001E6B8((B(0x3B8) / 10) & 255);
            W(0x3A0) = 0;
            B(0x397)++;
        }
        break;
    case 2: {
        u8 *other;
        func_8005BD1C(actor);
        other = *(u8 **)0x1F8002F4;
        B(0x3AA) = func_8005B7CC(func_8005B36C(*(s16 *)(actor + 2),
                       *(s16 *)(actor + 6), *(s16 *)(other + 2),
                       *(s16 *)(other + 6)) & 255, B(0x3AA), 8);
        if (B(0x3D0) == 0) {
            B(0x396) = 0;
            B(0x397) = 0;
        }
        break;
    }
    }
    func_8005B864((RecordView *)actor, H(0x3A0));
    func_800498AC(actor);
    if (scratch[0x2A9] != 0) {
        goto clear;
    }
    if (*(s16 *)(scratch + 0x4E) < -127) {
        goto mark;
    }
    position = *(s32 *)(*(u8 **)(scratch + 0x2F4) + 12);
    if (position < 0) {
        position = (s32)(0u - (u32)position);
    }
    if (position >= 5888) {
        goto mark;
    }
clear:
    B(0x3D1) = 0;
    return;
mark:
    B(0x3D1) = 3;
}
