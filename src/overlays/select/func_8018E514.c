#include "common.h"

typedef struct SelectionRosterEntry {
    u8 padding[3];
    u8 state;
    u8 trailing[24];
} SelectionRosterEntry;

extern SelectionRosterEntry D_801D92A0[];

void func_8018E514(void) {
    SelectionRosterEntry *entry;
    s32 i;

    entry = D_801D92A0;
    for (i = 19; i >= 0; i--) {
        entry->state = 0;
        entry++;
    }
}
