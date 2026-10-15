#include "types.h"

extern u32 func_8005B36C(s32, s32, s32, s32);
extern s32 func_8005CE30(u32 selector);
extern u8 D_800FF748[];
extern u8 D_8010C1D8[];

void func_8006682C(u8 *record_arg)
{
    u8 *record = record_arg;
    u8 *state = D_8010C1D8;
    register u8 *coordinate __asm__("s0") = D_800FF748;
    s32 target_x = -0x3320;
    s32 target_z;
    s32 x = *(s16 *)(record + 2);
    s32 z = *(s16 *)(record + 6);
    s32 index;
    register s32 count __asm__("s4");
    u32 reference;

    if (record[0x399] == 0) target_x = 0x3320;
    target_z = 0x200;
    if (z < 0) target_z = -0x200;
    index = 0;
    reference = func_8005B36C(x, z, target_x, target_z);
    {
        u8 *row = coordinate +
            ((((u32)func_8005CE30(record[0x38D]) & 0xFF) % 24) & 0xFF) * 1000;
        coordinate = row + 6;
    }
    count = 0;
    do {
        u32 angle = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                *(s16 *)(coordinate - 4), *(s16 *)coordinate);
        if (((angle - reference) & 0xFF) >= 0x81) {
            angle = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                *(s16 *)(coordinate - 4), *(s16 *)coordinate);
            if ((s32)((reference - angle) & 0xFF) >= 0x18) {
                index++;
                goto advance;
            }
            goto increment;
        } else {
            angle = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                *(s16 *)(coordinate - 4), *(s16 *)coordinate);
            if ((s32)((angle - reference) & 0xFF) < 0x18) goto increment;
            goto next;
        }
increment:
        count++;
next:
        index++;
advance:
        coordinate += 1000;
    } while ((u32)(index & 0xFF) < 11);
    {
        register s32 total __asm__("v1") = count & 0xFF;
        switch (total) {
        case 0: state[0] = 2; break;
        case 1: state[0] = 1; break;
        default: state[0] = 0; break;
        }
    }
}
