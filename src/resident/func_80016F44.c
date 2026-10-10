#include "common.h"

/* Incoming argument-register views preserve the initial overlay call's
 * unchanged $a0-$a3. They do not establish its complete original prototype. */
extern void func_8018DB58(u32, u32, u32, u32);
extern void func_8001722C(u32);
extern void func_8001714C(void);

/* The known caller ignores the result; no original return contract is claimed. */
void func_80016F44(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    func_8018DB58(arg0, arg1, arg2, arg3);
    if (*(u8 *)0x1F800299 != 0) {
        func_8001722C(0);
        func_8001714C();
    }
}
