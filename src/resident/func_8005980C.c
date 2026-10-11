#include "common.h"

/* Only measured record/scratch views and signed-helper results are modeled;
 * complete layouts, selector domain, API and return contract are provisional.
 * The selector and both score bytes are accessed only after the scratch gates. */
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);
extern u8 D_1F8002DF __asm__("0x1F8002DF");
extern s32 D_1F8002C4 __asm__("0x1F8002C4");
extern u8 D_1F8002D1[] __asm__("0x1F8002D1");

void func_8005980C(u8 *record)
{
    u8 selector;
    s32 value;
    if (func_8001E6B8(3) != 0) {
        if (D_1F8002DF != 0 && D_1F8002C4 <= 0xD2EF) {
            selector = record[0x398];
            if (D_1F8002D1[selector] <= D_1F8002D1[selector ^ 1]) {
                value = func_8001E6B8(2) + 0xDB4;
            } else {
                value = func_8001E6B8(3) + 0xDB1;
            }
        } else {
            value = func_8001E6B8(3) + 0xDB1;
        }
        func_800AB620(value);
    }
}
