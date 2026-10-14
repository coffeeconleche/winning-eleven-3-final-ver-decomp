#include "common.h"

/* Scalar access views of existing scratch storage; no data is allocated. */
extern u8 *scratch2F4 __asm__("0x1F8002F4");
extern u16 scratch0F8 __asm__("0x1F8000F8");
extern u16 scratch0FA __asm__("0x1F8000FA");
extern u16 scratch0FC __asm__("0x1F8000FC");
extern u8 scratch0B1 __asm__("0x1F8000B1");
extern u8 scratch0B2 __asm__("0x1F8000B2");
extern u8 scratch0B3 __asm__("0x1F8000B3");
extern u32 scratch0B4 __asm__("0x1F8000B4");
extern u32 scratch0B8 __asm__("0x1F8000B8");
extern u8 scratch0B0 __asm__("0x1F8000B0");
extern u8 scratch0BC __asm__("0x1F8000BC");
extern void func_8004BAA4(u16);

/* Partial record/helper views only; complete layouts and APIs are unknown. */
u32 func_800489A8(void)
{
    u8 *record = scratch2F4;
    u8 *scratch;
    s32 count;

    /* Keep the individual load/store order: record may overlap scratch. */
    scratch0F8 = *(u16 *)(record + 2);
    scratch0FA = *(u16 *)(record + 4);
    scratch0FC = *(u16 *)(record + 6);
    scratch0B1 = record[0x3A4];
    scratch0B2 = *(u16 *)(record + 0x3C8);
    scratch0B3 = *(u16 *)(record + 0x3CA);
    scratch0B4 = *(u32 *)(record + 0x3A0);
    scratch0B8 = *(u32 *)(record + 0xC);
    scratch0B0 = record[0x396];
    scratch0BC = *(u16 *)(record + 0x3BC);

    /* Reload callback state each time; count 255 itself is not simulated. */
    scratch = (u8 *)0x1F800000;
    for (count = 1; count < 255; count++) {
        s32 position;

        func_8004BAA4((u16)((u32)count + *(u32 *)(scratch + 0x290)));
        /* The unsigned halfword read is interpreted as signed at this test. */
        position = (s16)*(u16 *)(scratch + 0xF8);
        if (position < 0) {
            position = -position;
        }
        if (position >= 0x3320) {
            return (u8)count;
        }
        if (*(s32 *)(scratch + 0xB8) >= 0) {
            u32 height = *(u16 *)(scratch + 0xFA);
            u32 threshold = *(u16 *)(scratch + 0xF2);

            if ((s16)height >= (s16)threshold) {
                return (u8)count;
            }
        }
    }
    return 255;
}
