#include "common.h"

/* Byte subtraction deliberately wraps before each contiguous-range test. */
s32 func_8019E3EC(u8 value, u8 mode) {
    switch (mode) {
    case 0:
    case 1:
    default:
        return 1;
    case 2:
        return value < 22;
    case 3:
        return (u8)(value - 22) < 5;
    case 4:
        return (u8)(value - 27) < 8;
    case 5:
        return (u8)(value - 35) < 5;
    }
}
