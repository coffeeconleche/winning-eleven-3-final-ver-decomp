#include "common.h"

/* Provisional void call views. No additional argument or return contract is
 * inferred; the original dispatcher leaves argument registers unchanged. */
extern void func_800772F8(void);
extern void func_80079D5C(void);
extern void func_8007AC70(void);

void func_80077270(void)
{
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_800772F8();
        break;
    case 2:
        func_80079D5C();
        break;
    case 1:
    case 3:
        func_8007AC70();
        break;
    }
}
