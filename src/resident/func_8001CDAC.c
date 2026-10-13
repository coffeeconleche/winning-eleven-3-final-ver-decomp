#include "common.h"

/* Field access view of a 40-byte record, not a recovered complete type. */
typedef struct {
    u32 word00;
    u8 byte04;
    u8 untouched05;
    u16 half06;
    u32 word08;
    u32 word0C;
    u16 half10;
    u16 half12;
    u8 byte14;
    u8 byte15;
    u8 byte16;
    u8 byte17;
    u8 byte18;
    u8 untouched19;
    u16 half1A;
    u16 half1C;
    u16 half1E;
    u16 half20;
    u16 untouched22;
    u32 word24;
} Resident1CDACView;

extern Resident1CDACView D_80105508[];
extern u32 func_8001D004(u16);

/* Measured narrow argument views. Historical types, record meanings and
 * complete helper/return APIs remain provisional. The helper's word result
 * survives in v0 through this void-view constructor and some caller epilogues. */
void func_8001CDAC(u8 selector, u16 key, u32 word08, u16 half10,
                   u16 half12, u8 byte14, u8 byte15, u16 half1E,
                   u16 half20, u16 half1A, u16 half1C, u8 byte16,
                   u8 byte17, u8 byte18, u32 word24, u16 byte04)
{
    Resident1CDACView *record = &D_80105508[selector];

    record->half06 = 4;
    record->byte04 = byte04;
    record->word0C = func_8001D004(key);
    record->word08 = word08;
    record->half10 = half10;
    record->half12 = half12;
    record->byte14 = byte14;
    record->byte15 = byte15;
    record->word00 = 0;
    record->half1E = half1E;
    record->half20 = half20;
    record->half1A = half1A;
    record->half1C = half1C;
    record->byte16 = byte16;
    record->byte17 = byte17;
    record->byte18 = byte18;
    record->word24 = word24;
}
