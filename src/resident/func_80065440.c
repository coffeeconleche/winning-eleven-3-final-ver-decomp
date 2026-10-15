#include "types.h"

extern s32 func_8005CE30(u32 selector);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u8 D_800FFB30[];

s32 func_80065440(u8 *record, u32 reference_arg, u32 width_arg, u32 limit_arg)
{
    register s32 index __asm__("s4") = 0;
    u32 width = width_arg & 0xFF;
    u32 reference;
    u32 limit;
    u8 *row;
    register u8 *coordinate __asm__("s0");
    limit = limit_arg;
    reference = reference_arg;
    row = D_800FFB30 + (func_8005CE30(record[0x38D]) & 0xFF) * 1000;
    coordinate = row + 6;

    do {
        if (*row != 0) {
            s32 x = *(s16 *)(record + 2);
            s32 other_x = *(s16 *)(coordinate - 4);
            s32 dx = x - other_x;
            s32 z = *(s16 *)(record + 6);
            s32 other_z = *(s16 *)coordinate;
            s32 dz = z - other_z;
            u32 distance = (u32)((long long)dx * dx) + (u32)((long long)dz * dz);
            if (distance < limit) {
                u32 angle = func_8005B36C(x, z, other_x, other_z);
                if (((angle - reference) & 0xFF) >= 0x81) {
                    angle = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                        *(s16 *)(coordinate - 4), *(s16 *)coordinate);
                    if ((s32)((reference - angle) & 0xFF) < (s32)width) return 0;
                    index++;
                    goto advance;
                } else {
                    angle = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                        *(s16 *)(coordinate - 4), *(s16 *)coordinate);
                    if ((s32)((angle - reference) & 0xFF) < (s32)width) return 0;
                }
            }
        }
        index++;
advance:
        coordinate += 1000;
        row += 1000;
    } while ((u32)(index & 0xFF) < 10);
    return 1;
}
