#include "common.h"

/* Partial access view; complete record layout and field meanings are unknown. */
typedef struct {
    u16 unknown0;
    u16 value2;
    u16 unknown4;
    u16 value6;
    u8 unknown8[0x38D - 8];
    u8 key38D;
    u8 unknown38E[0x3BC - 0x38E];
    u16 value3BC;
    u16 value3BE;
    u8 unknown3C0[0x3E2 - 0x3C0];
    u8 value3E2;
    u8 value3E3;
} Resident9E244View;

extern u8 scratch2A9 __asm__("0x1F8002A9");
extern void func_8005E9D4(Resident9E244View *);

/* The word result models the observed scratch-byte or post-callback halfword
 * residue in $v0; it does not recover an original return contract/helper API. */
u32 func_8009E244(Resident9E244View *record)
{
    u32 key = record->key38D;
    /* Keeps the observed return residue and post-callback first capture in $v0.
     * Removing this binding adds a final word-result copy. */
    register u32 result __asm__("$2") = scratch2A9;

    if (key != result) {
        record->value3E2 = 0;
        record->value3E3 = 0;
    } else {
        u32 second;

        func_8005E9D4(record);
        result = record->value2;
        second = record->value6;
        record->value3BC = result;
        record->value3BE = second;
    }
    return result;
}
