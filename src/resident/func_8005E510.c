#include "common.h"

/* Marker halfword publisher gated by scratch flags; partial record view. */
void func_8005E510(u8 *record) {
    u8 *scratch = (u8 *)0x1F800000;
    u8 *row;

    if (*(u8 *)0x1F8002A9 != 0) {
        if (*(u8 *)((u32)scratch + record[0x398] + 0x2CF) == 0) {
            return;
        }
    }
    if (*(u8 *)0x1F80029A != 1) {
        return;
    }
    if (*(u8 *)0x1F8002FC != 0) {
        return;
    }
    switch (record[0x396]) {
    case 22:
        row = scratch + record[0x399] * 2;
        if (record[0x38D] != row[0x31F]) goto tail;
        record[0x396] = 0x17;
        record[0x397] = 0;
        goto tail;
    case 23:
        row = scratch + record[0x399] * 2;
        if (record[0x38D] != row[0x31E]) goto tail;
        record[0x396] = 0x16;
        record[0x397] = 0;
        goto tail;
    case 0:
    case 1:
    case 7:
    case 27:
        row = scratch + record[0x399] * 2;
        if (record[0x38D] != row[0x31E]) goto seventeen;
        record[0x396] = 0x16;
        goto zero;
seventeen:
        record[0x396] = 0x17;
zero:
        record[0x397] = 0;
        goto tail;
    default:
        return;
    }
tail:
    *(u16 *)(record + 0x3D4) = *(u16 *)((u32)scratch + record[0x398] * 2 + 0x26);
}
