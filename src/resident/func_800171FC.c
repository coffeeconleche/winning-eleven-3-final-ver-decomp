#include "common.h"

/* View of the existing scratch byte; this declaration allocates no storage. */
extern u8 D_1F80029B __asm__("0x1F80029B");

/* Only the incoming low byte is observed; original API and meaning are provisional. */
void func_800171FC(u32 value)
{
    D_1F80029B = value;
}
