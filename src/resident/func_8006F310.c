#include "common.h"

/* Byte views of existing storage; these offsets do not establish complete
 * record layouts or the global's wider storage type. */
extern u8 D_8010551E[];
extern u8 D_800EF864;

void func_8006F310(void)
{
    u32 count = 0;
    u8 *cursor = D_8010551E;

    do {
        if (cursor[-0x12] != 0) {
            u8 value = D_800EF864;

            cursor[2] = value;
            cursor[1] = value;
            cursor[0] = value;
        }
        count++;
        cursor += 40;
    } while ((u8)count < 58);
}
