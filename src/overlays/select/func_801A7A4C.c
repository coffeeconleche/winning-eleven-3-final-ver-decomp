#include "common.h"

extern void func_801A7A8C(u8, u8);

void func_801A7A4C(void) {
    s32 i;

    for (i = 0; i < 11; i++) {
        func_801A7A8C(i, 0);
    }
}
