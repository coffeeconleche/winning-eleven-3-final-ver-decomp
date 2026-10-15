#include "types.h"

/* Observed record fields only; complete storage and native contracts are unknown. */
extern u8 D_800FF748[];
extern s32 func_8005CE30(u32 identifier);

s32 func_8008A144(u8 *record)
{
    s32 count;
    s32 index;
    u8 *candidate;
    u8 *coordinate;
    u32 selector;

    selector = (u8)func_8005CE30(record[0x38D]);
    count = 0;
    index = 0;
    candidate = D_800FF748;
    candidate += (u8)(selector % 24) * 1000;
    coordinate = candidate + 2;

    do {
        if (*candidate != 0) {
            if (record[0x399] == 0) {
                if (*(s16 *)(record + 2) - 128 < *(s16 *)coordinate) {
                    count++;
                }
            } else if (*(s16 *)coordinate < *(s16 *)(record + 2) + 128) {
                count++;
            }
        }
        index++;
        coordinate += 1000;
        candidate += 1000;
    } while (index < 11);
    return count < 2;
}
