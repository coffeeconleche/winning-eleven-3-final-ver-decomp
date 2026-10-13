#include "common.h"

/* Strided views of existing interleaved halfwords; table domains are unknown. */
extern s16 D_800C7DF8[][10][2];
extern s16 D_800C7DFA[][10][2];

u8 func_80081210(u8 *record)
{
    s32 offset6 = D_800C7DFA[((u8 *)0x1F8002FD)[record[0x398]]]
                              [(record[0x38D] - 1) % 11 - 1][0];
    s32 coordinate6 = *(s16 *)(record + 6);
    s32 adjusted6;
    s32 offset2;
    s32 coordinate2;
    {
        u8 *scratch = (u8 *)0x1F800000;
        s32 element;

        if (record[0x399]) {
            adjusted6 = coordinate6 + offset6;
        } else {
            adjusted6 = coordinate6 - offset6;
        }
        element = record[0x38D] - 1;
        offset2 = D_800C7DF8[(scratch + record[0x398])[0x2FD]]
                                  [element % 11 - 1][0];
    }
    coordinate2 = *(s16 *)(record + 2);

    /* Separate mode reads and the target's low-word signed arithmetic remain
     * intentional; native signed-overflow portability is not established. */
    return (record[0x399] ? coordinate2 + offset2 : coordinate2 - offset2) *
           (record[0x399] ? coordinate2 + offset2 : coordinate2 - offset2) +
           adjusted6 * (record[0x399] ? coordinate6 + offset6
                                     : coordinate6 - offset6) <= 0x3FFFF;
}
