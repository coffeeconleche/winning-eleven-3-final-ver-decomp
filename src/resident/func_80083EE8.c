#include "common.h"

/* Provisional call-site views: the wrapper overwrites no outgoing argument
 * words. These declarations do not establish the historical callee APIs;
 * the measured code forwards the raw incoming a0-a3 registers unchanged. */
extern void func_8007A328(void);
extern void func_80083F68(void);
extern void func_8007AC70(void);

/* Capture one unsigned scratch byte, then make at most one selected call.
 * The known caller ignores v0; the void view retains the selected helper's
 * residue, or 2 for every default byte value. Scratch meaning/API unknown. */
void func_80083EE8(void)
{
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_8007A328();
        break;
    case 1:
        func_80083F68();
        break;
    case 2:
        func_8007AC70();
        break;
    }
}
