#include "common.h"

extern u8 D_800FF748[], D_801D8B17, D_801D8A70;
extern u8 D_801D1F7C[], D_801D1F7D, D_801D1F81[];
/* Word ABI views preserve the supplied coordinate bits and explicit final
 * byte narrowing; these do not establish the original draw declaration. */
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32);

void func_801A2F90(u32 first, u32 second) {
    u32 mode = D_801D8B17;
    u8 *base = D_800FF748;
    u8 *tail;

    switch (mode) {
    case 0:
        D_801D1F7D = base[0x8F25 + base[0xAB80 + D_801D8A70] * 36];
        break;
    case 1:
        D_801D1F7D = *(u8 *)0x1F8002DD;
        break;
    }
    tail = D_801D1F81;
    *tail = *(u8 *)0x1F8002DE;
    func_801942E0(3, D_801D1F7C, -146, -10, 96, 3, 1, 0, 0, 1, 2, (u8)first);
    func_801942E0(4, tail - 1, 50, -10, 96, 3, 1, 0, 0, 1, 2, (u8)second);
}
