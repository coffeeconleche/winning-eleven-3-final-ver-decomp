#include "common.h"

extern u8 D_8011BD54[];

s32 func_801A2474(u8 value) {
    s32 i;

    for (i = 0; i < 32; i++) {
        if (D_8011BD54[i] == value) {
            return 0;
        }
    }
    return 1;
}
