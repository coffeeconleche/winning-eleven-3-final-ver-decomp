#include "common.h"

/* Existing byte-addressed backing store; table extent and ownership unknown.
 * Only the two signed-halfword access offsets are established here. */
extern u8 D_800FF748[];
extern u32 func_800ADB14(s32 first, s32 second);

/* Provisional call-site API: the selector is a signed word, not a byte.
 * Only mode narrows. Index and PS1 address arithmetic wrap at 32 bits; valid
 * mapped/aligned read domains remain unknown. Return zero-extends low 16 bits. */
u16 func_80050308(s32 selector, u32 mode)
{
    u8 *base = D_800FF748;
    u32 index;
    u8 *entry;

    if ((u8)mode != 0) {
        index = (u32)selector + 0xD3;
    } else if (selector < 0x10) {
        index = (u32)selector + 0x20;
    } else if (selector < 0x20) {
        index = (u32)selector + 0x30;
    } else if (selector == 0x2B) {
        index = 0x22;
    } else {
        index = (u32)selector + 0xA8;
    }
    entry = (u8 *)((u32)base + index * 4);
    return func_800ADB14(*(s16 *)(entry + 0x7FA6), *(s16 *)(entry + 0x7FA4));
}
