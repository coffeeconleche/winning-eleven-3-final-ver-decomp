#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D8048[];
extern u16 D_8011BDEC[];
extern u8 D_801D8B17;
extern u8 D_801D8A70;

/* Decode five three-bit fields for each side. Unsupported modes do not assign
 * index in the reference; no fallback index is fabricated here. */
void func_801A3588(void) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *output;
    u16 *packed;
    u8 side;
    u8 field;
    u8 index;

    side = 0;
    output = D_801D8048;
    packed = D_8011BDEC;
    for (; side < 2; side++) {
        switch (D_801D8B17) {
        case 0: {
            u8 record = (base + D_801D8A70)[0xAB80];
            u8 *row = base;
            row += record * 36;
            index = row[0x8F25];
            if (index == 255) {
                for (field = 0; field < 5; field++) {
                    /* Retain offset-first arithmetic for the 32-bit byte address. */
                    *(u8 *)(side * 5 + field + (u32)output) = 0;
                }
                return;
            }
            break;
        }
        case 1:
            index = (scratch + side)[0x2DD];
            break;
        }
        for (field = 0; field < 5; field++) {
            /* Reload the unsigned halfword for every three-bit field. */
            *(u8 *)(side * 5 + field + (u32)output) =
                (packed[index] >> ((4 - field) * 3)) & 7;
        }
    }
}
