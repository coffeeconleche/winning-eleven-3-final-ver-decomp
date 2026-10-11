#include "common.h"

extern u32 func_800B7B74(u32, void *);

/* Forwarded words and raw result only; the complete callee API is provisional. */
u32 func_800B6FCC(u32 mode, void *output)
{
    return func_800B7B74(mode, output);
}
