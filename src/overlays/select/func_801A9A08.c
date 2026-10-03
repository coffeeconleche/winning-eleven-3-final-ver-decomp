#include "common.h"

extern u8 D_8010A2E8, D_8010A2E9, D_8010A2C8[], D_8010866C[];
extern u8 D_8010865D;

s32 func_801A9A08(void) {
    u8 first = D_8010A2E8;
    u8 second = D_8010A2E9;
    u32 left = (u8)first, right = (u8)second;
    s32 flags = ((D_8010866C[D_8010A2C8[left] * 36] & 0xC0) << 8) |
                 (D_8010866C[D_8010A2C8[right] * 36] & 0xC0);
    u8 oldDD, oldDE, flag;
    s32 success;
    /* Retain 24 otherwise-unused bytes in the measured 32-byte frame.
     * The original local purpose is unknown; this adds no memory accesses. */
    u8 frameSlot[24];

    switch (flags) {
    case 0:
        *(u8 *)0x1F8002E2 = 1;
        if (right < left) {
            success = 1;
            oldDD = *(u8 *)0x1F8002DD;
            oldDE = *(u8 *)0x1F8002DE;
            flag = D_8010865D;
            D_8010A2E8 = second;
            D_8010A2E9 = first;
            flag ^= 1;
            goto swapped;
        }
        return 0;
    case 0x40:
        *(u8 *)0x1F8002E2 = 0;
        return 0;
    case 0x4000:
        oldDD = *(u8 *)0x1F8002DD;
        oldDE = *(u8 *)0x1F8002DE;
        flag = D_8010865D;
        /* Empty inputs preserve the captured-byte register lifetimes and
         * load/status setup order without emitting any instructions. */
        asm("" : : "r"(oldDD), "r"(oldDE), "r"(flag));
        success = 1;
        D_8010A2E8 = second;
        D_8010A2E9 = first;
        *(u8 *)0x1F8002E2 = 0;
        flag ^= 1;
swapped:
        *(u8 *)0x1F8002DD = oldDE;
        *(u8 *)0x1F8002DE = oldDD;
        D_8010865D = flag;
        return success;
    case 0x4040:
        *(u8 *)0x1F8002E2 = 4;
        return 0;
    }
    /* The original prototype is unknown and six observed callers discard
     * the result. Unsupported flags leave v0=0x4040 in the retail binary;
     * this fallthrough is not a portable C return contract for a native port. */
}
