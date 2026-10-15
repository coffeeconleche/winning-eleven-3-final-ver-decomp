#include "common.h"

/* Same no-storage partial member layout as the existing 4840C definition. */
typedef struct {
    u8 unknown[2];
    s16 half2;
    u8 unknown4[2];
    s16 half6;
    u8 unknown8[0x38A];
    u8 byte392;
    u8 unknown393[5];
    u8 byte398;
    u8 unknown399[0x1B];
    u8 byte3B4;
} Resident4840CView;

extern u32 func_80045504(u8 *, u32);
extern void func_800479B8(u8 *, u32);
extern void func_8004840C(Resident4840CView *);
extern void func_800498AC(u8 *);
extern void func_80049F90(u8 *);
extern u32 func_80053EB8(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005B908(u8 *);
extern u32 func_8005BD1C(u8 *);

#define B(o) (actor[(o)])
#define H(o) (*(u16 *)(actor + (o)))
#define W(o) (*(u32 *)(actor + (o)))

void func_800264CC(u8 *actor)
{
    u32 one = 1;
    s32 index = B(0x397);
    u32 turn;
    u32 speed;
    u32 limit;
    u8 *other;
    s32 firstCoordinate;

    B(0x3A7) = one;
    switch (index) {
    case 0: {
        u32 phase;
        u16 initialFirst = H(0x3C6);
        u16 initialSecond = H(0x3C8);
        H(2) = initialFirst;
        H(6) = initialSecond;
        if (B(0x390) < B(0x3B0)) {
            func_8005BD1C(actor);
        }
        firstCoordinate = *(s16 *)(actor + 2);
        __asm__("" : "=r"(firstCoordinate) : "0"(firstCoordinate));
        other = *(u8 **)0x1F8002F4;
        phase = func_8005B7CC(func_8005B36C(firstCoordinate,
                       *(s16 *)(actor + 6), *(s16 *)(other + 2),
                       *(s16 *)(other + 6)) & 255, B(0x3AA), 16);
        {
            u16 copiedFirst = H(2);
            u16 copiedSecond = H(6);
            B(0x3AA) = phase;
            B(0x3A4) = phase;
            H(0x3C6) = copiedFirst;
            H(0x3C8) = copiedSecond;
        }
        func_80045504(actor, 6);
        break;
    }
    case 16:
        if (B(0x390) < 8) {
            func_8005BD1C(actor);
        }
        speed = W(0x3A0);
        if (speed < 19) {
            W(0x3A0) = 0;
        } else {
            W(0x3A0) = speed - 18;
        }
        func_80045504(actor, 5);
        break;
    case 32:
        func_8005BD1C(actor);
        firstCoordinate = *(s16 *)(actor + 2);
        __asm__("" : "=r"(firstCoordinate) : "0"(firstCoordinate));
        other = *(u8 **)0x1F8002F4;
        turn = func_8005B36C(firstCoordinate, *(s16 *)(actor + 6),
                           *(s16 *)(other + 2), *(s16 *)(other + 6)) & 255;
        B(0x3AA) = func_8005B7CC(turn, B(0x3AA), 12);
        {
            u32 phase = func_8005B7CC(turn, B(0x3A4), 24);
            u32 step = (B(0x3B3) / 6) & 255;
            B(0x3A4) = phase;
            limit = B(0x3B3);
            W(0x3A0) += step;
            if (limit < W(0x3A0)) {
                W(0x3A0) = limit;
            }
        }
        if (func_80053EB8(actor) & 255) {
            func_80045504(actor, 10);
        } else {
            B(0x396) = one;
            B(0x397) = 0;
        }
        break;
    case 48:
        B(0x3D1) = one;
        func_8005BD1C(actor);
        func_8004840C((Resident4840CView *)actor);
        func_800479B8(actor, 0);
common_transition:
        if ((func_80053EB8(actor) & 255) == 0) {
            goto reset;
        }
        func_80045504(actor, 20);
        goto constrain;
    case 80:
        B(0x3D1) = one;
        func_8005BD1C(actor);
        func_8004840C((Resident4840CView *)actor);
        func_800479B8(actor, 1);
        goto common_transition;
reset:
        B(0x396) = one;
        B(0x397) = 0;
        goto constrain;
    case 64:
        if (*(s16 *)0x1F80031C < 12) {
            B(0x3D1) = 3;
        } else {
            B(0x3D1) = 2;
        }
        func_8005BD1C(actor);
        func_80049F90(actor);
        if (B(0x3D0) == 0) {
            B(0x396) = 27;
            B(0x397) = 0;
            H(0x3C2) = 255;
        }
constrain:
        func_800498AC(actor);
        break;
    }
    func_8005B908(actor);
}
