#include "common.h"

/* Existing scratch-word access view; allocates no storage. */
extern u32 scratch2C4 __asm__("0x1F8002C4");
extern u8 *D_80105BA4;
/* Lookup-word pointer and raw result views; complete helper APIs, table
 * extents and the returned record layout remain provisional. */
extern u8 *func_8001D004(u32);
extern u32 func_8004F3CC(void);
extern void func_8005A4FC(void);
extern void func_8005A4F4(void);

void func_8004F25C(void)
{
    u32 value;
    s16 first;
    s16 second;
    s16 third;
    s16 fourth;
    u8 *record;
    s32 offset;

    if (scratch2C4 == 0) {
        D_80105BA4 = func_8001D004(0x24);
        func_8005A4FC();
    } else {
        value = func_8004F3CC();
        /* Keep full unsigned quotients for digit extraction before narrowing.
         * No range restriction on the helper's raw word result is assumed. */
        first = value / 36000;
        second = value / 3600 - (value / 36000) * 10;
        third = (value % 3600) / 600;
        fourth = (value % 3600) / 60 - ((value % 3600) / 600) * 10;
        record = func_8001D004(5);
        if (first == 0) {
            record[0x22] = 0x5B;
            offset = 9;
        } else {
            record[0x22] = 0x58;
            offset = 0;
        }
        *(s16 *)(record + 6) = offset - 24;
        /* Signed-halfword values times16 fit s32, including negative values;
         * multiplication avoids undefined negative signed left shifts.
         * The byte stores retain only the original low eight bits. */
        record[0x1B] = first * 16;
        record[0x27] = second * 16;
        record[0x33] = third * 16;
        record[0x3F] = fourth * 16;
        func_8005A4F4();
    }
}
