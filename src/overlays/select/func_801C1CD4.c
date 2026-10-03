#include "common.h"

extern u8 *D_8011D778;

void func_801C1CD4(u8 value) {
    u32 number = value;

    /* Keep the global pointer rereads between byte writes. The glyph encoding
     * is preserved without assuming a host character set or bounding input. */
    if (number < 10) {
        D_8011D778[2] = 0x20;
        D_8011D778[3] = 0x82;
        D_8011D778[4] = value + 0x4F;
        D_8011D778[5] = 0x20;
    } else {
        u32 tens = number / 10;
        D_8011D778[2] = 0x82;
        D_8011D778[3] = tens + 0x4F;
        D_8011D778[4] = 0x82;
        D_8011D778[5] = number % 10 + 0x4F;
    }
}
