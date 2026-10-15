#include "common.h"

extern u8 D_800C6BDC[];
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern void func_8005B864(u8 *, u16);

/* Partial record/table views; complete layout and valid indices are unknown.
 * Halfword subtraction and byte increment narrow modulo their storage widths.
 * The explicit idle case preserves the measured three-case switch dispatch. */
void func_80026A64(u8 *record)
{
    *(u16 *)(record + 0x3AE) -= 2;
    switch (record[0x397]) {
    case 0:
        if (*(u16 *)(record + 0x38E) != 33) {
            func_8005BA30(record, 33, 0);
        }
        *(u32 *)(record + 0x3A0) = 0;
        record[0x397]++;
        break;
    case 1:
        func_8005BD1C(record);
        *(u32 *)(record + 0x3A0) = D_800C6BDC[record[0x390]];
        if (record[0x390] == 19) {
            func_8005BA30(record, 1, 0);
            record[0x396] = 0;
            record[0x397] = 0;
        }
        break;
    case 2:
        break;
    }
    record[0x39C] = 1;
    record[0x3D1] = 0;
    func_8005B864(record, *(u16 *)(record + 0x3A0));
}
