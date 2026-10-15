#include "types.h"

extern s16 D_800CA6B8[], D_800CA6BA[], D_800CA6BC[], D_800CA6BE[];
extern s16 D_800CA6C0[], D_800CA6C2[], D_800CA6C4[];
extern u8 D_800EF838;
extern void func_80050888(u32);
extern void func_800B53D8(u32);
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);

extern u8 scratch2F0 __asm__("0x1F8002F0");
extern u32 scratch32C __asm__("0x1F80032C");
extern u8 scratch2E7 __asm__("0x1F8002E7");
extern u16 scratch2E8 __asm__("0x1F8002E8");
extern s16 scratch2EA __asm__("0x1F8002EA");

/* Partial access views of existing guest storage, not native owners. */
void func_8009787C(void)
{
    u8 mode = scratch2F0;
    s32 counter, divisor, weight, remainder, firstX, firstZ, second;
    s32 input;
    s32 quotient;
    s32 weightedX, weightedZ;
    u32 phase;
    s32 offset;
    s32 scale;
    u8 currentMode;
    u16 currentCounter;
    u32 focus;

    switch (mode) {
    case 0:
        if (D_800EF838 != 0) {
            offset = *(u8 *)0x1F8002E3 * 14;
            (*(u32 *)0x1F8001F0) = *(s16 *)((u8 *)D_800CA6B8 + offset);
            (*(u32 *)0x1F8001F4) = *(s16 *)((u8 *)D_800CA6BA + offset);
            (*(u32 *)0x1F8001F8) = *(s16 *)((u8 *)D_800CA6BC + offset);
            (*(u32 *)0x1F8001FC) = *(s16 *)((u8 *)D_800CA6BE + offset);
            (*(u32 *)0x1F800200) = *(s16 *)((u8 *)D_800CA6C0 + offset);
            (*(u32 *)0x1F800204) = *(s16 *)((u8 *)D_800CA6C2 + offset);
            scale = *(s16 *)((u8 *)D_800CA6C4 + offset);
            (*(u8 *)0x1F8002F2) = 0;
            scratch32C = scale;
            func_80050888(4);
            func_800B53D8(scratch32C);
            scratch2F0 = scratch2F0 + 1;
        }
        break;
    case 1:
        if ((*(u8 *)0x1F8002F2) == 2) {
            func_80050888(0);
            scratch32C = 0x400;
            func_800B53D8(0x400);
            currentMode = scratch2F0;
            (*(u32 *)0x1F800200) = -0xC0;
            (*(u32 *)0x1F800204) = -0x1E00;
            scratch2EA = 0x1900;
            (*(u32 *)0x1F8001F4) = -0x800;
            (*(u32 *)0x1F8001FC) = 0;
            scratch2E7 = 4;
            scratch2E8 = 0;
            scratch2F0 = currentMode + 1;
        }
        break;
    case 2:
        input = (s16)scratch2E8;
        divisor = scratch2E7;
        remainder = input % divisor;
        quotient = input / divisor;
        phase = quotient & 0xFF;
        weight = divisor - remainder;
        firstX = func_8001E694(phase, scratch2EA);
        counter = (quotient + 1) & 0xFF;
        second = func_8001E694(counter, scratch2EA);
        weightedX = (s32)((u32)((long long)firstX * weight) + (u32)((long long)second * remainder));
        (*(u32 *)0x1F8001F0) = (*(u32 *)0x1F8001FC) + (u32)(weightedX / (s32)scratch2E7);
        firstZ = func_8001E5A4(phase, scratch2EA);
        second = func_8001E5A4(counter, scratch2EA);
        weightedZ = (s32)((u32)((long long)firstZ * weight) + (u32)((long long)second * remainder));
        weightedZ /= (s32)scratch2E7;
        currentCounter = scratch2E8;
        focus = (*(u32 *)0x1F800204);
        scratch2E8 = currentCounter + 1;
        (*(u32 *)0x1F8001F8) = focus + (u32)weightedZ;
        break;
    }
}
