#include "common.h"

extern u8 scratch333 __asm__("0x1F800333");
extern u16 scratch334 __asm__("0x1F800334");
extern u16 scratch294 __asm__("0x1F800294");
extern u8 *scratch2F4 __asm__("0x1F8002F4");
/* Register views and callback APIs are provisional. The first call receives
 * the unchanged incoming argument words; later no-argument calls preserve
 * the actual register state without claiming complete original APIs. */
extern u32 func_8004F790(u32, u32, u32, u32);
extern void func_800477A0(u8 *, u32);
extern void func_8002283C(void);
extern void func_8004A2D0(void);
extern void func_80051810(void);

/* Scratch meanings, record layout and return contract remain unknown. */
void func_800769C0(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    if (scratch333 == 0 && func_8004F790(arg0, arg1, arg2, arg3) != 0) {
        return;
    }
    if (scratch334 != 0) {
        scratch333 = 1;
    }
    scratch294++;
    func_800477A0(scratch2F4, 4);
    func_8002283C();
    func_8004A2D0();
    func_80051810();
}
