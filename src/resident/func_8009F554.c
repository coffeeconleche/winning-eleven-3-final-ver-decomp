#include "common.h"

/* A partial halfword-access view, not a recovered complete record layout. */
typedef struct {
    u16 unknown0;
    u16 value2;
    u16 value4;
    u16 value6;
    u8 unknown8[0x3BC - 8];
    u16 value3BC;
    u16 value3BE;
} Resident9F554View;

/* This word result models the measured $v0 residue from the first reread.
 * Known callers ignore it; the original return API is unknown. */
u32 func_8009F554(Resident9F554View *record, u32 arg1, u32 arg2)
{
    u16 first;
    u16 second;

    record->value2 = arg1;
    /* These scoped read views retain the two measured physical rereads;
     * they do not claim MMIO or general volatility for the record. */
    first = *(volatile u16 *)&record->value2;
    record->value6 = arg2;
    second = *(volatile u16 *)&record->value6;
    record->value4 = 0;
    record->value3BC = first;
    record->value3BE = second;
    return first;
}
