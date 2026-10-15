#include "common.h"

extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern void func_8005BA30(u8 *, u32, u32);

/* Partial aligned PS1 object views and mapped scratch with 32-bit pointers.
 * Signed coordinate differences fit s32, but squared products and their sum
 * intentionally use unsigned low-word wrapping before the signed comparison.
 * B36C uses the common production word API; older narrow extern views need
 * reconciliation for native adaptation. Helpers may change aliased storage. */
void func_8008A9D4(u8 *object)
{
    s32 x;
    s32 y;
    s32 dx;
    s32 dy;
    u32 squared;
    u32 heading;
    u32 current;
    u32 delta;
    u8 *other;

    switch (object[0x397]) {
    case 0:
        if (*(u16 *)(object + 0x38E) != 0x5A) {
            func_8005BA30(object, 0x5A, 0);
        }
        object[0x397]++;
        break;
    case 1:
        func_8005BD1C(object);
        if (*(s16 *)0x1F80031C < 41 - (s32)(object[0x3B9] / 10)) {
            other = *(u8 **)0x1F8002F4;
            if (*(u32 *)(other + 0x3A0) >= 0x3000U) {
                x = *(s16 *)(object + 2);
                dx = x - *(s16 *)(other + 2);
                y = *(s16 *)(object + 6);
                dy = y - *(s16 *)(other + 6);
                squared = (u32)dx * (u32)dx + (u32)dy * (u32)dy;
                if ((s32)squared > 0x18FFF) {
                    heading = func_8005B36C(x, y, *(s16 *)0x1F800036,
                        *(s16 *)0x1F800066);
                    current = object[0x3AA];
                    delta = (heading - current) & 0xFF;
                    if (delta >= 0x81U) {
                        if ((s32)((current - heading) & 0xFF) >= 0x34) {
                            goto change;
                        }
                        break;
                    }
                    if ((s32)delta >= 0x34) {
change:
                        object[0x3AC] = ((heading - object[0x3AA]) & 0xFF) < 0x81U;
                        func_8005BA30(object, 0x6C, 0);
                        object[0x397]++;
                    }
                    break;
                }
            }
        }
        object[0x396] = 0x82;
        object[0x397] = 0;
        break;
    case 2:
        func_8005BD1C(object);
        if (object[0x390] == 0x19) {
            object[0x396] = 0x82;
            object[0x397] = 0;
        }
        break;
    }
}
