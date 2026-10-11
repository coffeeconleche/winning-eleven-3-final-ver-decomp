#include "common.h"

/* Measured helper argument/result views; complete APIs/layouts are unknown. */
extern u32 func_8005B7CC(u32, u32, u32);

/* The void view does not establish the original return contract. */
void func_800807B0(u8 *record, u32 amount)
{
    u32 result = func_8005B7CC(record[0x3AB], record[0x3AA], (u8)amount);

    record[0x3AA] = result;
    record[0x3A4] = result;
}
