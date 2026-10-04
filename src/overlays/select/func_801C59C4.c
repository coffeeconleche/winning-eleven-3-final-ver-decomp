#include "common.h"

extern s32 D_801D5A48;
extern u8 D_8010A322, D_801D59A8, D_801DA055, D_8010865C;
/* Two access views retain the separate byte reads and the later narrowing.
 * This is a measured scratch access distinction, not a recovered qualifier. */
extern u8 scratchState __asm__("0x1F8002A2");
extern volatile u8 scratchStateReload __asm__("0x1F8002A2");
extern u8 scratchMode __asm__("0x1F80029A");

/* Word caller views preserve supplied bits; the callees narrow coordinates,
 * height and color/selector fields internally. Original prototypes are unknown. */
extern void func_8019645C(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801C6250(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_8019659C(s32, s32, s32, s32, s32, s32, s32, s32, s32);

/* The counter, mode and divisor meanings remain unidentified. */
void func_801C59C4(void) {
    s32 divisor;
    s16 x;
    u32 flags;

    if (D_801D5A48 == 0) return;
    if (scratchState == 130) {
        divisor = 330;
        if (D_8010A322 == 19) divisor = 130;
    } else if (scratchMode == 20) {
        divisor = 152;
        if (D_801D59A8 == 1) divisor = 134;
    } else if (scratchMode == 48) {
        divisor = 368;
        if (D_801DA055 == 24) divisor = 152;
    } else {
        flags = D_8010865C;
        if (flags & 8) divisor = 368;
        else if ((u8)flags == 3) divisor = 364;
        else if ((u8)flags == 2) divisor = 342;
        else if ((u8)flags == 1) divisor = 251;
        else return;
    }

    /* Reread rather than reuse the first test. Multiply in the measured low
     * word, then divide as signed and narrow to a signed halfword before cap. */
    if ((u8)scratchStateReload == 130) {
        x = (s32)((u32)D_801D5A48 * 62) / divisor + 25;
        if (x > 87) x = 87;
        func_8019645C(0, x, 17, 87, 17, 0, 0, 0, 0);
        func_8019645C(0, x, 18, 87, 18, 0, 0, 0, 0);
        func_8019645C(0, x, 19, 87, 19, 0, 0, 0, 0);
        func_801C6250(0, 25, 17, 87, 17, 127, 111, 15, 15, 111, 47, 0);
        func_801C6250(0, 25, 18, 87, 18, 239, 223, 63, 63, 223, 159, 0);
        func_801C6250(0, 25, 19, 87, 19, 127, 111, 15, 15, 111, 47, 0);
        func_8019659C(0, 24, 16, 64, 4, 255, 255, 255, 0);
    } else {
        x = (s32)((u32)D_801D5A48 * 120) / divisor - 59;
        if (x > 60) x = 60;
        func_8019645C(0, x, 14, 60, 14, 0, 0, 0, 0);
        func_8019645C(0, x, 15, 60, 15, 0, 0, 0, 0);
        func_8019645C(0, x, 16, 60, 16, 0, 0, 0, 0);
        func_801C6250(0, -59, 14, 60, 14, 127, 111, 15, 15, 111, 47, 0);
        func_801C6250(0, -59, 15, 60, 15, 239, 223, 63, 63, 223, 159, 0);
        func_801C6250(0, -59, 16, 60, 16, 127, 111, 15, 15, 111, 47, 0);
        func_8019659C(0, -61, 12, 123, 6, 255, 255, 255, 0);
        func_8019659C(0, -62, 11, 125, 8, 127, 127, 127, 0);
    }
}
