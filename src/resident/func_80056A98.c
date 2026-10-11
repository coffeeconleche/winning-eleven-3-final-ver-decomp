#include "common.h"

/* Opaque record/scratch views and helper result word; complete layout, APIs,
 * global meanings and original return contract remain provisional. The
 * helper result compares unsigned; the byte counter is reread after callback. */
extern u8 D_8010A392;
extern u8 D_8010A39E;
extern u8 D_800FF748[];
extern u8 D_1F80029A __asm__("0x1F80029A");
extern s32 func_8001E6B8(s32);
extern u32 func_800494C0(u8 *);
extern void func_800AB620(s32);

void func_80056A98(u8 *record)
{
    u8 *base = D_800FF748;
    if (D_8010A392 != 0 || D_1F80029A != 1 ||
        func_8001E6B8(3) != 0 || func_800494C0(record) > 0x190000U) {
        base[0xAC4F] = 255;
    } else {
        func_800AB620((D_8010A39E & 1) + 0xD89);
        D_8010A39E++;
    }
}
