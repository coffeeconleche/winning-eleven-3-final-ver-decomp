#include "common.h"

extern u8 D_800FF748[], D_80123020[];
extern u8 *D_80123044;
extern u8 D_80123048, D_80123049;
extern u8 D_8010C328[], D_8010C32C[], D_8010C32E[], D_8010C32F[], D_8010C330[];
extern u8 *func_8001D004(u32);
extern s32 func_8006F4A8(u32, u32);
extern s32 func_8006F3E0(u32, s32, s32);
extern s32 func_8006FA84(u32, u32);
extern void func_8012199C(u32, u8);

/* Packed access views preserve the measured widths; original types are unknown. */
void func_80120698(u8 selector) {
    u8 *initial = (u8 *)(selector * 18 + (u32)D_80123020);
    u8 *current;
    u32 selected = selector;
    u32 firstHalf;
    u32 secondHalf;
    u8 *base;
    u8 *packet;
    /* Keep the table byte in the retail saved register across the packet call. */
    register u32 index __asm__("$16");
    u32 offset;
    /* Both halfwords are read before publishing the current record pointer. */
    firstHalf = *(u16 *)initial;
    secondHalf = *(u16 *)(initial + 12);
    D_80123044 = initial;
    func_8006F4A8(selected + 16, (firstHalf - secondHalf) * 16 + 0xFFB4);
    func_8012199C(selected, *D_80123044);
    base = D_800FF748;
    if (selected == D_80123049 && D_80123048) {
        packet = func_8001D004(selected + 0x6C);
        current = D_80123044;
        if (*(u16 *)(current + 2) && *(u16 *)(current + 10) == D_80123048 - 1) {
            u8 *entry = (u8 *)((*(u16 *)current - *(u16 *)(current + 12)) * 12 + (u32)packet);
            func_8006F3E0(7, *(s16 *)(entry + 6), *(s16 *)(entry + 8));
        } else if (*(u16 *)(D_80123044 + 12) < D_80123048) {
            u8 *entry;
            func_8006FA84(7, 1);
            entry = (u8 *)((D_80123048 - *(u16 *)(D_80123044 + 12)) * 12 + (u32)packet);
            func_8006F3E0(7, *(s16 *)(entry - 6), *(s16 *)(entry - 4));
        } else {
            func_8006FA84(7, 0);
        }
    }
    {
        u8 *row = (u8 *)(selector * 22 + (u32)base);
        u32 displacement;
        u16 *tailCurrent;
        tailCurrent = (u16 *)D_80123044;
        displacement = 0x8E9C;
        index = *(u8 *)((u32)row + displacement + *tailCurrent);
    }
    packet = func_8001D004(selector + 0x1018);
    {
        u32 selectorOffset = selector * 264;
        u32 indexOffset = index * 12;
        offset = indexOffset + selectorOffset;
    }
    /* Do not cache these mixed-width fields: packet stores can alias the tables. */
    packet[4] = ((*(u32 *)((u32)D_8010C328 + offset) >> 5) & 0x78) - 80;
    packet[16] = ((*(u32 *)((u32)D_8010C328 + offset) >> 17) & 0x78) - 80;
    packet[28] = (*(u32 *)((u32)D_8010C32C + offset) & 15) * 8 - 80;
    packet[40] = (*(u16 *)((u32)D_8010C32E + offset) & 15) * 8 - 80;
    packet[52] = (*(u32 *)((u32)D_8010C32C + offset) >> 28) * 8 - 80;
    packet[64] = (*(u8 *)((u32)D_8010C32F + offset) & 15) * 8 - 80;
    packet[76] = ((*(u32 *)((u32)D_8010C330 + offset) >> 1) & 8) - 88;
}
