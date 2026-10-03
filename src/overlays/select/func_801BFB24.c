#include "common.h"

extern s16 D_801DA5D0;
extern s16 D_80105810;
extern s16 D_801058B0;

void func_801BFB24(void) {
    s32 value;

    value = -D_801DA5D0;
    value *= 20;
    D_80105810 = value;
    D_801058B0 = value;
}
