#include "types.h"

extern u8 D_800E6D90[];
typedef struct { u16 x, y, z, unused; } Resident98428Vertex;
extern u16 D_800CA70C[], D_800CA70E[], D_800CA710[];
extern s16 D_800CA7EC[], D_800CA7EE[], D_800CA7F0[];
extern s16 D_800CA7F2[], D_800CA7F4[], D_800CA7F6[];
extern u8 D_800FF6A4;
extern void func_800ADD1C(u8 *);
extern void func_800ADCB8(u8 *, u32);
extern s32 func_800ADAD8(s32, s32, s32, s32);
extern u32 func_800ADB14(s32, u32);

/* Partial views of existing coordinate/UV/packet storage; native layouts,
 * allocations and full alias contracts remain provisional. No new storage. */
void func_80098428(void)
{
    s32 bank = 0;
    Resident98428Vertex *vertex = (Resident98428Vertex *)D_800E6D90;
    s32 sourceOffset = 0;
    register s32 bankOffset __asm__("$22");
    s32 stageOffset;
    s32 stage;
    s32 count, uvOffset;
    s32 color;
    u16 coordinate;
    s32 last;
    u8 *packet;

    do {
        vertex->x = *(u16 *)((u8 *)D_800CA70C + sourceOffset);
        coordinate = *(u16 *)((u8 *)D_800CA70E + sourceOffset);
        bank++;
        vertex->y = coordinate;
        coordinate = *(u16 *)((u8 *)D_800CA710 + sourceOffset);
        sourceOffset += 6;
        vertex->z = coordinate;
        vertex++;
    } while (bank < 17);
    bank = 0;
    color = 112;
    bankOffset = 0;
    *(u16 *)0x1F8000E0 = 0;
    D_800FF6A4 = 0;
    do {
        stage = 0;
        stageOffset = 0xEB0;
        do {
            s32 currentBank;
            count = 0;
            currentBank = bankOffset;
            uvOffset = 0;
            do {
                packet = *(u8 **)0x1F800190 + currentBank + stageOffset + count * 32;
                func_800ADD1C(packet);
                func_800ADCB8(packet, 1);
                *(u16 *)(packet + 0x16) = func_800ADAD8(0, 0, 0x1A0, 0x100);
                *(u16 *)(packet + 0xE) = func_800ADB14(0x30, 0x1F8);
                ((s8 *)packet)[0xC] = *(s16 *)((u8 *)D_800CA7EC + uvOffset) - 128;
                ((s8 *)packet)[0xD] = *(s16 *)((u8 *)D_800CA7EE + uvOffset) - 128;
                ((s8 *)packet)[0x14] = *(s16 *)((u8 *)D_800CA7F0 + uvOffset) - 128;
                ((s8 *)packet)[0x15] = *(s16 *)((u8 *)D_800CA7F2 + uvOffset) - 128;
                ((s8 *)packet)[0x1C] = *(s16 *)((u8 *)D_800CA7F4 + uvOffset) - 128;
                /* Final low byte is captured before the RGB stores. */
                last = (u8)*(s16 *)((u8 *)D_800CA7F6 + uvOffset) - 128;
                count++;
                packet[4] = color;
                packet[5] = color;
                packet[6] = color;
                ((s8 *)packet)[0x1D] = last;
                uvOffset += 12;
            } while (count < 20);
            stage++;
            stageOffset += 0x280;
        } while (stage < 2);
        bank++;
        bankOffset += 0x3AC0;
    } while (bank < 2);
}
