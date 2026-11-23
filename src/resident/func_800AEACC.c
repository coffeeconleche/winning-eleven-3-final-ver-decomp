#include "common.h"

typedef struct {
    u32 preceding[5];
    s32 (*submit)(u32 *, u32);
    u32 reserved[9];
    s32 (*sync)(u32);
} CallbackTable;

extern CallbackTable *D_800CEABC;

s32 func_800AEACC(u32 *packet)
{
    CallbackTable *table = D_800CEABC;
    u32 count = ((u8 *)packet)[3];

    /* Capture the count before syncing, then reload the active table. */
    table->sync(0);
    return D_800CEABC->submit(packet + 1, count);
}
