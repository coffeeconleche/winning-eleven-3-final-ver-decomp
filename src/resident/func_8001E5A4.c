#include "common.h"

/* Existing resident data views; the second base plus phases 129..191
 * addresses the same quarter-wave entries as the first base. Native ports
 * should translate those physical addresses into one properly bounded table. */
extern s16 D_800C6A58[];
extern s16 D_800C6958[];

/* Measured two-word phase/scale API; historical formal types are unknown.
 * Products and negation retain the low 32 bits before an arithmetic shift.
 * Signed conversion and right shift follow the matching MIPS compiler. */
s32 func_8001E5A4(u32 phase, s32 scale)
{
    u32 angle;
    u32 byteOffset;
    u32 product;

    switch ((u8)phase) {
    case 0:
        return 0;
    case 0x80:
        return 0;
    case 0x40:
        return scale;
    case 0xC0:
        return (s32)(0U - (u32)scale);
    }
    angle = (u8)phase;
    if (angle < 0x80) {
        if (angle < 0x40) {
            byteOffset = angle * 2;
        } else {
            byteOffset = (0x80 - angle) * 2;
        }
        product = (u32)((long long)*(s16 *)((u8 *)D_800C6A58 + byteOffset) * scale);
        return (s32)product >> 12;
    }
    if (angle >= 0xC0) {
        product = (u32)((long long)D_800C6A58[0x100 - angle] * scale);
    } else {
        product = (u32)((long long)D_800C6958[angle] * scale);
    }
    return (s32)(0U - product) >> 12;
}
