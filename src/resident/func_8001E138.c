#include "common.h"

/* Scalar views of the measured scratch bytes; these allocate no storage. */
extern u8 D_1F8001E9 __asm__("0x1F8001E9");
extern u8 D_1F8001EA __asm__("0x1F8001EA");
extern u8 D_1F8001EB __asm__("0x1F8001EB");

void func_8001E138(u32 first, u32 second, u32 third)
{
    D_1F8001E9 = first;
    D_1F8001EA = second;
    D_1F8001EB = third;
}
