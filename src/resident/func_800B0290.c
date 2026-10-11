#include "common.h"

/* Existing pointers initialize to GPU control/status and data registers respectively. */
extern volatile u32 *D_800CEB9C;
extern volatile u32 *D_800CEB98;

/* Raw command/result words only; the complete historical API remains provisional. */
u32 func_800B0290(u32 value)
{
    *D_800CEB9C = value | 0x10000000;
    return *D_800CEB98 & 0x00FFFFFF;
}
