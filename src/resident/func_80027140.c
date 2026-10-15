#include "common.h"

/* Existing scratch byte, not a storage definition. */
extern u8 D_1F8002A9 __asm__("0x1F8002A9");

/* Same measured helper argument type as the existing 5B864 definition. */
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

extern void func_8004B0F0(u8 *, u32, u32, u32);
extern void func_80054A1C(u8 *);
extern void func_8005BA78(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);
extern void func_8005B864(RecordView *, u16);
extern void func_800498AC(u8 *);

#define B(o) (actor[(o)])
#define H(o) (*(u16 *)(actor + (o)))
#define W(o) (*(u32 *)(actor + (o)))

void func_80027140(u8 *actor)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 index = B(0x397);
    u32 speed;
    u32 timer;
    s32 position;

    switch (index) {
    case 0:
        index = B(0x38D);
        if (index == *(u8 *)0x1F8002A8) {
            func_8004B0F0(actor, B(0x3AA), 66, 2);
        } else if (index == *(u8 *)0x1F8002A9) {
            D_1F8002A9 = 0;
        }
        if (H(0x38E) == 1 || W(0x3A0) == 0) {
            B(0x3D0) = 6;
            B(0x397) = 2;
            break;
        }
        if (W(0x3A0) >= 49) {
            B(0x3D0) = 16;
        } else {
            B(0x3D0) = 12;
        }
        func_80054A1C(actor);
        func_8005BA78(actor, 2, B(0x390));
        B(0x397)++;
        /* Fall through to update the new state immediately. */
    case 1:
        func_8005BD1C(actor);
        W(0x3A0) += 48;
        if (W(0x3A0) >= 45) {
            W(0x3A0) = 44;
        }
        timer = B(0x3D0);
        if (timer != 0) {
            position = *(s16 *)(actor + 2);
            if (position < 0) {
                position = -position;
            }
            if (position < 13089) {
                break;
            }
        }
        B(0x3D0) = timer + 6;
        B(0x397)++;
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
        speed = W(0x3A0);
        if (speed < 19) {
            W(0x3A0) = 0;
        } else {
            W(0x3A0) = speed - 18;
        }
        if (W(0x3A0) != 0) {
            func_8005BA78(actor, 38, B(0x390));
        } else if (H(0x38E) != 1) {
            func_8005BA30(actor, 1, 0);
        }
        break;
    }
    }
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
    goto move;
mark:
    B(0x3D1) = 1;
move:
    func_8005B864((RecordView *)actor, H(0x3A0));
    func_800498AC(actor);
}
