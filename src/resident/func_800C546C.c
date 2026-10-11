#include "common.h"

/* The existing pointer initializes to GPU status port 0x1F801824. */
extern volatile u32 *D_800D5A40;

u32 func_800C546C(void)
{
    return *D_800D5A40;
}
