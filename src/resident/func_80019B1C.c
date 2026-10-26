#include "common.h"

/* The initial helper initializes its own arguments, including its nested
 * callback setup; the wrapper consumes no incoming argument words. */
extern s32 func_800B6D78(void);
extern void func_80017564(u32);
extern void func_80019564(u8 *, u32);
extern void func_800501DC(u32);
extern u8 *D_801A6000;

/* Known callers ignore the result. Original API and gameplay meaning remain
 * provisional; the global pointer must be read after the first two calls. */
void func_80019B1C(void)
{
    func_800B6D78();
    func_80017564(9);
    func_80019564(D_801A6000, 0);
    func_800501DC(0);
    func_800501DC(1);
}
