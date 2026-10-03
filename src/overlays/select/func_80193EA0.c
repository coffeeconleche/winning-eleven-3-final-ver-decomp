#include "common.h"

extern u8 *func_8001D004(u16);
extern u8 D_801D7DA0[];

void func_80193EA0(void) {
    s32 i;

    for (i = 0; i < 5; i++) {
        /* Obtain each pointer anew, and write before the following call. */
        func_8001D004(0x5002)[i * 12 + 10] = 0x5B;
        func_8001D004(0x5003)[i * 12 + 10] = 0x5B;
        D_801D7DA0[i] = 0;
    }
}
