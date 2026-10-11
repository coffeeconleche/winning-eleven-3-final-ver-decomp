#include "common.h"

void func_800ADEDC(void *packet, u32 flag0, u32 flag1, u32 input)
{
    u32 command;

    ((u8 *)packet)[3] = 1;
    command = 0xE1000000u;
    if (flag1 != 0) {
        command |= 0x200u;
    }
    {
        /* Preserve the observed masked-input allocation. */
        register u32 bits __asm__("$2") = input & 0x9FFu;
        if (flag0 != 0) {
            bits |= 0x400u;
        }
        ((u32 *)packet)[1] = command | bits;
    }
}
