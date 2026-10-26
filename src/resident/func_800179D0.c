#include "common.h"

extern u8 *D_801A6000;
extern u8 *D_801A6004;

/* The initial helper overwrites its consumed arguments. Its nested setup and
 * callback entry consume no words from this caller's incoming argument bank. */
extern s32 func_800B6D78(void);
extern void func_800AB620(s32);
extern void func_80017564(u32);
extern void func_80019564(u8 *, u32);

/* Known callers ignore the result. These are ABI/access views; complete object
 * layouts, original APIs and gameplay meaning remain provisional. */
void func_800179D0(void)
{
    func_800B6D78();
    func_800AB620(15);
    func_80017564(3);
    func_80019564(D_801A6000, 0);
    func_80019564(D_801A6004, 0);
}
