#include "common.h"

extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005B7CC(u32, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern s32 func_80094EEC(u8 *, u32);
extern void func_80094FF4(u8 *);
extern void func_8005778C(void *);
extern void func_800954E8(u8 *);

/* Partial aligned PS1 object views and mapped scratch with 32-bit pointers.
 * Helpers may change aliased storage; reload scratch2F4 after 94FF4 and retain
 * the final scratch-flag rereads after all state-specific helper calls.
 * Movement additions use defined unsigned word wrapping before u16 stores. */
void func_8008EAAC(u8 *object)
{
    u8 initialHeading;
    u8 activeHeading;
    s32 initialDifference;
    s32 activeDifference;
    s32 frame;
    u8 *scratch;

    scratch = (u8 *)0x1F800000;
    switch (object[0x397]) {
    case 0:
        func_8005BA30(object, 0x5F, 0);
        initialHeading = func_8005B7CC(object[0x3AB], object[0x3AA], 0x40);
        initialDifference = 0x1C0 - initialHeading;
        object[0x3AA] = initialHeading;
        *(u16 *)(object + 0x26) = (u16)((initialDifference % 256) * 16);
        object[0x3D1] = 0;
        object[0x3AC] = 0;
        *(u16 *)(object + 2) = (u16)((u32)*(u16 *)(object + 2) + *(u32 *)(object + 8));
        *(u16 *)(object + 6) = (u16)((u32)*(u16 *)(object + 6) + *(u32 *)(object + 0x10));
        object[0x397]++;
        break;
    case 1:
        func_8005BD1C(object);
        /* Frames 1..5 move; 6 checks then moves; 19 changes state. */
        frame = object[0x390];
        if (frame == 6) {
            goto check;
        }
        if (frame < 7) {
            if (frame == 0) {
                break;
            }
            goto move;
        }
        if (frame == 19) {
            goto change;
        }
        break;
check:
        if (func_80094EEC(object, 0x100) != 0) {
            func_80094FF4(object);
            (*(u8 **)(scratch + 0x2F4))[0x3B1] = 3;
            func_8005778C(object);
        }
move:
        activeHeading = func_8005B7CC(object[0x3AB], object[0x3AA], 0xC);
        activeDifference = 0x1C0 - activeHeading;
        object[0x3AA] = activeHeading;
        *(u16 *)(object + 0x26) = (u16)((activeDifference % 256) * 16);
        *(u16 *)(object + 2) = (u16)((u32)*(u16 *)(object + 2) + *(u32 *)(object + 8));
        *(u16 *)(object + 6) = (u16)((u32)*(u16 *)(object + 6) + *(u32 *)(object + 0x10));
        break;
change:
        if (object[0x38D] == scratch[0x2A8]) {
            object[0x396] = 0x81;
        } else {
            object[0x396] = 0x82;
        }
        object[0x397] = 0;
        break;
    }
    if (scratch[0x2A9] != 0 && (scratch + object[0x398])[0x2CF] == 1) {
        object[0x396] = 0x82;
        object[0x397] = 0;
    }
    func_800954E8(object);
}
