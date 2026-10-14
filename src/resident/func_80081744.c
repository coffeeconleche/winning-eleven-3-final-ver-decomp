#include "common.h"

extern s32 func_8005CE14(u32);
/* Existing BSS access views; no new storage or array-extent claim. */
extern u8 D_800FF748[];
extern u8 D_800E6D5C;

/* Return the accepted record's freshly read byte ID, or zero after eleven
 * candidates. Full layouts, helper/history/indirect APIs and native pointer,
 * alignment and alias contracts remain provisional. Scratch accesses do not
 * imply hardware volatility. Signed comparisons interpret wrapped low words. */
u32 func_80081744(u8 *record, u32 bound)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 start = (u8)func_8005CE14(record[0x38D]);
    s32 radius = (u16)bound;
    u32 boundSquared = (u32)((long long)radius * radius);
    /* Real roster-base capture retains its observed pre-division lifetime. */
    register u8 *roster __asm__("$5") = D_800FF748;
    u8 index = start % 24u;
    u8 *current = roster + index * 1000;
    u32 excluded = D_800E6D5C;
    s32 iteration;

    for (iteration = 0; iteration < 11; iteration++, current += 1000) {
        u32 scratchID;
        u32 id;
        u32 facing, otherFacing, difference;
        s32 first, second;
        u32 square;
        /* Actual field-comparison value 2: binding retains the measured
         * local comparison setup instead of a hoisted constant register.
         * It is assigned after the guards, before its only comparison use. */
        register s32 requiredState __asm__("$2");

        if (current[0] == 0 || record == current) {
            continue;
        }
        requiredState = 2;
        if (*(s16 *)(current + 0x3C8) != requiredState) {
            continue;
        }
        scratchID = scratch[0x2AD];
        id = current[0x38D];
        if (id == scratchID || id == excluded) {
            continue;
        }
        facing = record[0x3A4];
        otherFacing = current[0x3A4];
        difference = (facing - otherFacing) & 255;
        if (difference >= 129u ? (s32)((otherFacing - facing) & 255) < 13 :
                                (s32)difference < 13) {
            first = *(s16 *)(record + 2) - *(s16 *)(current + 2);
            /* Widen each product, retain its low word, then add unsigned words:
             * neither the bound square nor coordinate sum assumes signed overflow. */
            square = (u32)((long long)first * first);
            second = *(s16 *)(record + 6) - *(s16 *)(current + 6);
            if ((s32)(square + (u32)((long long)second * second)) <
                (s32)boundSquared) {
                return current[0x38D];
            }
        }
    }
    return 0;
}
