#include "common.h"

/* Existing scratch-byte address view; no storage or array extent is claimed. */
extern u8 D_1F800305[] __asm__("0x1F800305");

/* The low byte selects the access; original API and meaning are provisional. */
void func_8006845C(u32 index)
{
    D_1F800305[(u8)index] = 0;
}
