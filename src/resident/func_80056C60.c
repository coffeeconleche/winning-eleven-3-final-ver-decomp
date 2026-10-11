#include "common.h"

/* Partial access view; record domain and ownership remain unknown. */
typedef struct {
    u8 unknown[2];
    s16 half2;
    u8 unknown4[0x395];
    u8 byte399;
} Resident56C60View;

extern u8 D_800FF748[];
extern u8 scratch29A __asm__("0x1F80029A");
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);

/* Preserve both random calls, conditional reads and callback chronology.
 * Numeric offsets/void result-register residue are provisional access APIs. */
void func_80056C60(Resident56C60View *record)
{
    u8 *base = D_800FF748;
    s32 half;

    if (func_8001E6B8(3) != 0)
        goto done;
    if (scratch29A != 1)
        goto done;
    half = record->half2;
    if (record->byte399 != 0) {
        if (half <= 0)
            goto check;
        goto done;
    }
    if (half < 0)
        goto done;
check:
    if (base[0xAC4A] != 0)
        goto done;
    func_800AB620(16);
    func_800AB620(func_8001E6B8(3) + 0xCD0);
done:
    ;
}
