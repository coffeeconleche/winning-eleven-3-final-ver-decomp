#include "common.h"

/* Two incoming words are consumed by the fully inspected direct callee. */
extern u32 func_800B8AA8(u32 first, u32 second);

u32 func_800B7410(u32 first, u32 second)
{
    return func_800B8AA8(first, second) == 0;
}
