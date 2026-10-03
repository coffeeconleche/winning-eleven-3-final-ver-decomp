#include "common.h"

extern u8 D_801DA330, D_800E78A8[], D_800F0420[];
extern u8 D_80134328[], D_801346DC[];
extern u8 *D_801D1D18[];
extern void func_800AB620(s32);
extern void func_800501DC(u32);
extern void func_801C84E8(void);
extern void func_800AD648(void *, const void *, u32);
extern void func_8002247C(void);
/* Word ABI views preserve the supplied negative coordinate bits; the callee
 * narrows them on halfword stores. The original declaration is unknown. */
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32);

void func_801C98F8(u8 skip) {
    u32 index = D_801DA330;

    *(u8 *)0x1F8002DE = 0;
    *(u8 *)0x1F8002DD = index;
    if (!skip) {
        func_800AB620(0x50D);
    }
    func_800501DC(0);
    func_801C84E8();
    func_800AD648(D_80134328 + D_801DA330 * 22, D_800E78A8, 22);
    func_800AD648(D_801346DC + D_801DA330 * 22, D_800F0420, 22);
    func_8002247C();
    func_801942E0(0, D_801D1D18[*(u8 *)0x1F8002DD], -115, -96,
                 162, 3, 1, 0, 0, 1, 3, 1);
}
