#include "common.h"

extern u8 D_801D89F8[], D_801D89F9[], D_801D89FA[];
extern u8 D_801D89FB[], D_801D89FC[], D_801D89FD[];
extern u8 D_801D8A08[], D_801D8A09[], D_801D8A0A[];
extern u8 D_801D8A0B[], D_801D8A0C[], D_801D8A0D[];
extern void func_801CAF78(u32);

void func_801CACF0(u8 index) {
    u32 offset = index * 6;

    /* Keep the two six-byte resets in order before the callback. These
     * existing byte-symbol views do not assert the complete table layout. */
    D_801D89F8[offset] = 0;
    D_801D89F9[offset] = 1;
    D_801D89FA[offset] = 2;
    D_801D89FB[offset] = 3;
    D_801D89FC[offset] = 4;
    D_801D89FD[offset] = 5;
    D_801D8A08[offset] = 0;
    D_801D8A09[offset] = 1;
    D_801D8A0A[offset] = 2;
    D_801D8A0B[offset] = 3;
    D_801D8A0C[offset] = 4;
    D_801D8A0D[offset] = 5;
    func_801CAF78(index);
}
