#include "types.h"

extern s32 func_8009D444(u8 *);
extern void func_8009FB84(u8 *);
extern void func_8009EF68(u8 *);
extern void func_80069094(u8 *, u32, u32);
extern void func_80068FC0(u8 *, u32, u32);

/* Partial record and existing scratch views. Native helper APIs, complete
 * record bounds and scratch selector/table extents remain provisional. */
void func_8009D81C(u8 *record)
{
    u8 *scratch;
    u32 identifier;
    u8 side;
    u8 classified;

    classified = func_8009D444(record);
    scratch = (u8 *)0x1F800000;
    if (classified == 0) {
        if (*(u8 *)0x1F800008 != record[0x38D]) {
            record[0x3E2] = 0;
            record[0x3E3] = 0;
        }
        /* Clearing bytes may alias other storage: reread the identifier. */
        identifier = record[0x38D];
        if ((u8)(identifier % 22U) == *(s32 *)0x1F800290 % 22) {
            side = record[0x399];
            if ((side == 0 && *(s16 *)(*(u8 **)0x1F8002F4 + 2) > 0) ||
                (side == 1 && *(s16 *)(*(u8 **)0x1F8002F4 + 2) < 0)) {
                func_8009FB84(record);
                /* Helpers can change both scratch coordinates. Widen their
                 * signed halfword values to the established raw-word ABI. */
                func_80069094(record, (s16)*(u16 *)(scratch + 0xF8),
                              (s16)*(u16 *)(scratch + 0xFC));
            } else {
                func_8009EF68(record);
                func_80068FC0(record, (s16)*(u16 *)(scratch + 0xF8),
                              (s16)*(u16 *)(scratch + 0xFC));
            }
            record[0x39C] = 1;
            *(u16 *)(record + 0x3D8) = *(u16 *)(record + 0x3D4);
        } else {
            *(u16 *)(record + 0x3D6) = 0;
            record[0x39C] = 0;
        }
        /* Fresh post-helper/state-store read; output is a byte, not a half. */
        scratch[0x28C] = *(u16 *)(record + 0x3D4) >> 12;
    }
}
