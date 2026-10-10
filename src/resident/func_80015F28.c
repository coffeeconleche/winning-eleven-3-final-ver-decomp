#include "common.h"

extern void func_8004FC54(u32);
/* This raw call-site view emits no argument setup: the original forwards
 * post-callback $a0-$a3 residue. It is not a complete helper prototype. */
extern void func_8001951C();
extern void func_8001E138(u32, u32, u32);
extern void func_8001714C(void);

/* The known caller ignores the result; the return contract is provisional. */
void func_80015F28(void)
{
    func_8004FC54(0);
    *(u8 *)0x1F8002A0 = 0;
    *(u8 *)0x1F8002A1 = 0;
    func_8001951C();
    func_8001E138(0, 0, 0);
    *(u8 *)0x1F80029F = 0;
    func_8001714C();
}
