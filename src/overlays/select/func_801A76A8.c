#include "common.h"

extern u8 D_801D81B9, D_801D81BA, D_801D81BB, D_801D81BC;
extern u8 D_801D81C2, D_801D81C8;

/* Byte access views; the original record type and coordinate meaning are unknown. */
u8 *func_801A76A8(s32 value) {
    u8 *result;
    if (value >= 0) {
        u32 captured = D_801D81C8;
        D_801D81BB = 0;
        D_801D81B9 = -128 - value;
        D_801D81BA = 80 - value;
        D_801D81BC = (u8)(captured % 3U) * 80;
    } else {
        u32 captured = D_801D81C8;
        D_801D81B9 = value - 128;
        D_801D81BA = value + 80;
        D_801D81BB = -value;
        D_801D81BC = (u8)(captured % 3U) * 80 - value;
    }
    result = &D_801D81C2;
    *result = D_801D81C8 + 244;
    return result - 10;
}
