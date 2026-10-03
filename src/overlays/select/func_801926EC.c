#include "common.h"

extern s32 func_800C5E4C(u32);

void func_801926EC(u32 channel) {
    /* Retry the entire call indefinitely; any nonzero result ends the wait. */
    while (func_800C5E4C(channel << 4) == 0) {
    }
}
