#include "common.h"

extern u32 func_800BA798(u32, u32, u32, u32);

/* Preserve untouched a2/a3 as raw words; complete callback APIs are unknown. */
u32 func_800B7450(u32 value, u32 incoming_second, u32 third, u32 fourth)
{
    return func_800BA798(3, value, third, fourth);
}
