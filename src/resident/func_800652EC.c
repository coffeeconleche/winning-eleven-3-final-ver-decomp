#include "types.h"

extern s32 func_8005CE30(u32 selector);
extern u8 D_800FFB30[];

s32 func_800652EC(u8 *record, u32 threshold)
{
    u8 *row = D_800FFB30 + (func_8005CE30(record[0x38D]) & 0xFF) * 1000;
    s32 index = 0;
    s32 count = 0;
    u8 *coordinate = row + 6;

    do {
        if (*row != 0) {
            register s32 dx __asm__("v0") = *(s16 *)(record + 2);
            dx -= *(s16 *)(coordinate - 4);
            if (dx < 0) dx = -dx;
            if ((u32)dx < threshold) {
                register s32 dz __asm__("v0") = *(s16 *)(record + 6);
                dz -= *(s16 *)coordinate;
                if (dz < 0) dz = -dz;
                if ((u32)dz < threshold) count++;
            }
        }
        index++;
        coordinate += 1000;
        row += 1000;
    } while ((u32)(index & 0xFF) < 10);
    return count & 0xFF;
}
