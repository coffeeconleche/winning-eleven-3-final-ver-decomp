#include "common.h"

extern u8 D_800FF748[], D_80108667, D_8010866A, D_80191870[];
/* The same table address, without allocating another object. This access view
 * retains the measured post-callback table load rather than keeping its base
 * across the callback. Three-byte row meanings and bounds remain unknown. */
extern u8 tableAfterSubmit[] __asm__("D_80191870+0");
extern s32 func_8001E6B8(s32);
extern void func_800AB620(s32);
extern void func_8005A1F0(u8, u16);

/* Byte-table selection and ordered submissions. The helper declarations are
 * access views, not recovered complete original APIs. The two scoped bindings
 * and two empty identities survived joint instruction-diff minimization.
 * No volatile memory view, clobber, or artificial frame reservation is needed. */
void func_8018F93C(void)
{
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u32 key;

    if ((D_80108667 & 0xCF) == 0x40 && (D_8010866A >> 4) == 3) {
        func_800AB620(func_8001E6B8(6) + 0xC7D);
        return;
    }
    if (func_8001E6B8(3) != 0) {
        u32 side = base[0x8F15];
        u32 initial = *(u8 *)((u32)scratch + side + 0x2DD);
        u32 firstKey = D_80191870[initial * 3];

        if (firstKey != 255 && (base + side)[0x8F16] == 0) {
            func_800AB620(firstKey + 0xC5A);
            {
                /* The callback may change both the side and its entry. */
                u32 again = *(u8 *)((u32)scratch + base[0x8F15] + 0x2DD);
                if (tableAfterSubmit[again * 3] >= 7) {
                    func_8005A1F0(again, 0xFD6);
                }
            }
            return;
        }
    }
    {
        u32 amount = func_8001E6B8(2);

        if ((base[0x8F1F] & 0xCF) == 0x40) {
            u32 entry = *(u8 *)((u32)scratch + base[0x8F15] + 0x2DD);
            u32 row;

            row = entry * 2;
            if (entry == 35) {
                u32 pair = (u8)func_8001E6B8(2);
                pair *= 2;
                func_800AB620(pair + 0xC79);
                func_800AB620(pair + 0xC7A);
                return;
            }
            {
                u8 *table = D_80191870;
                /* Retain the observed address materialization before row add. */
                __asm__("" : "=r"(table) : "0"(table));
                row += entry;
                row += (u32)table;
                {
                    register u32 narrowed = (u8)amount;
                    row += narrowed;
                    {
                        register u32 value __asm__("$16") = *(u8 *)(row + 1);
                        /* Keep this path's real byte capture before the join. */
                        __asm__("" : "=r"(value) : "0"(value));
                        key = value;
                    }
                }
            }
        } else {
            u32 entry = *(u8 *)((u32)scratch + base[0x8F15] + 0x2DD);
            u8 *table;
            u32 row;

            table = D_80191870;
            row = entry * 3 + (u32)table;
            {
                register u32 narrowed = (u8)amount;
                key = *(u8 *)(row + narrowed + 1);
            }
        }
    }
    key = (u8)key;
    {
        register u32 twice __asm__("$17") = key * 2;
        func_800AB620(twice + 0xC6B);
        if (key != 6) {
            func_8005A1F0(*(u8 *)((u32)scratch + base[0x8F15] + 0x2DD), 0xFD6);
        }
        func_800AB620(twice + 0xC6C);
    }
}
