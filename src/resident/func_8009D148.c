#include "types.h"

extern u32 func_8009FEDC(u8 *);
extern void func_8005D28C(u8 *);
extern s32 abs(s32);

/* Existing scratch and partial record views only. Helpers may mutate both;
 * preserve the fresh reads after each call and the two separate clear sites. */
void func_8009D148(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 counter;
    u32 side;
    u8 identifier;
    u8 *pair;

    if (func_8009FEDC(record) == 0) {
        if (*(u8 *)0x1F80029B == 1) {
            func_8005D28C(record);
        }
        if (*(u8 *)0x1F80029A != 2) {
            counter = record[0x3E3];
            if (counter == 2) {
                /* The sentinel bypasses the associated-position read. */
                if (*(s16 *)0x1F8002B8 == 0x7FFF) {
                    goto clear;
                }
            } else {
                record[0x3E3] = counter + 1;
            }
            /* Signed halfword promotes before abs, preserving -32768. */
            if (abs(*(s16 *)(*(u8 **)0x1F8002F4 + 2)) < 0x1990) {
clear:
                record[0x3E2] = 0;
                record[0x3E3] = 0;
            }
            /* Use the full byte selector; its permitted domain is unknown. */
            side = record[0x399];
            identifier = record[0x38D];
            pair = scratch + side * 2;
            if (identifier == pair[0x31E] || identifier == pair[0x31F]) {
                record[0x3E2] = 0;
                record[0x3E3] = 0;
            }
        }
    }
}
