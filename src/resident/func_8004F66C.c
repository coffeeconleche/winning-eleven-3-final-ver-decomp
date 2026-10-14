#include "types.h"

extern u8 D_800C7BB8[];
/* Partial row access views: 10-byte, 20-byte and 12-byte strides.
 * Complete table extents and historical declarations remain unknown. */
extern u8 D_800C7C14[][10];
extern s16 D_800C7BC4[][10];
extern u8 D_800C7B88[][12];
extern s16 D_800E6C28[];
extern s16 D_800E6C48[];

/* Word argument views preserve the callsite; the callee narrows its inputs.
 * Its original return API is unknown and this caller discards the result. */
extern void func_8001CEE0(s32, s32, s32, s32, s32, s32, s32, s32);

void func_8004F66C(u8 selector)
{
    s32 i;
    u8 value;

    /* The byte count is reread after each call. A continuing iteration has
     * i <= 254, so incrementing the signed counter cannot overflow.
     * The known caller selects rows 0..3, whose retail counts are 7,8,10,7;
     * broader selector/table contracts are not established here. */
    for (i = 0; i < D_800C7BB8[selector]; i++) {
        func_8001CEE0(i + 26, D_800C7C14[selector][i] - 56,
                      0, D_800C7BC4[selector][i] + 224,
                      0, 6, 0, 1);
        value = D_800C7B88[selector][i];
        D_800E6C28[i] = 0;
        D_800E6C48[i] = value;
    }
}
