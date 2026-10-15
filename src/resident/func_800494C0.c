#include "common.h"

extern u8 D_800FF748[];

/* Byte offsets are access views; the complete row layout is unknown. */
s32 func_800494C0(u8 *origin)
{
    s32 sideOffset = (origin[0x399] ^ 1) * 2;
    u8 *base = D_800FF748;
    u8 *other = base +
        ((((u8 *)(sideOffset + 0x1F800000))[0x31E] % 24U) & 0xFF) * 1000;
    s32 x;
    s32 z;

    if (other[0x396] == 16) {
        other = base +
            ((((u8 *)(sideOffset + 0x1F800000))[0x31F] % 24U) & 0xFF) * 1000;
    }
    x = *(s16 *)(origin + 2) - *(s16 *)(other + 2);
    z = *(s16 *)(origin + 6) - *(s16 *)(other + 6);
    return (s32)((u32)((long long)x * x) + (u32)((long long)z * z));
}
