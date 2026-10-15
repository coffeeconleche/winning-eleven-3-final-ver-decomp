#include "common.h"

extern void func_8005BA30(u8 *object, u32 selector, u32 index);
extern u32 func_8005BD1C(u8 *object);
extern u32 func_8008BD20(u8 *object);
extern void func_800954E8(u8 *object);

/* Partial byte/halfword views only; record extent, table domains, helper
 * contracts and the historical return convention remain provisional. */
void func_8008C204(u8 *object)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 coordinate;
    u32 result;

    if (object[0x397] == 0) {
        func_8005BA30(object, 0x6F, 0);
        object[0x3AC] = 0;
        object[0x3B0] = 0x81;
        object[0x3D1] = 0;
        object[0x397] += 1;
    } else {
        func_8005BD1C(object);
        if (object[0x390] == 0x17) {
            object[0x397] = 0;
            object[0x396] = object[0x3B0];
        }
    }
    if (object[0x39A] == 0) {
        if ((*(u16 *)(object + 0x3D6) &
             *(u16 *)(scratch + object[0x398] * 2 + 0x1A)) != 0) {
            coordinate = *(s16 *)(object + 2);
            if (coordinate < 0) {
                coordinate = -coordinate;
            }
            if (coordinate >= 0x2563) {
                object[0x3B0] = 0x94;
                goto finish;
            }
        }
        if (((*(u16 *)(scratch + object[0x398] * 2 + 0x12) |
               *(u16 *)(scratch + object[0x398] * 2 + 0x16)) &
              *(u16 *)(object + 0x3D6)) != 0) {
            result = (u8)func_8008BD20(object);
            *(u16 *)(object + 0x3C2) = result;
            if (result != 0) {
                object[0x3B0] = 0x92;
            }
        }
    }
finish:
    func_800954E8(object);
    scratch[0x332] = 0;
    object[0x3B1] += 1;
}
