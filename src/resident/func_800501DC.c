#include "common.h"

extern u8 scratch2DD[] __asm__("0x1F8002DD");
extern u8 D_800C7C3C[];
typedef struct {
    s16 half0, half2, half4, half6;
} Resident501DCView;
extern s32 func_800AE8A0(Resident501DCView *, u32, u32);
extern s32 func_800AE534(u32);

/* Unsized table and numeric scratch views imply no recovered domain or extent.
 * The four-halfword callback access view, helper APIs and void result-register
 * residue are provisional. Preserve selector narrowing and ordered stores. */
void func_800501DC(u32 selector)
{
    Resident501DCView halves;
    s32 index = D_800C7C3C[scratch2DD[(u8)selector]];
    s32 second;
    s32 first;

    if (index < 24) {
        first = ((index & 3) << 4) + 0x2C0;
        index >>= 2;
        halves.half0 = first;
        second = index * 40;
    } else {
        index -= 24;
        first = ((index & 1) << 4) + 0x2C0;
        index >>= 1;
        halves.half0 = first;
        second = index * 40 + 0x100;
    }
    halves.half2 = second;
    /* Empty read of the actual second half keeps its store before pointer
     * setup. No register/memory clobber or instruction is needed. Removing
     * this input swaps those instructions under GCC 2.7. */
    __asm__("" : : "m"(halves.half2));
    halves.half4 = 16;
    halves.half6 = 40;
    func_800AE8A0(&halves, (u8)selector * 16 + 0x1C0, 0xB0);
    func_800AE534(0);
}
