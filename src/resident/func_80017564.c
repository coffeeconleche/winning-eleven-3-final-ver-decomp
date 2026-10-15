#include "common.h"

/* Three existing physical views of interleaved words; valid table extents and
 * the complete descriptor layout remain provisional. No storage is defined. */
extern s32 D_800C6098[];
extern u8 *D_800C609C[];
extern u32 D_800C60A0[];
extern u8 D_800E6BF8[];
extern s32 D_800E6BFC;
extern u8 D_800F3564;
extern u8 *func_800B7494(s32, u8 *);
extern s32 func_800B72A4(u32, u8 *, u8 *);
extern s32 func_800B9348(u32, u8 *, u32);
extern s32 func_800B9448(s32, u8 *);
extern void func_800AD648(void *, const void *, u32);

void func_80017564(u32 selector)
{
    s32 first = D_800C6098[(u16)selector * 3];
    u32 triple;

    D_800F3564 = 0;
    if (first > 0) {
        func_800B7494(first, D_800E6BF8);
        while (func_800B72A4(9, 0, 0) == 0) {
        }
        triple = (u16)selector * 3;
    retry:
        while (func_800B72A4(2, D_800E6BF8, 0) == 0) {
        }
        {
            u32 offset = triple * 4;
            while (func_800B9348(*(u32 *)((u8 *)D_800C60A0 + offset), *(u8 **)((u8 *)D_800C609C + offset), 128) == 0) {
            }
        }
        do {
            D_800E6BFC = func_800B9448(1, 0);
            if (D_800E6BFC == -1) {
                goto retry;
            }
        } while (D_800E6BFC != 0);
    } else {
        /* BIOS byte count uses a wrapping unsigned sector-to-byte shift. */
        func_800AD648((void *)first, D_800C609C[(u16)selector * 3], D_800C60A0[(u16)selector * 3] << 11);
    }
}
