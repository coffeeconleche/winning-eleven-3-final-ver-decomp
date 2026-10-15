#include "common.h"

extern void func_8002A83C(u8 *, u32);
extern void func_8003354C(u8 *);
extern void func_80033888(u8 *);
extern void func_80047F6C(u8 *, u32);
extern s32 func_8005385C(u8 *, u32);
extern s32 func_80053B44(u8 *);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005B908(u8 *);
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);

extern u8 D_800C6C04[];
extern u8 D_800C6C44[];

/* Partial aligned record and PS1 live-memory views. The byte labels do not
 * assert C object extents: the original reads C6C44[7] from C6C4B, and its
 * other byte index may span C6C04..C6D03. Keep callback and field rereads.
 * The empty identity retains the initialized, consumed record pointer. */
void func_800332EC(u8 *record)
{
    s32 state = record[0x397];
    u32 phase;
    u32 value;
    u8 amount;
    u8 flag;
    u8 base;

    record[0x3A7] = 1;
    switch (state) {
    case 0:
        value = record[0x38D];
        record[0x3D1] = 4;
        *(u16 *)(record + 0x3C6) = 0;
        if (value != *(u8 *)0x1F8002A8) {
            func_8005BD1C(record);
            record[0x397] = 1;
        } else {
            goto transition;
        }
        break;
    case 1:
        func_8005BD1C(record);
        func_80047F6C(record, 1);
        if (func_8005385C(record, 4) != 0) {
    transition:
            func_8003354C(record);
        }
        break;
    case 2:
        func_8005BD1C(record);
        value = func_8005B7CC(record[0x3AB], record[0x3AA], 12);
        phase = record[0x390];
        record[0x3AA] = value;
        if (phase == 26 && func_80053B44(record) != 0) {
            func_80033888(record);
            record[0x3AB] = (*(u8 **)0x1F8002F4)[0x3A4];
        }
        phase = record[0x390];
        if (phase >= 27) {
            *(u32 *)(record + 0x3A0) = D_800C6C04[phase];
            __asm__("" : "=r"(record) : "0"(record));
            phase = record[0x390];
        }
        if (phase == 43) {
            func_8005BA30(record, 1, 0);
            record[0x396] = 24;
            record[0x397] = 0;
        }
        break;
    case 3:
        func_8005BD1C(record);
        phase = record[0x390];
        if (phase < 8) {
            amount = D_800C6C44[phase];
            flag = record[0x3AC];
            base = record[0x3AB];
            {
                u8 adjusted;
                if (flag == 0) {
                    adjusted = base + amount;
                } else {
                    adjusted = base - amount;
                }
                phase = record[0x390];
                record[0x3AA] = adjusted;
                if (phase == 7 && func_80053B44(record) != 0) {
                    func_80033888(record);
                }
            }
        } else {
            if (phase == 9) {
                func_8005BA30(record, 84, 16);
            }
            if (record[0x390] == 26) {
                record[0x396] = 24;
                record[0x397] = 0;
            }
            {
                u32 speed = *(u32 *)(record + 0x3A0);
                if (speed < 19) {
                    *(u32 *)(record + 0x3A0) = 0;
                } else {
                    *(u32 *)(record + 0x3A0) = speed - 18;
                }
            }
        }
        break;
    }
    func_8002A83C(record, record[0x3C6]);
    func_8005B908(record);
}
