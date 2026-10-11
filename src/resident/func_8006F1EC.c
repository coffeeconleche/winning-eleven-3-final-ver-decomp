#include "common.h"

/* No-storage scratch-byte view and existing halfword symbol. Their gameplay
 * meanings and the original helper/wrapper return contracts remain unknown. */
extern u8 D_1F800330 __asm__("0x1F800330");
extern u16 D_8010A31E;
extern void func_8004FC54(u32 value);

void func_8006F1EC(void)
{
    D_1F800330 = 0;
    D_8010A31E = 255;
    func_8004FC54(0);
}
