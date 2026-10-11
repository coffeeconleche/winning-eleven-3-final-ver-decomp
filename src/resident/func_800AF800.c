#include "common.h"

u32 func_800AF800(u32 first_flag, u32 second_flag, u32 page)
{
    u32 command = 0xE1000000;
    register u32 bits __asm__("$2");
    if (second_flag != 0) {
        command |= 0x200;
    }
    bits = page & 0x9FF;
    if (first_flag != 0) {
        bits |= 0x400;
    }
    return command | bits;
}
