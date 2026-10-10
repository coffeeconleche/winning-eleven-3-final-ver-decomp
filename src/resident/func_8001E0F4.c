#include "common.h"

/* Measured call-site views, not recovered complete helper prototypes. */
extern void func_800B5FA8(void *);
extern void func_800B5238(u32);
extern void func_800B59A8(u32);

void func_8001E0F4(void)
{
    *(u32 *)0x1F80020C = 0;
    *(u32 *)0x1F800208 = 0;
    func_800B5FA8((void *)0x1F8001F0);
    func_800B5238(256);
    func_800B59A8(0);
}
