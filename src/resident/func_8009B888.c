#include "types.h"

extern void func_800ADD6C(void *);
extern void func_800ADCB8(u8 *, u32);
extern s32 func_800ADAD8(s32, s32, s32, s32);
extern u32 func_800ADB14(s32, u32);
extern u8 D_800CB2A4[], D_800CB2A5[], D_800CB2A6[], D_800CB2A7[];
extern u8 D_800CB2A8[], D_800CB2A9[], D_800CB2AA[], D_800CB2AB[];

/* Byte/halfword views of existing packets and UV storage only. Complete
 * packet allocations and native helper/layout contracts remain provisional. */
void func_8009B888(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    s32 bank = 0;
    s32 color = 128;
    s32 bankOffset = 0;
    s32 count, packetOffset, remainder, uvOffset;
    u32 last;
    u8 *packet;

    do {
        count = 0;
        packetOffset = 0x31B0;
        do {
            /* Reread the bank pointer each iteration, before all callbacks. */
            packet = *(u8 **)(scratch + 0x190) + bankOffset + packetOffset;
            remainder = count % 5;
            func_800ADD6C(packet);
            func_800ADCB8(packet, 0);
            *(u16 *)(packet + 0x16) = func_800ADAD8(0, 0, 0x280, 0);
            *(u16 *)(packet + 0xE) = func_800ADB14(0xA0, 0x1F8);
            uvOffset = remainder * 8;
            packet[0xC] = D_800CB2A4[uvOffset] + 0x80;
            packet[0xD] = D_800CB2A5[uvOffset] + 0x80;
            packet[0x14] = D_800CB2A6[uvOffset] + 0x80;
            packet[0x15] = D_800CB2A7[uvOffset] + 0x80;
            packet[0x1C] = D_800CB2A8[uvOffset] + 0x80;
            packet[0x1D] = D_800CB2A9[uvOffset] + 0x80;
            packet[0x24] = D_800CB2AA[uvOffset] + 0x80;
            /* This byte is consumed before RGB writes, including aliases. */
            last = D_800CB2AB[uvOffset];
            count++;
            packet[4] = color;
            packet[5] = color;
            packet[6] = color;
            packet[0x25] = last + 0x80;
            packetOffset += 0x28;
        } while (count < 30);
        bank++;
        bankOffset += 0x3AC0;
    } while (bank < 2);
}
