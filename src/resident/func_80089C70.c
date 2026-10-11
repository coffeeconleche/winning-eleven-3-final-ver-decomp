#include "common.h"

/* No-storage view of the proved scratch byte. Both calls retain incoming
 * $a0-$a3 unchanged; these four-word call-site views do not establish the
 * original helper prototypes or wrapper return contract. */
extern u8 D_1F80029B __asm__("0x1F80029B");
extern void func_8007A328(u32, u32, u32, u32);
extern void func_80089CAC(u32, u32, u32, u32);

void func_80089C70(u32 first, u32 second, u32 third, u32 fourth)
{
    if (D_1F80029B == 0) {
        func_8007A328(first, second, third, fourth);
    } else {
        func_80089CAC(first, second, third, fourth);
    }
}
