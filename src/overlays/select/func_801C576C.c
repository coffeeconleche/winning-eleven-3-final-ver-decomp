#include "common.h"

extern u8 D_801D42A8[];

/* Observed eight-byte signed-halfword entry, not an asserted original type. */
typedef struct {
    s16 x, y, width, height;
} Entry;

extern void func_8019659C(s32, s32, s32, s32, s32, u32, u32, u32, u32);

void func_801C576C(Entry *entries, u8 index, u8 selector, u8 enabled) {
    if (enabled != 0) {
        u32 direction = D_801D42A8[2];
        u32 previous = D_801D42A8[1];
        u8 count, first, second;
        Entry *entry;

        if (direction != 0) {
            count = previous - 1;
        } else {
            count = previous + 1;
        }
        D_801D42A8[1] = count;
        if (count >= 32) {
            D_801D42A8[2] = 1;
        }
        if (count == 0) {
            D_801D42A8[2] = 0;
        }
        second = count * 2 + 64;
        first = count * 4 + 64;
        entry = (Entry *)((u32)(index * 8) + (u32)entries);
        func_8019659C(0, entry->x, entry->y, entry->width, entry->height,
                     first, first, second, selector);
        /* Reread all four halfwords after the first call, before adjustments. */
        func_8019659C(0, entry->x - 1, entry->y - 1,
                     entry->width + 2, entry->height + 2,
                     second, first, first, selector);
    }
}
