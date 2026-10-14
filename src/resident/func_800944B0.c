#include "common.h"

extern u8 D_800FF748[];
extern s32 func_8009568C(void);
extern s32 func_80067E34(s16 *record);

/* Partial byte/scratch views only; complete layouts, state meanings and original
 * helper APIs remain unknown. Both direct sites in the audited caller store the
 * low halfword at record[0x3BE]; indirect users are unaudited. Every target path
 * returns a full word 0 or 1. Keep the helper tests distinct: low byte first,
 * full word second, with neither call declared pure nor replaced by its body. */
s32 func_800944B0(u8 *record)
{
    u8 *records = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 state;
    u8 held;

    if (*(u8 *)0x1F8002E1 == 5) {
        goto no;
    }
    if ((u8)func_8009568C() != 0) {
        return 1;
    }
    if (func_80067E34((s16 *)record) == 0) {
        goto no;
    }

    state = *(u32 *)0x1F8002B0;
    if (state == 8 || state == 10) {
        goto yes;
    }
    if (state == 11) {
        if (record[0x38D] != *(u8 *)0x1F8002AC) {
            return 1;
        }
    }

    held = scratch[0x2A9];
    if (held != 0) {
        if ((scratch + record[0x398])[0x2CF] != 0) {
            return 1;
        }
        if (held != record[0x38D]) {
            goto no;
        }
    }

    goto lookup;
no:
    return 0;
yes:
    return 1;
lookup:
    {
        u32 index;
        /* The actual remainder-scaled byte offset is captured in v0. This sole
         * measured binding preserves allocation; it adds no instructions,
         * accesses, storage or frame object. The 32-byte frame is natural. */
        register u32 offset __asm__("$2");
        u8 *selected;
        /* Read fresh 2AA before fresh 38D, then only the selected alternative.
         * The same unsigned byte remainder in each arm preserves the original
         * common conversion/arithmetic join. No selector-domain guard is added. */
        if (scratch[0x2AA] == record[0x38D]) {
            index = (u8)((u32)scratch[0x2AB] % 24U);
        } else {
            index = (u8)((u32)scratch[0x2AC] % 24U);
        }
        offset = 1000 * index;
        selected = records + offset;
        /* Capture the original byte first, then the selected resident byte. */
        return record[0x399] != selected[0x399];
    }
}
