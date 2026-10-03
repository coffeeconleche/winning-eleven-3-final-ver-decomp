#include "common.h"

extern u8 D_8010A2E8, D_8010A2E9;
extern u8 D_8010A2C8[], D_8010866C[];

s32 func_801A9B88(void) {
    u8 firstIndex = D_8010A2E8;
    u8 secondIndex = D_8010A2E9;
    s32 bits;
    /* Retain 24 otherwise-unused local bytes in the measured 32-byte frame.
     * Their original source purpose is unknown; no accesses are invented. */
    u8 frameSlot[24];

    bits = ((D_8010866C[D_8010A2C8[firstIndex] * 36] & 0xC0) << 8)
         | (D_8010866C[D_8010A2C8[secondIndex] * 36] & 0xC0);
    switch (bits) {
    case 0:
    case 0x40:
        return 0;
    case 0x4000:
        return 1;
    case 0x4040:
        return 0;
    }
    /* Unsupported combinations have no defined source return in the original. */
}
