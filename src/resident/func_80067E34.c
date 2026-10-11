#include "common.h"

/* Partial halfword view only: complete record layout and gameplay meaning are
 * unknown. Widening before negation preserves abs(-32768) == 32768.
 * The range test narrows the difference modulo 65536 before comparing.
 * One empty control fence retains the original shared zero-return branch;
 * removing it gives 64 rather than 72 bytes with different allocation.
 * It emits no instructions/accesses/clobbers and requires no bindings/frame. */
s32 func_80067E34(s16 *record)
{
    s32 first = record[1];
    s32 second = record[3];

    if (first < 0) {
        first = -first;
    }
    if (second < 0) {
        second = -second;
    }
    if (second < 0x12F4 && (u16)(first - 0x23E3) < 0xF3D) {
        return 1;
    }
    __asm__ volatile ("");
    return 0;
}
