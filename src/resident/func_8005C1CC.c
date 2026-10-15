#include "common.h"

/* Partial views of existing pointer tables, point records and scratch memory.
 * Complete extents, alignment/alias contracts and the historical API remain
 * unknown. Pointer-to-word arithmetic and absolute scratch addresses require
 * native adaptation. The helper reads matrix/input memory and writes three
 * result words. Coordinate additions wrap and narrow to halfwords. */

#define U16_AT(p, o) (*(u16 *)((u8 *)(p) + (o)))
#define S16_AT(p, o) (*(s16 *)((u8 *)(p) + (o)))
#define U32_AT(p, o) (*(u32 *)((u8 *)(p) + (o)))

extern u32 *D_8014A000[];
extern s32 *func_800B12C8(u8 *matrix, u16 *input, s32 *output);

void func_8005C1CC(u8 *record, u32 index)
{
    u8 narrowed_index = (u8)index;
    u32 address;
    u8 *point;
    s32 x;
    register s32 mirrored __asm__("$2");
    u8 *scratch;

    address = (u32)D_8014A000[U16_AT(record, 0x38E)];
    address += record[0x390] * 4;
    point = (u8 *)*(u32 *)address;
    {
        u32 offset = narrowed_index * 12;
        point += offset;
    }
    x = S16_AT(point, 6);
    scratch = (u8 *)0x1F800000;

    if (record[0x3AC] != 0) {
        mirrored = -x;
    } else {
        mirrored = x;
    }

    U16_AT(scratch, 0x12C) = mirrored;
    U16_AT(scratch, 0x12E) = U16_AT(point, 8);
    U16_AT(scratch, 0x130) = U16_AT(point, 10);
    func_800B12C8(record + 0x40, (u16 *)((u32)scratch | 0x12C), (s32 *)((u32)scratch | 0x13C));
    U16_AT(scratch, 0xF0) = U16_AT(record, 2) + U32_AT(scratch, 0x13C);
    U16_AT(scratch, 0xF2) = U16_AT(record, 4) + U32_AT(scratch, 0x140);
    U16_AT(scratch, 0xF4) = U16_AT(record, 6) + U32_AT(scratch, 0x144);
}
