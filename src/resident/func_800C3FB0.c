#include "common.h"

extern u32 D_800D55C0;

/* Full-word comparison; the original SDK flag/API name is unknown. */
s32 func_800C3FB0(void) {
    return D_800D55C0 != 1;
}
