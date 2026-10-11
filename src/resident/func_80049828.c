#include "common.h"

/* Partial access view; complete ownership, field meanings and domains unknown. */
typedef struct {
    u8 unknown[0x392];
    u8 byte392;
    u8 unknown393[5];
    u8 byte398;
    u8 unknown399[2];
    u8 byte39B;
} Resident49828View;

extern u8 D_8010C32C[];
extern s32 func_8001E6B8(s32);

/* Keep the table load and helper conditional; the 12/264-byte strides are
 * access views, not recovered extents. The extracted nibble can exceed nine:
 * preserve the signed helper argument/result without claiming positive bounds,
 * and narrow only the final byte result after word arithmetic. */
u32 func_80049828(Resident49828View *record, u32 base)
{
    u32 word;
    u32 result;

    if (record->byte39B != 0) {
        goto adjust;
    }
    result = (u8)base;
    goto done;
adjust:
    word = *(u32 *)(D_8010C32C + record->byte392 * 12 + record->byte398 * 264);
    result = (u8)(base + func_8001E6B8(9 - (s32)((word >> 12) & 15)));
done:
    return result;
}
