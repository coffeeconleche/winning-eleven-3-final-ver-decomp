#include "common.h"

/* Scalar views of existing scratch bytes; these allocate no storage.
 * Only the incoming low byte is stored; original API and meanings are provisional. */
extern u8 D_1F800298 __asm__("0x1F800298");
extern u8 D_1F80029A __asm__("0x1F80029A");
extern u8 D_1F80029B __asm__("0x1F80029B");
extern u8 D_1F800299 __asm__("0x1F800299");

void func_80017178(u32 value)
{
    D_1F800298 = value;
    D_1F80029A = 0;
    D_1F80029B = 0;
    D_1F800299 = 0;
}
