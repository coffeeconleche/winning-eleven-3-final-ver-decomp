#include "common.h"

u8 func_8018E69C(u8 side) {
    s32 result;

    switch (*(u8 *)0x1F8002E2) {
    case 0:
        return side != 0 ? 2 : 0;
    case 1:
        return side != 0;
    case 2:
        result = 3;
        goto side_result;
    case 3:
        result = 4;
side_result:
        if (side != 0) {
            result = 2;
        }
        return result;
    case 4:
        return 2;
    default:
        return 0;
    }
}
