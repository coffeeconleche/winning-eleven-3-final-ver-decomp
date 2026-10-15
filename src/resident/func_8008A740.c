#include "common.h"

/* Partial PS1 object and mapped scratch views, not complete native layouts.
 * Keep helper APIs consistent with production declarations and reload scratch
 * after C7A0. Native ports need mapped scratch, 32-bit pointers, and aligned
 * writable object storage; helpers may mutate aliased object/scratch state. */

extern void func_80094FF4(u8 *);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B7CC(u32, u32, u32);
extern s32 func_8005C7A0(u32);
extern s32 func_8009462C(u8 *, s32, u32, s32, s32);
extern void func_800954E8(u8 *);

void func_8008A740(u8 *object)
{
    u8 heading;
    s32 difference;
    s32 random;
    u8 *scratch;

    scratch = (u8 *)0x1F800000;
    if (object[0x397] == 0) {
        if (object[0x38D] == scratch[0x2A8]) {
            func_80094FF4(object);
        }
        if (*(u16 *)(object + 0x38E) != 0x5D) {
            func_8005BA30(object, 0x5D, 0);
        }
        object[0x397]++;
    } else {
        func_8005BD1C(object);
        if (object[0x38D] == scratch[0x2A8]) {
            heading = func_8005B7CC((object[0x399] << 7) & 0x80,
                object[0x3AA], 4);
            difference = 0x1C0 - (heading & 0xFF);
            object[0x3AA] = heading;
            *(u16 *)(object + 0x26) = (u16)((difference % 256) * 16);
            if (object[0x390] == 0x10) {
                object[0x396] = 0x81;
                object[0x397] = 0;
                return;
            }
        } else if (object[0x390] == 6) {
            object[0x396] = 0x86;
            object[0x397] = 0;
            return;
        }
    }
    random = (s16)func_8005C7A0(3);
    func_8009462C(object, 0xC, ((*(u8 **)(scratch + 0x2F4))[0x3A4] + 0x80) & 0xFF,
        0, random + 2);
    func_800954E8(object);
}
