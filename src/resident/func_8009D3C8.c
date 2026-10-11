#include "common.h"

/* Partial access view only; record ownership and field meanings are unknown. */
typedef struct {
    u8 unknown[0x398];
    u8 byte398;
    u8 unknown399[0x49];
    u8 byte3E2;
    u8 byte3E3;
} Resident9D3C8View;

extern u8 scratch2CF[] __asm__("0x1F8002CF");
extern u8 D_8010C1D8[];
extern s32 func_8009F690(Resident9D3C8View *);
extern void func_8009CF84(Resident9D3C8View *);

/* Keep the table read conditional and the two clears ordered. Table extents,
 * helper APIs and selector domains remain provisional. The void view preserves
 * the final callback's result-register residue, not a recovered return API. */
void func_8009D3C8(Resident9D3C8View *record)
{
    u32 selector = record->byte398;
    u32 enabled = scratch2CF[selector];
    u8 *base;
    Resident9D3C8View *argument;

    base = D_8010C1D8;
    if (enabled == 0) {
        argument = record;
        argument->byte3E2 = 0;
        argument->byte3E3 = 0;
    } else {
        u8 *entry = base + selector;
        u32 value = entry[13];

        argument = record;
        /* Empty real-pointer identity retains argument preparation before the
         * test. Removing it changes the table-base allocation and call copies. */
        __asm__("" : "=r"(argument) : "0"(argument));
        if (value == 7 && func_8009F690(record) != 0) {
            return;
        }
    }
    argument = record;
    /* Empty real-pointer identity retains the common call's argument copy.
     * Removing it changes clear-store bases and branch/call scheduling. */
    __asm__("" : "=r"(argument) : "0"(argument));
    func_8009CF84(argument);
}
