#include "common.h"

/* Provisional void call views. The original dispatcher leaves argument
 * registers unchanged; no additional forwarded parameter API is inferred. */
extern void func_8007A328(void);
extern void func_8007A774(void);
extern void func_8007AC70(void);

void func_8007A2A8(void)
{
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_8007A328();
        break;
    case 1:
        func_8007A774();
        break;
    case 2:
        func_8007AC70();
        break;
    }
}
