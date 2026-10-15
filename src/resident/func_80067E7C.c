#include "types.h"

extern s32 func_8005CE14(u32 selector);
extern u8 D_800FFB30[];

s32 func_80067E7C(u8 *record_arg)
{
    u8 *record = record_arg;
    u32 selector;
    u32 side;
    u8 *coordinate;
    s32 index;
    u32 first;
    u32 one;
    selector = record[0x38D];
    __asm__("" : "=r"(selector) : "0"(selector));
    side = record[0x399];
    __asm__("" : "=r"(side) : "0"(side));
    side &= 0xFF;
    first = func_8005CE14(selector);
    index = 0;
    one = 1;
    coordinate = D_800FFB30 + 2 + (first & 0xFF) * 1000;

    record += 2;
    do {
        if (record != coordinate) {
            s32 x = *(s16 *)coordinate;
            register s32 ax __asm__("v0") = x;
            if (x < 0) {
                ax = -ax;
            }
            if (ax >= 0x23E2) {
                s32 az = *(s16 *)(coordinate + 4);
                if (az < 0) az = -az;
                if (az < 0x11F4) {
                    if (side == 0 && x > 0) return 1;
                    if (side == one && *(s16 *)coordinate < 0) return 1;
                }
            }
        }
        index++;
        coordinate += 1000;
    } while ((u32)(index & 0xFF) < 10);
    return 0;
}
