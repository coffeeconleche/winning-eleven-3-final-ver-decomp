#include "common.h"

extern void func_8004BAA4(u16);
/* Alias view of an existing scratch halfword, not new storage. */
extern s16 savedZ __asm__("0x1F8000FC");

void func_8002F0FC(u32 kind, u32 scale, s16 targetX, s16 targetZ, s32 zoom)
{
    /* Matching-only view of the retail frame's eight unaccessed bytes.
     * Historical purpose is unknown; no value or address is consumed. */
    u8 retail_stack_area[8];
    u8 *scratch = (u8 *)0x1F800000;
    u32 initial;

    scale <<= 8;
    {
        /* Matching bindings constrain initialized, genuinely consumed values. */
        u8 *record = *(u8 **)(scratch + 0x2F4);
        register s32 rawZoom __asm__("$3") = zoom;
        u32 x = (u32)*(s16 *)(record + 2);
        register u32 z __asm__("$9") = (u32)*(s16 *)(record + 6);

        *(u16 *)(scratch + 0xF8) = x;
        /* Convert before subtraction/squaring: these are low-word results. */
        x -= (u32)targetX;
        x *= x;
        *(u16 *)(scratch + 0xFA) = *(u16 *)(record + 4);
        z -= (u32)targetZ;
        {
            register u32 squareZ __asm__("$6") = z * z;
            /* Retail rereads this halfword before the following scratch writes. */
            register u32 snapshotZ __asm__("$11") = *(u16 *)(record + 6);
            *(u32 *)(scratch + 0xB8) = 0U - 736U * (u32)(s16)rawZoom;
            *(u8 *)(scratch + 0xB0) = 4;
            *(u8 *)(scratch + 0xB1) = kind;
            *(u8 *)(scratch + 0xB2) = 0;
            *(u32 *)(scratch + 0xB4) = scale;
            *(u16 *)(scratch + 0xFC) = snapshotZ;
            *(u16 *)(record + 0x3CC) = 1;
            initial = x + squareZ;
        }
    }
    {
        /* This access view preserves the reload after a possibly aliased store. */
        u8 *current = *(u8 * volatile *)(scratch + 0x2F4);
        register s32 cursor __asm__("$3") = *(s16 *)(scratch + 0xF8);
        s32 delta;
        u32 currentX, currentZ;

        delta = *(s16 *)(current + 2) - cursor;
        currentX = (u32)delta * (u32)delta;
        cursor = savedZ;
        delta = *(s16 *)(current + 6) - cursor;
        currentZ = (u32)delta * (u32)delta;
        while (currentX + currentZ < initial) {
            if (*(u32 *)(scratch + 0xB4) < 0x200) break;
            func_8004BAA4(0);
            {
                u8 *counterRecord = *(u8 **)(scratch + 0x2F4);
                ++*(u16 *)(counterRecord + 0x3CC);
            }
            cursor = *(u16 *)(scratch + 0xF8);
            current = *(u8 **)(scratch + 0x2F4);
            /* Matching-only actual repeated X cursor operand. */
            __asm__("" : "=r"(cursor) : "0"(cursor));
            delta = *(s16 *)(current + 2) - (s16)cursor;
            currentX = (u32)delta * (u32)delta;
            cursor = *(u16 *)(scratch + 0xFC);
            /* Matching-only actual repeated Z cursor operand. */
            __asm__("" : "=r"(cursor) : "0"(cursor));
            delta = *(s16 *)(current + 6) - (s16)cursor;
            currentZ = (u32)delta * (u32)delta;
        }
    }
    {
        u16 finalX = *(u16 *)(scratch + 0xF8);
        u16 finalZ = *(u16 *)(scratch + 0xFC);
        *(u16 *)(scratch + 0xFE) = finalX;
        *(u16 *)(scratch + 0x100) = finalZ;
    }
}
