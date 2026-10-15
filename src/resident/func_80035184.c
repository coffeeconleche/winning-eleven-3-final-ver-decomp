#include "common.h"

extern void func_800479B8(u8 *, u32);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern void func_8005B908(u8 *);

/* Aligned partial record/scratchpad access views, not complete layouts.
 * Callback-dependent fields are reread in their original order. */
void func_80035184(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 *other;
    s32 position;
    s16 destination;
    u32 speed;
    u32 direction;

    switch (record[0x397]) {
    case 0:
        destination = -0x3320;
        if (record[0x399] == 0) {
            destination = 0x3320;
        }
        *(s16 *)0x1F8000F8 = destination;
        *(u16 *)0x1F8000FC = *(u16 *)(record + 6);
        func_800479B8(record, 1);
        if ((*(u8 **)0x1F8002F4)[0x396] != 0 && *(s16 *)0x1F8002B8 == 0x7FFF) {
            goto advance;
        }
        position = *(s16 *)(record + 2);
        if (record[0x399] != 0) {
            if (-position >= 0x27F1) {
                goto advance;
            }
        } else if (position >= 0x27F1) {
advance:
            func_8005BA30(record, 1, 0);
            record[0x397]++;
        }
        break;
    case 1:
        other = *(u8 **)0x1F8002F4;
        direction = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                 *(s16 *)(other + 2), *(s16 *)(other + 6));
        direction = func_8005B7CC((u8)direction, record[0x3AA], 16);
        speed = *(u32 *)(record + 0x3A0);
        record[0x3AA] = direction;
        if (speed < 19) {
            *(u32 *)(record + 0x3A0) = 0;
        } else {
            *(u32 *)(record + 0x3A0) = speed - 18;
        }
        if ((s16)*(u16 *)(scratch + 0x2B8) == 0x7FFF &&
            (*(u8 **)(scratch + 0x2F4))[0x396] != 0) {
            record[0x396] = 1;
            record[0x397] = 0;
        }
        break;
    }
    func_8005BD1C(record);
    func_8005B908(record);
}
