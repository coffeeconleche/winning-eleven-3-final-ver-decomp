#include "common.h"

/* No-storage access view of the observed scratch halfword. */
extern s16 scratch0F2 __asm__("0x1F8000F2");

/* Argument and result declarations model the measured registers;
 * the complete original helper API remains provisional. */
extern u32 func_800484F8(s32, s32, u32, u32);

u32 func_800484B8(u32 arg0, u32 arg1, u32 arg2)
{
    scratch0F2 = -0x150;
    return (u8)func_800484F8((s16)arg0, (s16)arg1, (u16)arg2, 0);
}
