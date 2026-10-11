#include "common.h"

/* Partial access views only; pointer ownership and complete layouts are unknown. */
typedef struct {
    u8 unknown[8];
    u16 half8;
} Resident6F4A8PointedView;

typedef struct {
    u8 unknown[12];
    Resident6F4A8PointedView *pointerC;
    u8 unknown10[2];
    u16 half12;
    u8 unknown14[8];
    u16 half1C;
    s16 half1E;
    s16 half20;
    u8 unknown22[2];
    u32 word24;
} Resident6F4A8View;

extern u8 D_80105508[];

/* The 40-byte selector stride is an access view, not a recovered table extent.
 * Preserve signed comparisons, word arithmetic with narrowed halfword stores,
 * and the real second pointed-half read after the possible first store. */
s32 func_8006F4A8(u32 selector, u32 value)
{
    Resident6F4A8View *record = (Resident6F4A8View *)(D_80105508 + (u8)selector * 40);
    Resident6F4A8PointedView *pointed = record->pointerC;

    if (record->half1E != 0x1000 || record->half20 != record->half1E || record->word24 != 0) {
        record->half1C = record->half1C + pointed->half8 - value;
    }
    record->half12 = value - pointed->half8;
    return 1;
}
