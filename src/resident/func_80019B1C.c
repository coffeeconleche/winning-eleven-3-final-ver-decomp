#include "common.h"

/* Preserve the initial call's unchanged $a0-$a3. This forwarding view does not
 * establish the helper's complete prototype or its nested callback contracts. */
extern s32 func_800B6D78(u32, u32, u32, u32);
extern void func_80017564(u32);
extern void func_80019564(u8 *, u32);
extern void func_800501DC(u32);
extern u8 *D_801A6000;

/* Known callers ignore the result. Original API and gameplay meaning remain
 * provisional; the global pointer must be read after the first two calls. */
void func_80019B1C(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_800B6D78(arg0, arg1, arg2, arg3);
    func_80017564(9);
    func_80019564(D_801A6000, 0);
    func_800501DC(0);
    func_800501DC(1);
}
