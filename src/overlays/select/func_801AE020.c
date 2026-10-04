#include "common.h"

extern u8 D_801DA348[], D_800F1018[];
extern s32 func_8001E6B8(s32);
extern void func_800B3FB8(void *, void *, u32);

/* Update the measured ten-byte records and submit both coordinate views.
 * Record field meanings and the original aggregate type remain unknown. */
void func_801AE020(void) {
    u8 *scratch = (u8 *)0x1F800000;
    u8 *record = D_801DA348;
    s32 i = 0;
    u8 *draw = scratch + 0x15C;
    u8 *table = D_800F1018;
    u8 *coordinate = D_801DA348 + 6;
    do {
        /* Bind only the first raw byte; both bytes are signed after loading. */
        register u32 dx __asm__("$3");
        u32 dy;
        u32 x;
        u32 oldY;
        u32 y;
        u32 phase;
        u32 low;
        u32 mode;
        u32 v;
        /* Keep one coordinate cursor, rather than a second hoisted x cursor. */
        __asm__("" : "=r"(coordinate) : "0"(coordinate));
        dx = coordinate[2];
        dy = coordinate[3];
        x = *(u16 *)(coordinate - 2);
        /* Retain the two unsigned byte loads before their signed conversion. */
        __asm__("" : "=r"(dx), "=r"(dy) : "0"(dx), "1"(dy), "r"(x));
        x += (s8)dx;
        oldY = *(u16 *)coordinate;
        *(u16 *)(coordinate - 2) = x;
        y = oldY + (s8)dy;
        *(u16 *)coordinate = y;
        if ((u16)(*(u16 *)(coordinate - 2) + 200) < 401) {
            s32 signedY = (s16)y;
            if (signedY < 161) {
                goto updated;
            }
        }
        {
            /* The reset lookup wraps the index separately, and each store is
             * completed before the following random-helper call. */
            u8 *reset = D_801DA348 + (u8)i * 10;
            reset[0] = (func_8001E6B8(0x10C) & 7) << 4;
            *(u16 *)(reset + 4) = func_8001E6B8(0x100) - 128;
            *(u16 *)(reset + 6) = -140 - func_8001E6B8(16);
            reset[8] = func_8001E6B8(8) - 4;
            reset[9] = func_8001E6B8(2) + 1;
            reset[1] = func_8001E6B8(128) + 64;
            reset[2] = func_8001E6B8(128) + 64;
            reset[3] = func_8001E6B8(128) + 64;
        }
updated:
        phase = record[0];
        low = (phase + 1) & 15;
        record[0] = low | (phase & 0xF0);
        *(u16 *)(scratch + 0x160) = *(u16 *)(coordinate - 2);
        {
            u32 firstY = *(u16 *)coordinate;
            *(u16 *)(scratch + 0x166) = 8;
            *(u16 *)(scratch + 0x164) = 8;
            scratch[0x16A] = low * 8;
            *(u16 *)(scratch + 0x162) = firstY;
        }
        v = ((record[0] >> 4) & 1) ? 0x60 : 0x68;
        {
            /* Preserve early argument setup without moving the counter updates. */
            register u8 *argument __asm__("$4") = draw;
            register u32 selector __asm__("$6") = 1;
            __asm__("" : "=r"(argument), "=r"(selector) : "0"(argument), "1"(selector));
            *(u16 *)(scratch + 0x16C) = 0x160;
            *(u16 *)(scratch + 0x16E) = 0x1F6;
            i++;
            scratch[0x16B] = v;
            mode = scratch[0x29D];
            record += 10;
            *(u16 *)(scratch + 0x168) = 27;
            scratch[0x170] = ((u8 *)coordinate)[-5];
            scratch[0x171] = ((u8 *)coordinate)[-4];
            scratch[0x172] = ((u8 *)coordinate)[-3];
            *(u32 *)(scratch + 0x15C) = 0;
            func_800B3FB8(argument, (u8 *)((u32)(mode * 20) + (u32)table), selector);
        }
        {
            /* Keep the reloaded mode offset in the second call argument register. */
            register u32 selected __asm__("$5");
            u32 secondY;
            /* The first submission can mutate mode and the coordinate fields. */
            mode = scratch[0x29D];
            selected = mode * 20;
            *(u16 *)(scratch + 0x160) = -*(u16 *)(coordinate - 2);
            secondY = *(u16 *)coordinate - 40;
            coordinate += 10;
            *(u16 *)(scratch + 0x162) = secondY;
            func_800B3FB8(draw, (u8 *)(selected + (u32)table), 1);
        }
    } while (i < 64);
}
