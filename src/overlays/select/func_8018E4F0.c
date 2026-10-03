#include "common.h"

typedef struct SelectionStateEntry {
    u8 padding[16];
    u8 state;
    u8 trailing[7];
} SelectionStateEntry;

extern SelectionStateEntry D_801D8F90[];

void func_8018E4F0(void) {
    SelectionStateEntry *entry;
    s32 i;

    entry = D_801D8F90;
    for (i = 31; i >= 0; i--) {
        entry->state = 0;
        entry++;
    }
}
