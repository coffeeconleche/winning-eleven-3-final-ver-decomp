#include "common.h"

/* Classify the record state byte at +0x391; partial view of a 1000-byte record. */
s32 func_8009FD40(u8 *record) {
    switch (record[0x391]) {
    case 2:
    case 4:
    case 7:
    case 9:
    case 12:
    case 15:
    case 18:
    case 20:
        return 1;
    default:
        return 0;
    }
}
