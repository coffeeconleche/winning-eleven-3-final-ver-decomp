#include "common.h"

/* Partial access view; record ownership and complete field meanings unknown. */
typedef struct {
    u8 unknown[0x396];
    u8 byte396;
    u8 unknown397;
    u8 byte398;
    u8 unknown399;
    u8 byte39A;
    u8 unknown39B[0x27];
    u16 half3C2;
    u16 half3C4;
    u8 unknown3C6[0xE];
    u16 half3D4;
} Resident2C204View;

extern u16 scratch02E[] __asm__("0x1F80002E");

/* Keep each branch's table/record reads after the common halfword clear.
 * The unsized scratch table is a no-storage access view; its extent, selector
 * domain and the original return contract remain provisional. */
void func_8002C204(Resident2C204View *record)
{
    u32 value;

    if (record->byte39A == 0) {
        u32 mode = record->byte396;

        record->half3C2 = 0;
        if (mode == 5) {
            u32 selector = record->byte398;
            u32 mask = record->half3D4;
            u32 selected = scratch02E[selector];

            value = selected & mask;
            if (value != 0) {
                value = 2;
            } else {
                record->half3C4 = 0;
                return;
            }
        } else {
            u32 selector = record->byte398;
            u32 mask = record->half3D4;
            u32 selected = scratch02E[selector];

            value = selected & mask;
            if (value != 0) {
                value = 3;
            } else {
                value = 1;
            }
        }
        record->half3C4 = value;
    }
}
