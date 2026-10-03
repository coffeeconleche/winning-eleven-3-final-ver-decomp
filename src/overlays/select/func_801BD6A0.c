#include "common.h"

extern u32 D_801DADD0[], D_801DAE10[];

u32 func_801BD6A0(u8 index, u8 bit) {
    /* Retain the measured eight-byte leaf frame; its original purpose is
     * unknown. No access to this reservation is invented. */
    u8 frameSlot[8];
    u32 first = D_801DADD0[index];
    u32 second = D_801DAE10[index];
    return (((first >> bit) & 1) << 1) | ((second >> bit) & 1);
}
