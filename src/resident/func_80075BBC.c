#include "common.h"

/* No-storage scratch-byte view. The four-word helper views represent the
 * unchanged argument registers at these calls, not recovered complete APIs.
 * Mode meaning and original wrapper return contract remain unknown. */
extern u8 D_1F80029B __asm__("0x1F80029B");
extern void func_80075C3C(u32, u32, u32, u32);
extern void func_80076184(u32, u32, u32, u32);
extern void func_80076938(u32, u32, u32, u32);

void func_80075BBC(u32 first, u32 second, u32 third, u32 fourth)
{
    switch (D_1F80029B) {
    case 0:
        func_80075C3C(first, second, third, fourth);
        break;
    case 1:
        func_80076184(first, second, third, fourth);
        break;
    case 2:
        func_80076938(first, second, third, fourth);
        break;
    }
}
