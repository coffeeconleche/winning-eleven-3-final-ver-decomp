#include "common.h"

/* Existing linker symbols: pointer slots into GPU register state; the
 * stored extents are the measured word accesses only. */
extern u32 *D_800CEB9C;
extern u32 *D_800CEBA0;
extern u32 *D_800CEBA4;
extern u32 *D_800CEBA8;

/* One direct caller plus one callback-table registration (file offset
 * 0xBF294). The word formal is a measured ABI view. */
void func_800B0248(u32 value)
{
    *D_800CEB9C = 0x4000002;
    *D_800CEBA0 = value;
    *D_800CEBA4 = 0;
    *D_800CEBA8 = 0x1000401;
}
