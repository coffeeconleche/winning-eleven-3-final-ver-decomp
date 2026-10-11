#include "common.h"

/* Access view of the existing byte table; its complete extent and valid
 * selector domain are not established by this helper. */
extern u8 D_800C6B74[];

/* The record pointer is a partial byte view. Only the selected source is
 * read, and the byte result is zero-extended to a word. Original declarations,
 * record ownership and the scratch selector's meaning remain provisional. */
u32 func_8004A07C(const u8 *record)
{
    u32 result = *(u8 *)0x1F80028C;

    if (result == 0) {
        result = record[0x3AA];
    } else {
        result = D_800C6B74[result];
    }
    return result;
}
