#include "common.h"

s32 func_800B652C(s32 value) {
    s32 count = 0;

    while (value > 0) {
        value >>= 1;
        count++;
    }
    return count;
}
