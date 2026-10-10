#include "common.h"

/* Scalar views of the measured scratch bytes; these allocate no storage. */
extern u8 D_1F8002A1 __asm__("0x1F8002A1");
extern u8 D_1F8002A0 __asm__("0x1F8002A0");
extern u8 D_1F8001EC __asm__("0x1F8001EC");
extern u8 D_1F8002C2 __asm__("0x1F8002C2");
extern void func_8001723C(u32 value);

void func_8001DD10(void)
{
    D_1F8002A1 = 0;
    D_1F8002A0 = 0;
    D_1F8001EC = 0;
    D_1F8002C2 = 0;
    func_8001723C(0);
}
