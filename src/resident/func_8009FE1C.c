#include "common.h"

extern u8 D_800FF748[];

/* These byte offsets/strides are partial access views only. No selector
 * domain or complete record/table layout is assumed. */
u32 func_8009FE1C(u8 *record)
{
    u8 *base = D_800FF748;
    u32 found = 0;
    u8 index = 0;
    u8 *source = (u8 *)(0x1F80031E + record[0x399] * 2);

    /* Retain both reads even if the first entry already qualifies. */
    do {
        u8 selected = source[index];
        s32 value;

        selected %= 24;
        record = base + selected * 1000;
        value = record[0x38D];
        if (value >= 17) {
            if (value < 19) found = 1;
            else if (value < 26) {
                if (value >= 21) found = 1;
            }
        }
        index++;
    } while (index < 2);
    return found;
}
