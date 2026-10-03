#include "common.h"

extern u8 D_80108AED[];

s32 func_801AF110(const u8 *first, const u8 *second) {
    /* Callers supply two-byte descriptors. Keep these unsigned-byte table
     * accesses without assigning unverified meanings to the descriptor fields. */
    u8 firstValue = D_80108AED[first[0] * 132 + first[1] * 6];
    u8 secondValue = D_80108AED[second[0] * 132 + second[1] * 6];
    s32 result;

    if (firstValue < secondValue) {
        result = -1;
    } else {
        result = secondValue < firstValue;
    }
    return result;
}
