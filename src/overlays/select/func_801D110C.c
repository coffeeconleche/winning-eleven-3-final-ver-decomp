#include "common.h"

extern s8 D_801D5AA8[];
extern u8 D_801D6510[], D_800C8568[];

void func_801D110C(u8 *argument) {
    u8 *input = argument;
    s32 row;
    s32 slot, index, offset;
    /* These four measured register lifetimes keep the selected row live,
     * the original cursor distinct, and the changed flag/target handoff in
     * order. They are compiler aids, not recovered original declarations. */
    register s32 changed asm("$9"), selected asm("$11");
    s32 temporary;
    u8 *originalBase, *destinationBase;
    s8 *mapping;
    s8 *item;
    s8 *end;
    register u8 *original asm("$7");
    u8 *cursor, *source;

    row = 0;
    originalBase = D_801D6510;
    destinationBase = D_800C8568;
    /* Preserve the measured base setup order; this input emits no code. */
    __asm__ volatile ("" : : "r"(destinationBase));
    mapping = D_801D5AA8;
    do {
        temporary = row >= 35;
        selected = row + temporary;
        temporary = selected * 9;
        offset = temporary * 16;
        slot = 0;
        item = mapping;
        do {
            if (*item != -1) {
                changed = 0;
                index = 0;
                /* PSX 32-bit address views retain the measured addition
                 * order; they do not claim portable host-pointer arithmetic. */
                temporary = offset + (s32)input;
                source = (u8 *)(slot + temporary);
                temporary = offset + (s32)originalBase;
                original = (u8 *)(slot + temporary);
                cursor = original;
                do {
                    if (*cursor != source[index]) {
                        changed = 1;
                        cursor = original + 8;
                        index = 8;
                    }
                    /* The original checks the possibly-reset cursor again,
                     * including byte8 after a mismatch; do not use a break. */
                    if (!*cursor) {
                        cursor = original + 8;
                        index = 8;
                    }
                    index++;
                    cursor++;
                } while (index < 8);
                if (changed) {
                    s8 *current;
                    u8 *copy;
                    register u8 *target asm("$9");
                    index = 0;
                    temporary = selected * 176;
                    target = (u8 *)(temporary + (s32)destinationBase);
                    current = item;
                    temporary = offset + (s32)input;
                    copy = (u8 *)(slot + temporary);
                    do {
                        u8 *place = (u8 *)(*current * 8 + (s32)target);
                        place += index;
                        *place = *copy;
                        index++;
                        copy++;
                    } while (index < 8);
                }
            }
            item++;
            end = mapping + 18;
            slot += 8;
        } while ((s32)item < (s32)end);
        row++;
        mapping = end;
    } while (row < 39);
}
