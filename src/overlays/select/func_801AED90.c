#include "common.h"

typedef struct {
    u8 byte0, byte1;
} Entry2;

extern Entry2 D_801DA620[];
extern void func_801AEF70(s32, s32);
extern s32 func_801AEFE0(Entry2 *, Entry2 *);

/* The comparator repeatedly receives the unchanged left/right addresses,
 * not the scan index. Preserve that observed behavior and ordered swaps. */
void func_801AED90(s32 left, s32 right) {
    if (left < right) {
        s32 boundary, i;
        func_801AEF70(left, (left + right) / 2);
        boundary = left;
        for (i = boundary + 1; i <= right; i++) {
            if (func_801AEFE0(&D_801DA620[left], &D_801DA620[right]) < 0) {
                boundary++;
                func_801AEF70(boundary, i);
            }
        }
        func_801AEF70(left, boundary);
        func_801AED90(left, boundary - 1);
        func_801AED90(boundary + 1, right);
    }
}
