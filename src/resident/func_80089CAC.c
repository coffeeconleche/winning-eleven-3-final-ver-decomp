#include "common.h"

/* Four word views preserve unchanged incoming $a0-$a3 at the first call.
 * These declarations do not recover the complete original helper APIs. */
extern void func_80096050(u32, u32, u32, u32);
extern void func_8004ED28(u32);
extern void func_80089BD8(void);
extern void func_800171C4(u32);

/* Existing global and no-storage numeric scratch access views. */
extern u8 D_80107FEC;
extern u8 scratch1EC __asm__("0x1F8001EC");
extern u16 scratch294 __asm__("0x1F800294");

/* Field meanings and the original return contract remain provisional. */
void func_80089CAC(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_80096050(arg0, arg1, arg2, arg3);
    func_8004ED28(5);
    scratch1EC = 0;
    func_80089BD8();
    D_80107FEC = 4;
    scratch294 = 0;
    func_800171C4(2);
}
