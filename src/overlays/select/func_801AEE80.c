#include "common.h"

extern u8 D_801DA620[];
extern void func_801AEF70(s32, s32);
extern s32 func_801AF110(const u8 *, const u8 *);

void func_801AEE80(s32 first, s32 last) {
    s32 partition, scan;

    if (first < last) {
        func_801AEF70(first, (first + last) / 2);
        partition = first;
        for (scan = partition + 1; scan <= last; scan++) {
            /* The original compares the fixed boundary descriptors, not scan.
             * Keep their addresses even as swaps mutate the descriptor bytes. */
            if (func_801AF110(D_801DA620 + first * 2,
                             D_801DA620 + last * 2) < 0) {
                partition++;
                func_801AEF70(partition, scan);
            }
        }
        func_801AEF70(first, partition);
        func_801AEE80(first, partition - 1);
        func_801AEE80(partition + 1, last);
    }
}
