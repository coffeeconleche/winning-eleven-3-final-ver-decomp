#include "common.h"

extern u8 D_80108667;
extern u8 D_801D1F64[];
extern u8 D_801D1F74[];

u8 func_801A4948(u8 value) {
    s32 i;

    /* The original assumes a match exists; neither search has a bound. */
    if ((D_80108667 & 15) == 0) {
        i = 0;
        while (D_801D1F64[i] != value) {
            i++;
        }
    } else {
        i = 0;
        while (D_801D1F74[i] != value) {
            i++;
        }
    }
    return i;
}
