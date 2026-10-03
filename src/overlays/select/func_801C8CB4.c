#include "common.h"

extern u8 D_801D8DFD;

/* The caller consumes a byte-sized bucket; original names are unknown. */
u8 func_801C8CB4(void) {
    u32 value = D_801D8DFD;

    if (value < 2) {
        return 0;
    }
    if (value < 4) {
        return 1;
    }
    if (value < 8) {
        return 2;
    }
    if (value < 12) {
        return 3;
    }
    return 4;
}
