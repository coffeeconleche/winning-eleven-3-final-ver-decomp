#include "common.h"

/* Partial record access view; field meanings and helper API are provisional. */
typedef struct {
    u16 unknown0;
    s16 value2;
    u8 unknown4[0x396 - 4];
    u8 value396;
    u8 value397;
    u8 unknown398;
    u8 mode399;
} Resident363B8View;

extern s32 func_8001E6B8(s32);

/* The original return contract is unknown. */
void func_800363B8(Resident363B8View *record)
{
    if (func_8001E6B8(3) == 0) {
        u32 mode = record->mode399;
        s32 value = record->value2;

        if (mode != 0) {
            if (-value < 0x23E2) {
                goto small;
            }
            goto large;
        } else {
            if (value >= 0x23E2) {
                goto large;
            }
        }
    }
small:
    record->value396 = 0x10;
    record->value397 = 0;
    return;

large:
    record->value396 = 0x14;
    record->value397 = 0x10;
}
