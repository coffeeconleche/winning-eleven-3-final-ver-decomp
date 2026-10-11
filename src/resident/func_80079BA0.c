#include "common.h"

extern u32 func_8005B36C(s32, s32, s32, s32);
extern void func_8004A0B0(u8 *, u32);
extern u8 D_800C6C04[];

/* Aligned partial field access and void views; complete record layouts,
 * table domains and historical helper/return declarations are provisional. */
void func_80079BA0(u8 *record)
{
    u32 angle;
    u8 *other;

    if (record[0x390] < 27) {
        other = *(u8 **)0x1F8002F4;
        angle = (u8)func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                 *(s16 *)(other + 2), *(s16 *)(other + 6));
        if (record[0x3AC] == 0) {
            angle += 8;
        } else {
            angle -= 8;
        }
        record[0x3AA] = angle;
    } else {
        func_8004A0B0(record, 4);
    }
    record[0x3A4] = record[0x3AA];
    if (*(s16 *)(record + 0x3C8) == 0) {
        *(u32 *)(record + 0x3A0) = D_800C6C04[record[0x390]];
    }
}
