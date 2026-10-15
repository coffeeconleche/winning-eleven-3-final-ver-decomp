#include "types.h"

/* Partial record and consumed-argument views; native contracts are provisional. */
extern void func_8005BA30(u8 *record, u32 selector, u32 index);
extern u32 func_8005BD1C(u8 *record);
extern void func_800954E8(u8 *record);

void func_8008A65C(u8 *record)
{
    switch (record[0x397]) {
    case 0:
        record[0x3D1] = 0;
        func_8005BA30(record, 0x5C, 0);
        record[0x397]++;
        break;
    case 1:
        func_8005BD1C(record);
        if (record[0x390] == 0) {
            func_8005BA30(record, 0x67, 0x15);
            record[0x397]++;
        }
        break;
    case 2:
        func_8005BD1C(record);
        if (record[0x390] == 0x23) {
            func_8005BA30(record, 0x5D, 4);
            record[0x396] = 0x85;
            record[0x397] = 0;
        }
        break;
    }
    func_800954E8(record);
}
