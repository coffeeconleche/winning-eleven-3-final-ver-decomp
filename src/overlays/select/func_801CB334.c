#include "common.h"

extern u16 D_801D5988[];

/* Callers consume the low byte; the original return declaration is unknown. */
u8 func_801CB334(u16 value) {
    u8 i;

    for (i = 0; i < 6; i++) {
        if (D_801D5988[i] == value) {
            return i;
        }
    }
    /* Retain the original fallthrough, which leaves the failed loop test's
     * zero in v0. An explicit fallback adds an instruction to this profile. */
}
