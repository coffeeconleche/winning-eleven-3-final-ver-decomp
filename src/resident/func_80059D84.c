#include "common.h"

extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);

/* Partial physical scratch offset/width view only: no storage is allocated,
 * and no complete extent or historical API/return declaration is established.
 * The observed record halfword accesses require two-byte alignment. */
typedef struct {
    u8 unknown0[0x2B6];
    u16 distance;
    u8 unknown2B8[2];
    u16 direction;
} ScratchView;

void func_80059D84(u8 *record)
{
    ScratchView *scratch = (ScratchView *)0x1F800000;
    s32 magnitude;
    s32 product;
    s32 event;

    if (func_8001E6B8(3) == 0 || *(u8 *)0x1F80029A != 4) {
        return;
    }
    if (*(s16 *)(record + 0x3C4) == 0 && func_8001E6B8(2) != 0) {
        event = 0xDB6;
    } else {
        magnitude = (s16)scratch->distance;
        if (magnitude < 0) {
            magnitude = -magnitude;
        }
        if (magnitude <= 0x600) {
            return;
        }
        /* Both factors are signed halfwords, so the full product fits s32. */
        product = *(s16 *)(record + 6) * (s16)scratch->direction;
        event = product > 0 ? 0xDB9 : 0xDBA;
    }
    func_800AB620(event);
}
