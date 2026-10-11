#include "common.h"

extern void func_800C11D8(u32);

/* Known caller ignores the result; the complete initialization API is provisional. */
void func_800C11B8(void)
{
    func_800C11D8(0);
}
