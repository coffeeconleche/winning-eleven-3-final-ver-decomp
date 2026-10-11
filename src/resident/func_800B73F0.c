#include "common.h"

/* Four forwarded words describe the observed ABI, not the complete helper API. */
extern void func_800B84C8(u32, u32, u32, u32);

s32 func_800B73F0(u32 first, u32 second, u32 third, u32 fourth)
{
    func_800B84C8(first, second, third, fourth);
    return 1;
}
