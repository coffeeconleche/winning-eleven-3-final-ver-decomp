#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8005CE14(u32 value);

/* Byte views retain the existing roster storage and 1000-byte record stride.
 * Parameter/result types describe the consumed word ABI; historical record
 * layout and selector meanings are unknown. A native port must resolve the
 * roster symbol and its complete allocation before using these offsets. */
s32 func_80054C54(u8 *record, s32 selector)
{
    u8 *base = D_800FF748;
    s32 i;

    if (selector == 0xFF) {
        return 0;
    }
    record = base + (u8)((u8)func_8005CE14(record[0x38D]) % 24) * 1000;
    for (i = 0; i < 11; i++, record += 1000) {
        if (record[0] != 0 && record[0x392] == selector) {
            return record[0x38D];
        }
    }
    return 0;
}
