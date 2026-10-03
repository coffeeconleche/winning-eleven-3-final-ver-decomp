#include "common.h"

extern u8 D_800FF748[];

/* Read a packed nibble from the measured 36-byte record stride. The original
 * record/table meaning and valid argument ranges remain unknown. */
u32 func_801BD2F8(u8 index, u8 field) {
    u8 *base = D_800FF748;
    u8 *record;
    u32 result;
    if (field >= 15) {
        record = base + index * 36;
        record += field;
        result = record[0x8F29] >> 4;
    } else {
        record = base + index * 36;
        record += field;
        result = record[0x8F38] & 15;
    }
    return result;
}
