#include "common.h"

/* Classify the record state byte at +0x391; partial view of a 1000-byte record. */
s32 func_8009FD84(u8 *record) {
    switch (record[0x391]) {
    case 1:
    case 3:
    case 6:
    case 10:
    case 11:
    case 14:
    case 17:
    case 19:
        return 1;
    default:
        return 0;
    }
}
