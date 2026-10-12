#include "common.h"

/* Existing linker symbols; meanings and the callback contract are unknown. */
extern s32 func_800BA518(s32);
extern u32 D_800CEBD0;
extern u32 D_800CEBD4;

/* Five known callers pass no arguments and ignore any result. The -1
 * argument and the 0xF0 offset are measured constants. */
void func_800B0A80(void)
{
    D_800CEBD0 = func_800BA518(-1) + 0xF0;
    D_800CEBD4 = 0;
}
