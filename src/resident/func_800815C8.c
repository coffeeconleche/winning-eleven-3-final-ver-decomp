#include "common.h"

extern s32 func_8005CE14(u32 value);
/* Existing roster backing storage, not an initialized array or extent claim. */
extern u8 D_800FF748[];

/* Partial record/scratch views and word return: the caller stores the low-byte
 * record ID, not a boolean. Historical declarations, indirect callers, full
 * layouts and native pointer/alignment/alias contracts remain provisional. */
u32 func_800815C8(u8 *record)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 start = (u8)func_8005CE14(record[0x38D]);
    s32 iteration = 0;
    /* This real base capture retains the original pre-division address load. */
    register u8 *roster __asm__("$5") = D_800FF748;
    u8 index = start % 24u;
    u8 *current = roster + index * 1000;


    for (; iteration < 11; iteration++, current += 1000) {
        u8 *coordinate = current + 6;
        s32 goal;
        u32 facing;
        u32 difference;
        s32 id;
        s32 first, second;
        u32 square;
        s32 halfTurn = -128;

        if (current[0] == 0 || record == current) {
            continue;
        }
        /* Reread the pointed coordinate only for an active non-self entry. */
        goal = *(s16 *)(*(u8 **)(scratch + 0x2F4) + 2) > 0 ? halfTurn : 0;
        facing = coordinate[0x3A4];
        difference = (goal - facing) & 255;
        if (difference >= 129u ? (s32)((facing - goal) & 255) >= 96 :
                                (s32)difference >= 96) {
            id = coordinate[0x387];
            if (id == 1) {
                continue;
            }
            if (id != 12) {
                first = *(s16 *)(record + 2) - *(s16 *)(coordinate - 4);
                /* Retain each low-word product, the wrapping sum and its
                 * signed comparison without signed multiplication overflow. */
                square = (u32)((long long)first * first);
                second = *(s16 *)(record + 6) - *(s16 *)coordinate;
                if ((s32)(square + (u32)((long long)second * second)) > 0x48995B9) {
                    return id;
                }
            }
        }
    }
    return 0;
}
