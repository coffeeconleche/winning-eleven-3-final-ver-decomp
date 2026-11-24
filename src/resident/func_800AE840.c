#include "common.h"

typedef struct {
    u32 preceding[2];
    s32 (*transfer)(u32, s16 *, u32, u32 *);
    u32 reserved[4];
    u32 address;
} TransferTable;

extern TransferTable *D_800CEABC;
extern const char D_80014F60[];
extern void func_800AE59C(const char *format, void *rectangle);

void func_800AE840(s16 *rectangle, u32 *buffer)
{
    TransferTable *table;

    func_800AE59C(D_80014F60, rectangle);
    /* The rectangle diagnostic runs before sampling the active table. */
    table = D_800CEABC;
    table->transfer(table->address, rectangle, 8, buffer);
}
