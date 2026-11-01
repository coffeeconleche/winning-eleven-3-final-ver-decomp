#include "common.h"

extern u8 D_800FF748[];
extern void func_80089D00(u8 *object, u32 selection, s32 targetXInput, s32 targetZInput);
extern void func_80055B84(u8 *record, u8 *other);
extern void func_800512B8(u8 *record, u32 selector);
extern void func_80055CD4(u8 *record, u8 *other);

/* Roster-row selection on the packed selector at +0x3C2 followed by
 * replay-state routing; partial record and row views. */
void func_8002F554(u8 *record) {
    u8 *records = D_800FF748;
    s16 sel;
    s16 rem;
    u8 *row;

    sel = *(u16 *)(record + 0x3C2);
    if (sel == 0) {
        return;
    }
    rem = sel % 24;
    row = records + rem * 1000;
    func_80089D00(record, row[0x38D], *(s16 *)(row + 2), *(s16 *)(row + 6));
    if (record[0x39A] != 0 && (row[0x38D] == 1 || row[0x38D] == 12)) {
        func_80055B84(record, row);
        row[0x396] = 10;
        row[0x397] = 0;
        return;
    }
    func_800512B8(row, 1);
    switch (*(s16 *)(record + 0x3C4)) {
    case 0:
    case 3:
        func_80055B84(record, row);
        row[0x396] = 0xB;
        row[0x397] = 0;
        *(s16 *)(row + 0x3CA) = 0;
        return;
    case 2:
        row[0x396] = 0xB;
        row[0x397] = 0;
        *(s16 *)(row + 0x3CA) = 1;
        return;
    case 1:
    case 4:
        func_80055CD4(record, row);
        row[0x396] = 0xB;
        row[0x397] = 0x10;
        return;
    }
}
