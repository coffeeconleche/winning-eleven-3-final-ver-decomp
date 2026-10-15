#include "common.h"

/* Partial byte views of two existing scratch-memory state entries. Complete
 * layout and historical state meanings remain unknown; absolute scratch
 * addressing needs native adaptation. Keep both state checks and the count
 * reread after each possible clear, including the independent second check. */
void func_80068474(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u8 index = 0;

    do {
        u8 *entry = scratch + index;
        u8 count;

        if (entry[0x305] == 2 && entry[0x301] == 7) {
            if (entry[0x2CF] == 0) {
                entry[0x305] = 0;
            }
            count = entry[0x326];
            if (count == 0) {
                entry[0x305] = 0;
            } else {
                entry[0x326] = count - 1;
            }
        }

        entry = scratch + index;
        if (entry[0x305] == 1 && entry[0x303] == 7) {
            if (entry[0x2CF] == 0) {
                entry[0x305] = 0;
            }
            count = entry[0x326];
            if (count == 0) {
                entry[0x305] = 0;
            } else {
                entry[0x326] = count - 1;
            }
        }
        index++;
    } while (index < 2);
}
