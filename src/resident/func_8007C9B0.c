#include "common.h"

extern s32 func_8001E6B8(s32);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern u8 D_800FF748[];

/* Partial aligned PS1 object views; existing pool records have 1000-byte
 * stride, selected by scratch byte modulo24. No pool storage is defined.
 * Keep helper calls before field rereads, including the post-BA30 state
 * increment. Signed remainder inputs are bounded193..448; products fit.
 * B36C uses the common word API; its older narrow private prototype needs
 * reconciliation before native use. Pool extent and aliasing are provisional. */
void func_8007C9B0(u8 *object)
{
    u8 *pool;
    u8 *other;
    u32 heading;
    u8 phase16;
    u8 phase33;
    s32 difference16;
    s32 difference33;

    pool = D_800FF748;
    switch (object[0x397]) {
    case 0:
        if (object[0x38D] == *(u8 *)0x1F8002AD) {
            object[0x397] = 0x20;
            break;
        }
        if (func_8001E6B8(3) == 0) {
            func_8005BA30(object, 0x2F, 0);
        } else {
            func_8005BA30(object, 1, 0);
        }
        *(u32 *)(object + 0x3A0) = 0;
        object[0x397] = 0x10;
        break;
    case 16:
        other = pool + (*(u8 *)0x1F8002AD % 24) * 1000;
        heading = func_8005B36C(*(s16 *)(object + 2), *(s16 *)(object + 6),
            *(s16 *)(other + 2), *(s16 *)(other + 6));
        phase16 = func_8005B7CC(heading & 0xFF, object[0x3AA], 0x10);
        difference16 = 0x1C0 - phase16;
        object[0x3AA] = phase16;
        *(u16 *)(object + 0x26) = (u16)((difference16 % 256) * 16);
        break;
    case 32:
        *(u32 *)(object + 0x3A0) = 0;
        object[0x3D3] = 1;
        other = pool + (*(u8 *)0x1F8002AE % 24) * 1000;
        object[0x3AB] = func_8005B36C(*(s16 *)(object + 2), *(s16 *)(object + 6),
            *(s16 *)(other + 2), *(s16 *)(other + 6)) + 0x50;
        func_8005BA30(object, 0x33, 0);
        object[0x397]++;
        break;
    case 33:
        func_8005BD1C(object);
        phase33 = func_8005B7CC(object[0x3AB], object[0x3AA], 0x10);
        difference33 = 0x1C0 - phase33;
        object[0x3AA] = phase33;
        *(u16 *)(object + 0x26) = (u16)((difference33 % 256) * 16);
        if (object[0x390] == 0xF) {
            object[0x397]++;
        }
        break;
    }
}
