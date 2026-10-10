#include "common.h"

extern u8 *D_801A6000;
extern u8 *D_801A6004;

/* Preserve the initial helper's incoming $a0-$a3 without claiming its complete
 * original prototype or nested callback contracts. */
extern s32 func_800B6D78(u32, u32, u32, u32);
extern void func_800AB620(s32);
extern void func_80017564(u32);
extern void func_80019564(u8 *, u32);

/* Known callers ignore the result. These are ABI/access views; complete object
 * layouts, original APIs and gameplay meaning remain provisional. */
void func_800179D0(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_800B6D78(arg0, arg1, arg2, arg3);
    func_800AB620(15);
    func_80017564(3);
    func_80019564(D_801A6000, 0);
    func_80019564(D_801A6004, 0);
}
