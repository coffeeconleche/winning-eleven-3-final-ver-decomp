#include "common.h"

extern void func_800B5BD0(void);
extern void func_800B5C58(u32, u32, u32);
extern void func_800B47A8(u32, u32);
extern u16 D_800F1072, D_800F1070;

/* Existing geometry/platform initialization helpers retain their native
 * side effects. Partial global views only; no storage is allocated. */
void func_800B5B78(void)
{
    func_800B5BD0();
    func_800B5C58(0, 0, 0);
    func_800B47A8(0, 0);
    D_800F1072 = 0;
    D_800F1070 = 0;
}
