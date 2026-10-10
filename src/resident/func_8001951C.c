#include "common.h"

extern u8 *D_801A6000;
extern u8 *D_801A6004;

/* Four incoming register words are forwarded unchanged. This is an ABI view,
 * not a recovered complete prototype for the callback-bearing helper. */
extern s32 func_800B6D78(u32, u32, u32, u32);
extern void func_80017564(u32);
extern void func_80019564(u8 *, u32);

/* The known caller ignores the result; no original return contract is claimed. */
void func_8001951C(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_800B6D78(arg0, arg1, arg2, arg3);
    func_80017564(16);
    func_80019564(D_801A6000, 0);
    func_80019564(D_801A6004, 0);
}
