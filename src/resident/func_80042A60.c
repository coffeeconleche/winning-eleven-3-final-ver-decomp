#include "common.h"

/* Table extent and record layouts remain unknown; these are partial access
 * views, not recovered game types. The scratch record is read once for the
 * direction test and again for the adjustment, matching the observed loads.
 * 13088 is an observed scale constant whose gameplay meaning is unknown. */
extern u16 D_800C6D70[];

#define REF (*(u8 **)(scratch + 0x2F4))
#define FIELD(o) (*(s16 *)(REF + (o)))

/* The final floor is an unsigned comparison against 0xE0: totals below it are
 * raised, while negative totals wrap and are returned unchanged. */
s32 func_80042A60(u8 *actor)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 value = D_800C6D70[scratch[0x328]] - actor[0x3B9];
    s32 dx = FIELD(2);

    if (actor[0x399] ? dx < 0 : dx > 0) {
        s32 d = FIELD(2);
        value += (d < 0 ? -d : d) * 512 / 13088;
    }

    if (scratch[0x328]) {
        s32 dz = FIELD(6);
        if (dz < 0) {
            dz = -dz;
        }
        if (dz >= 0x8B7) {
            value = 0xE0;
        } else if ((u32)value < 0xE0) {
            value = 0xE0;
        }
    } else if ((u32)value < 0xE0) {
        value = 0xE0;
    }
    return value;
}
