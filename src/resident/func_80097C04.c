#include "common.h"

extern s32 D_800E7658;
extern s32 func_8001E694(u32 phase, s32 scale);
extern s32 func_8001E5A4(u32 phase, s32 scale);
/* Numeric access views of existing PS1 slots; no new storage is defined. */
extern u8 stageSlot __asm__("0x1F8002F0");
extern u16 amplitudeSlot __asm__("0x1F8002EA");

/* Known caller ignores the result; this void view retains the last helper's
 * full v0 residue. Historical declarations, indirect users, complete layouts
 * and native pointer/alignment/alias contracts remain provisional. */
void func_80097C04(void)
{
    /* The actual phase captures retain the measured conditional updates. */
    register u32 stage __asm__("$3") = stageSlot;
    u8 *scratch = (u8 *)0x1F800000;
    s32 component;
    s32 amplitude;
    s32 quotient;
    u32 base;
    u32 phase;
    u16 scale;

    switch ((u8)stage) {
    case 0:
        stage++;
        amplitudeSlot = 0x4400;
        *(u32 *)0x1F8001FC = -0x28F0;
        *(u8 *)0x1F8002E7 = 0;
        *(u32 *)0x1F800200 = -0xC0;
        *(u32 *)0x1F800204 = 0;
        stageSlot = stage;
        break;
    case 1:
        if (D_800E7658 >= 16) {
            u16 updated = amplitudeSlot - 0x180;
            amplitudeSlot = updated;
            /* Compare the newly stored low halfword as signed. */
            if ((s16)updated <= 0x1400) {
                register u32 nextStage __asm__("$2") = stage + 1;
                amplitudeSlot = 0x1400;
                *(u8 *)0x1F800309 = 1;
                stageSlot = nextStage;
            }
        }
        break;
    }
    /* All phases run both callbacks, including unrecognized phase values. */
    component = func_8001E694(scratch[0x2E7], (s16)*(u16 *)(scratch + 0x2EA));
    amplitude = (s16)*(u16 *)(scratch + 0x2EA);
    base = *(u32 *)(scratch + 0x1FC);
    *(u32 *)(scratch + 0x1F0) = base + (u32)component;
    quotient = (amplitude - 0x1400) / 4;
    /* Capture both second-call arguments BEFORE the intervening word store. */
    phase = scratch[0x2E7];
    scale = *(u16 *)(scratch + 0x2EA);
    *(u32 *)(scratch + 0x1F4) = (u32)-0x400 - (u32)quotient;
    component = func_8001E5A4(phase, (s16)scale);
    /* Late base reload and unsigned additions preserve word wrapping. */
    *(u32 *)(scratch + 0x1F8) = *(u32 *)(scratch + 0x204) + (u32)component;
}
