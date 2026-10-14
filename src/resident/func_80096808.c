#include "common.h"

/* Existing storage and observed helper word interfaces only. Historical
 * layouts/APIs, native alias contracts and the formal return API are unknown;
 * the known direct caller ignores the path-dependent output-register words. */
extern u8 D_800FF748[];
extern void func_80051A84(u32 *);
extern u32 func_8001E694(u32, s32);
extern u32 func_8001E5A4(u32, s32);
/* Typed views of existing cells: no storage or MMIO qualification is added. */
extern u8 scratch2AD __asm__("0x1F8002AD");
extern u8 scratch309 __asm__("0x1F800309");
extern u8 scratch2F2 __asm__("0x1F8002F2");
extern u8 scratch2E7 __asm__("0x1F8002E7");
extern s16 scratch2EA __asm__("0x1F8002EA");
extern u32 scratch200 __asm__("0x1F800200");
extern u32 scratch1FC __asm__("0x1F8001FC");
extern u32 scratch204 __asm__("0x1F800204");
extern u32 scratch1F4 __asm__("0x1F8001F4");
extern u32 scratch1F0 __asm__("0x1F8001F0");
extern u32 scratch1F8 __asm__("0x1F8001F8");

void func_80096808(void)
{
    /* GCC 2.7.2 captures of the actual bank, callback argument and word sums. */
    register u8 *bank __asm__("$5") = D_800FF748;
    u8 index = (u8)(scratch2AD % 24U);
    u8 *record = bank + index * 1000;
    register s32 amplitude __asm__("$5");
    register u32 position __asm__("$3");
    u32 component;

    if (scratch309 != 2) {
        if (record[0x39A]) {
            scratch2F2 = 3;
            func_80051A84((u32 *)0x1F8001F0);
            scratch309 = 2;
        } else {
            /* Keep the full captured angle word until its byte views are used. */
            register u32 angle __asm__("$4") = record[0x3AA];
            scratch2EA = 0x1000;
            scratch309 = 1;
            angle += 0x84;
            scratch2E7 = angle;
            position = (u32)*(s16 *)(record + 2);
            scratch200 = (u32)-0x200;
            scratch1FC = position;
            scratch204 = (u32)*(s16 *)(record + 6);
            component = func_8001E694((u8)angle, 0x1000);

            /* Capture all three rereads before the 1F4 store; sums wrap unsigned. */
            angle = scratch2E7;
            amplitude = scratch2EA;
            position = (u32)*(s16 *)(record + 2);
            scratch1F4 = (u32)-0x300;
            position += component;
            scratch1F0 = position;
            component = func_8001E5A4(angle, amplitude);
            position = (u32)*(s16 *)(record + 6);
            position += component;
            scratch1F8 = position;
        }
    }
}
