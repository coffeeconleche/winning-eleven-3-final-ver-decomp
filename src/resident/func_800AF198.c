#include "common.h"

/* Measured byte-copy argument view; the complete BIOS/API contract is unknown. */
extern u8 D_800CEB30[];
extern void func_800B1118(void *, const void *, s32);

void *func_800AF198(void *destination)
{
    func_800B1118(destination, D_800CEB30, 20);
    return destination;
}
