#include "common.h"

typedef struct {
    u8 byte0, byte1, byte2, byte3;
    s16 half4, half6;
    u8 byte8, byte9;
} RecordADF5C;

extern RecordADF5C D_801DA348[];
extern s32 func_8001E6B8(s32);

void func_801ADF5C(u8 index) {
    RecordADF5C *record = &D_801DA348[index];

    /* Retain all eight calls and their interleaved byte/halfword stores.
     * This local ten-byte access view does not assert gameplay field meanings. */
    record->byte0 = (func_8001E6B8(0x10C) & 7) << 4;
    record->half4 = func_8001E6B8(0x100) - 0x80;
    record->half6 = -140 - func_8001E6B8(16);
    record->byte8 = func_8001E6B8(8) - 4;
    record->byte9 = func_8001E6B8(2) + 1;
    record->byte1 = func_8001E6B8(0x80) + 0x40;
    record->byte2 = func_8001E6B8(0x80) + 0x40;
    record->byte3 = func_8001E6B8(0x80) + 0x40;
}
