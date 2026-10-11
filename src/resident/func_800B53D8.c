#include "common.h"

/* The original direct callee writes incoming a0 to COP2 control register26.
 * This wrapper's historical formal and return declaration remain provisional. */
extern void func_800B53F8(u32 value);

void func_800B53D8(u32 value)
{
    func_800B53F8(value);
}
