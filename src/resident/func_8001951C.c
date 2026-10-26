#include "common.h"

extern u8 *D_801A6000;
extern u8 *D_801A6004;

/* The initial helper and its nested setup do not consume incoming arguments;
 * each callback's actual arguments are initialized within that SDK chain. */
extern s32 func_800B6D78(void);
extern void func_80017564(u32);
extern void func_80019564(u8 *, u32);

/* The known caller ignores the result; no original return contract is claimed. */
void func_8001951C(void)
{
    func_800B6D78();
    func_80017564(16);
    func_80019564(D_801A6000, 0);
    func_80019564(D_801A6004, 0);
}
