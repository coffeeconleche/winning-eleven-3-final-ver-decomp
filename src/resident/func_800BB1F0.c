#include "common.h"

void func_800BB1F0(u32 *destination, u32 count)
{
    /* For a nonempty span, the remaining index wraps after the last store. */
    u32 remaining = count - 1;

    if (count == 0)
        return;
    do {
        *destination = 0;
        --remaining;
        ++destination;
    } while (remaining != (u32)-1);
}
