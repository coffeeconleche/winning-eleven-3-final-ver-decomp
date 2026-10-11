#include "common.h"

/* Existing byte storage view: stride and touched offsets are observed, not
 * a complete record layout or validated caller-value domain. */
extern u8 D_800FFF13[];

void func_8009F62C(u32 value)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 count = 0;
    s32 special = 5;
    u32 replacement = 32;
    u8 *cursor = D_800FFF13;

    do {
        if (scratch[0x2E1] == special && cursor[-0x49] != 0) {
            cursor[-1] = replacement;
        } else {
            cursor[-1] = value;
        }
        cursor[0] = 0;
        count++;
        cursor += 1000;
    } while ((u8)count < 22);
}
