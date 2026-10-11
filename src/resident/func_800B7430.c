#include "common.h"

/* Two-word forwarding ABI view; the complete original SDK API is unknown. */
extern u32 func_800B8BA8(u32, u32);

s32 func_800B7430(u32 first, u32 second) {
    return func_800B8BA8(first, second) == 0;
}
