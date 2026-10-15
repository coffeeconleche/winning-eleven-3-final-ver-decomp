#include "types.h"

extern u8 D_800FF748[];
extern void func_800A1E50(u8 *);
extern void func_800A24E4(u8 *);

/* Existing record storage. Full record bounds and native helper declarations
 * remain provisional. Neither incoming argument registers nor helper results
 * are consumed by this function. */
void func_800A2684(void)
{
    u8 *records = D_800FF748;
    u8 *record;
    s32 count, multiple;

    switch (*(u8 *)0x1F800328) {
    case 0:
        return;
    case 1:
        count = *(s32 *)0x1F800290;
        /* Division truncates toward zero; this multiple remains in s32. */
        multiple = (count / 300) * 300;
        if (count == multiple) goto check;
        return;
    case 2:
        if (*(s32 *)0x1F800290 % 100 != 0) return;
        break;
    }
check:
    record = records + 0x7D0;
    if (records[0xB6A] == 1) {
        func_800A1E50(record);
        func_800A24E4(record);
    }
    /* Both helpers may mutate storage: retain the fresh second-flag read. */
    record = records + 0x32C8;
    if (records[0x3662] == 1) {
        func_800A1E50(record);
        func_800A24E4(record);
    }
}
