#include "common.h"

extern u8 D_800C6B84[];
extern u8 D_800C6B98[];
extern u8 D_800C6BA8[];
extern u8 D_800C6BB8[];
extern u8 D_800C6BC8[];
extern void func_8005BA30(u8 *, s32, s32);

/* Replay-event dispatcher: routes the event id through the record's type
 * word to pick the sound row, with three event groups taking the direct
 * record lookup and the rest going through the bank tables. */
void func_8005BA78(u8 *record, s32 arg1, s32 arg2)
{
    u32 ev = arg1 & 0xFF;

    switch (ev) {
    case 0x1B:
    case 0x26:
    case 0x34:
        if (*(u16 *)(record + 0x38E) == 0x26 || *(u16 *)(record + 0x38E) == 0x1B || *(u16 *)(record + 0x38E) == 0x34) {
            if (*(u16 *)(record + 0x38E) != (arg1 & 0xFF)) {
                func_8005BA30(record, (u32)(u8)arg1, record[0x390]);
            }
            record[0x3AD] = 0;
        } else if (*(u16 *)(record + 0x38E) == 4 || *(u16 *)(record + 0x38E) == 0x59) {
            func_8005BA30(record, (u32)(u8)arg1, D_800C6BB8[arg2 & 0xFF]);
            record[0x3AD] = 0;
        } else if (*(u16 *)(record + 0x38E) == 2) {
            func_8005BA30(record, (u32)(u8)arg1, D_800C6BC8[arg2 & 0xFF]);
            record[0x3AD] = 0;
        } else if (*(u16 *)(record + 0x38E) != (arg1 & 0xFF)) {
            func_8005BA30(record, (u32)(u8)arg1, 0xF);
        }
        break;
    case 0x4:
        if (*(u16 *)(record + 0x38E) == 0x26 || *(u16 *)(record + 0x38E) == 0x1B || *(u16 *)(record + 0x38E) == 0x34) {
            func_8005BA30(record, 4, D_800C6B98[arg2 & 0xF]);
        } else if (*(u16 *)(record + 0x38E) == 2) {
            func_8005BA30(record, 4, D_800C6B84[(u8)((u32)(arg2 & 0xFF) % 18)]);
        } else if (*(u16 *)(record + 0x38E) != 4) {
            func_8005BA30(record, 4, (u8)((u32)(arg2 & 0xFF) % 14));
        }
        break;
    case 0x2:
        if (*(u16 *)(record + 0x38E) == 4 || *(u16 *)(record + 0x38E) == 0x59) {
            func_8005BA30(record, 2, D_800C6BA8[(u8)((u32)(arg2 & 0xFF) % 18)]);
        } else if (*(u16 *)(record + 0x38E) == 0x26 || *(u16 *)(record + 0x38E) == 0x1B || *(u16 *)(record + 0x38E) == 0x34) {
            func_8005BA30(record, 2, D_800C6BA8[D_800C6B98[record[0x390]]]);
        } else {
            func_8005BA30(record, 2, (u8)((u32)(arg2 & 0xFF) % 18));
        }
        break;
    default:
        if (*(u16 *)(record + 0x38E) != (arg1 & 0xFF)) {
            func_8005BA30(record, (u32)(u8)arg1, arg2 & 0xFF);
        }
        break;
    }
}
