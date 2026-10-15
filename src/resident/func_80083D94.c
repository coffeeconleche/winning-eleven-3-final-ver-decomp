#include "types.h"

/* The fixed address below is the existing D_8010A400 byte, not new storage. */
extern u8 D_8010A400;
extern s32 abs(s32 value);

s32 func_80083D94(u8 first, u8 second)
{
    s32 result;
    s32 mode = D_8010A400;

    if (mode != 6) {
        if (mode < 7) {
            if (mode == 5) {
                goto compare_three;
            }
            goto parity_mode;
        }
        if (mode != 7) {
            if (mode == 8) {
                if (second > first) {
                    return 1;
                }
            } else {
                goto reload_mode;
            }
        }
        if (abs(first - second) >= 2) {
            return 1;
        }
    }
    if (second - first >= 2) {
        return 1;
    }
compare_three:
    return abs(first - second) >= 3;

reload_mode:
    /* Retain the observed high-default reread through its fixed-address view. */
    mode = *(u8 *)0x8010A400;
parity_mode:
    if (mode < 5U) {
        return 0;
    }
    result = 0;
    switch (mode & 1) {
    case 1:
        result = first != second;
        break;
    }
    return result;
}
