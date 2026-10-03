#include "common.h"

extern u8 D_80108667;
extern u8 D_801D1F64[];
extern u8 D_801D1F74[];

u8 func_801A4908(u8 index) {
    u8 value;

    if (D_80108667 & 15) {
        value = D_801D1F74[index];
    } else {
        value = D_801D1F64[index];
    }
    return value;
}
