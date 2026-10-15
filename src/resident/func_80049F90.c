#include "common.h"

extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);
extern void func_80048D94(u8 *, u32, u32, u32);

/* Offset casts describe partial access views, not a complete native layout. */
void func_80049F90(u8 *record)
{
    u8 *other = *(u8 **)0x1F8002F4;
    u32 direction = func_8005B36C(*(s16 *)(record + 2), *(s16 *)(record + 6),
                                *(s16 *)(other + 2), *(s16 *)(other + 6));

    switch (*(u16 *)(record + 0x38E)) {
    default:
        func_8005BA30(record, 1, 0);
        /* Continue through the same angle and word update as status 1. */
    case 1:
        record[0x3AA] = func_8005B7CC((u8)direction, record[0x3AA], 8);
        if (*(u32 *)(record + 0x3A0) < 19U) {
            *(u32 *)(record + 0x3A0) = 0;
        } else {
            *(u32 *)(record + 0x3A0) -= 18;
        }
        break;
    case 2: case 4: case 27: case 38: case 89:
        func_80048D94(record, record[0x3A4], (u8)direction, 255);
        break;
    }
}
