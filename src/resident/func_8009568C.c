#include "common.h"

/* Scratch-address views; original helper API and state meanings are unknown. */
s32 func_8009568C(void)
{
    if (*(u8 *)0x1F8002E1 == 4 || *(u8 *)0x1F80029A == 8) {
        return 1;
    }
    return 0;
}
