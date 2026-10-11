#include "common.h"

/* A measured 40-byte stride and word at offset 0x0C, not a recovered complete
 * object layout. Table extent, helper result meaning, and original APIs remain
 * provisional; the known caller ignores the measured return value of one. */
typedef struct {
    u8 before0C[12];
    u32 value0C;
    u8 after10[24];
} Record40;

extern Record40 D_80105508[];
extern u32 func_8001D004(u32 key);

s32 func_8006FAA8(u8 selector, u16 key)
{
    Record40 *record = &D_80105508[selector];
    record->value0C = func_8001D004(key);
    return 1;
}
