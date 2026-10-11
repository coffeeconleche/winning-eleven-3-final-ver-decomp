#include "common.h"

/* Pointer access view only. Unused members provide evidenced offsets;
 * complete record ownership/layout and original return API are unknown. */
typedef struct {
    u32 word0, word4, word8, word12;
    u16 half16, half18, half20, half22;
    u32 word24, word28, word32;
} FieldView800B49E8;

void func_800B49E8(FieldView800B49E8 *record)
{
    record->half20 = 0;
    record->half18 = 0;
    record->half16 = 0;
    record->word8 = 0x1000;
    record->word4 = 0x1000;
    record->word0 = 0x1000;
    record->word32 = 0;
    record->word28 = 0;
    record->word24 = 0;
}
