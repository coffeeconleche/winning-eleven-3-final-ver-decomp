#include "common.h"

/* Partial measured record view; complete layout, original APIs and return
 * contract remain provisional. Helper words and additions use word wrapping
 * before halfword narrowing. Signed remainder input is bounded by 193..448. */
typedef struct {
    u8 before2[2];
    u16 half2;
    u8 between4[2];
    u16 half6;
    u32 word8;
    u8 betweenC[4];
    u32 word10;
    u8 between14[0x12];
    u16 half26;
    u8 between28[0x37C];
    u8 copied3A4;
    u8 between3A5[5];
    u8 phase3AA;
} RecordView;
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);

void func_8005B864(RecordView *record, u16 scale)
{
    s32 phase;
    record->word8 = (u32)func_8001E694(record->phase3AA, scale);
    record->word10 = (u32)func_8001E5A4(record->phase3AA, scale);
    phase = record->phase3AA;
    phase = 0x1C0 - phase;
    record->half26 = (u16)((phase % 256) << 4);
    record->copied3A4 = record->phase3AA;
    record->half2 = (u16)(record->half2 + record->word8);
    record->half6 = (u16)(record->half6 + record->word10);
}
