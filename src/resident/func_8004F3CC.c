#include "common.h"

extern u8 D_8010A5A8[];

s32 func_8004F3CC(void)
{
    u8 matchLen = D_8010A5A8[0];
    s32 elapsed = *(s32 *)0x1F8002C4;
    u8 halfMode = *(u8 *)0x1F8002DF;
    s32 limit;

    switch (matchLen) {
    case 0:
        limit = (halfMode < 2) ? 0x2328 : 0xBB8;
        return (limit - elapsed) * 18;
    case 1:
        limit = (halfMode < 2) ? 0x4650 : 0x1770;
        return (limit - elapsed) * 9;
    case 2:
        limit = (halfMode < 2) ? 0x6978 : 0x2328;
        return (limit - elapsed) * 6;
    case 3:
        limit = (halfMode < 2) ? 0x8CA0 : 0x2EE0;
        return ((limit - elapsed) * 9) / 2;
    case 4:
        limit = (halfMode < 2) ? 0xAFC8 : 0x3A98;
        return ((limit - elapsed) * 18) / 5;
    case 5:
        limit = (halfMode < 2) ? 0xD2F0 : 0x4650;
        return (limit - elapsed) * 3;
    default:
        return elapsed;
    }
}
