#include "common.h"

extern u8 D_8011BD54[];

u8 func_801A24AC(u8 value) {
    s32 i;

    for (i = 0; i < 32; i++) {
        if (D_8011BD54[i] == value) {
            return i;
        }
    }
    return 0xFF;
}
