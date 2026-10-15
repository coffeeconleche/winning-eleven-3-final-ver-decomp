#include "common.h"

extern u8 D_80105E18[];
extern u32 D_801A6000[];
extern u32 D_801C8000;
extern void func_8001BD78(u8 *record);
extern void func_8001D568(u8 *record);

/* Partial byte/halfword/word view of existing 0x90-byte records.
 * All nine incoming word slots are consumed; byte and halfword formal views
 * express the measured narrowing. Historical field meanings and API remain
 * provisional. Data words at offset 0x10 hold resident addresses, requiring
 * explicit pointer translation in a native port. */

void func_8001D470(u8 index, u8 key, s16 x, s16 z, u8 phase,
                   u32 scaleX, u32 scaleY, u32 scaleZ, u8 type)
{
    u8 *record = D_80105E18 + index * 0x90;

    record[0x8C] = index;
    record[0] = type;
    if (index == 0) {
        *(u32 *)(record + 0x10) = D_801C8000;
    } else {
        *(u32 *)(record + 0x10) = D_801A6000[key & 0xFF];
    }
    func_8001BD78(record);
    *(s16 *)(record + 8) = x;
    *(s16 *)(record + 0xA) = 0;
    *(s16 *)(record + 0xC) = z;
    *(s16 *)(record + 0x14) = 0;
    record[0xE] = phase;
    *(s16 *)(record + 0x18) = 0;
    *(u32 *)(record + 0x1C) = scaleX;
    *(u32 *)(record + 0x20) = scaleY;
    *(u32 *)(record + 0x24) = scaleZ;
    record[0x8D] = 0;
    func_8001D568(record);
}
