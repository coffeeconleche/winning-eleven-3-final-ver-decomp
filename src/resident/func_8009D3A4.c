#include "common.h"

/* Byte-offset access view; complete record layout and API are unknown.
 * The void view retains measured $v0 = 2 without claiming a return contract. */
void func_8009D3A4(u8 *record)
{
    if (*(u8 *)0x1F80029A != 2) {
        record[0x3E2] = 0;
        record[0x3E3] = 0;
    }
}
