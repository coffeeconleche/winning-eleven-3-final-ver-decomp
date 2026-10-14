#include "common.h"

/* Existing data and partial helper/storage views, not complete layouts. */
extern u8 D_800CB690[];
/* Existing pointer word; its native pointer representation is not inferred. */
extern u32 scratch2F4 __asm__("0x1F8002F4");
extern void func_800AB620(s32);
extern void func_8005A218(void);

/* Void is provisional: retail leaves 0x7FFF in v0 and known caller ignores it. */
void func_800A7D58(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 position = 0x32FE;
    {
        u8 *record = (u8 *)scratch2F4;
        u32 speed = *(u32 *)(record + 0x3A0);
        *(u32 *)(record + 0x3A0) = (speed * 6U) / 10U + 0x1000U;
    }
    {
        /* Capture the pointer again after the word store. */
        u8 *record = (u8 *)*(u32 *)(scratch + 0x2F4);
        D_800CB690[0] = 5;
        if (*(s16 *)(record + 2) < 0) {
            position = -0x32FE;
        }
        *(s16 *)(record + 2) = position;
    }
    {
        /* The ordering qualifier retains the observed post-store reload;
         * it does not declare this existing pointer word to be MMIO. */
        u8 *record = (u8 *)*(volatile u32 *)(scratch + 0x2F4);
        register u32 speed __asm__("$2") = *(u32 *)(record + 0x3A0);
        {
            u32 angle = record[0x3A4];
            register u32 numerator __asm__("$5") = speed << 7;
            u32 wrapped;
            u32 half;
            u32 offset;
            /* Empty numerator identity preserves the observed capture schedule.
             * It emits no game instructions and has no clobbers. */
            __asm__("" : "=r"(numerator) : "0"(numerator));
            offset = angle + 128U;
            angle += offset;
            wrapped = (u8)angle;
            if (wrapped > 128U) {
                s32 reverse = (u8)(0U - angle);
                half = reverse >> 1;
            } else {
                half = wrapped >> 1;
            }
            /* This addition is decimal 1000, unlike the earlier 0x1000. */
            {
                register u32 result __asm__("$2") = numerator / (half + 128U);
                *(u32 *)(record + 0x3A0) = result + 1000U;
            }
        }
    }
    {
        u8 *record = (u8 *)*(u32 *)(scratch + 0x2F4);
        u32 angle = record[0x3A4];
        record[0x3A4] = (u8)(128U - angle);
    }
    func_800AB620(0x515);

    if (scratch[0x2A9] == 0) {
        func_8005A218();
    } else {
        {
            u8 *record = (u8 *)*(u32 *)(scratch + 0x2F4);
            *(s16 *)(record + 2) = *(s16 *)(record + 2) < 0 ? -0x3361 : 0x3361;
        }
        {
            u8 *record = (u8 *)*(u32 *)(scratch + 0x2F4);
            *(s16 *)(record + 6) = *(s16 *)(record + 6) < 0 ? -0x3D2 : 0x3D2;
        }
        {
            u8 *record = (u8 *)*(u32 *)(scratch + 0x2F4);
            if (*(s16 *)(record + 2) > 0) {
                record[0x3A4] = 0;
            } else {
                record[0x3A4] = 128;
            }
        }
    }
    *(u32 *)(scratch + 0x2B0) = 13;
    *(u16 *)(scratch + 0x31C) = 8;
    scratch[0x2F2] = 0;
    *(u16 *)(scratch + 0x2B8) = 0x7FFF;
}
