#include "common.h"

extern u16 D_800C8478[];

/* The masked byte offset selects one of eight evidenced halfwords. The table's
 * complete ownership, gameplay meaning and historical API remain provisional.
 * This word ABI view preserves the logical shift and zero-extended load. */
u32 func_8005E0E8(u32 code)
{
    code = (code >> 4) & 0xE;
    return *(u16 *)((u8 *)D_800C8478 + code);
}
