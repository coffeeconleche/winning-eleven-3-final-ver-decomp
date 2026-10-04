#include "common.h"
extern u8 D_800FF748[];
extern u8 D_8010C1D8[];
extern void func_8018EA04(void *, u32, u32);
extern void func_8018BB0C(void *);
extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);
extern void func_8005BD1C(void *);
extern u32 func_8005B7CC(u32, u32, u32);

/* State codes, record fields and full helper types are not yet identified. */
void func_8018BE20(u8 *record)
{
    u8 *base = D_800FF748;
    u8 *state = D_8010C1D8;
    switch (record[0x396]) {
    case 0:
        *(u16 *)(record + 4) = 0;
        func_8018EA04(record, 0, 0);
        *(u32 *)(record + 0x3A0) = 12;
        record[0x3AA] = 64;
        record[0x3A4] = 64;
        {
            /* This binding retains the original counter/remainder lifetimes. */
            register u32 next __asm__("$4") = record[0x396] + 1;
            s32 remainder = 0x1C0 - (s32)record[0x3AA];
            record[0x396] = next;
            *(u16 *)(record + 0x26) = (remainder % 256) << 4;
        }
        record[0x3DA] = 0;
        func_8018BB0C(record);
        *(u16 *)(record + 2) = *(u16 *)(record + 0x3BC);
        *(u16 *)(record + 6) = *(u16 *)(record + 0x3BE);
        if (*(s16 *)(record + 2) < 0) {
            record[0x3AC] = 0;
        } else record[0x3AC] = 1;
        break;
    case 1:
        *(s32 *)(record + 8) = func_8001E694(record[0x3A4], *(s32 *)(record + 0x3A0));
        *(s32 *)(record + 0x10) = func_8001E5A4(record[0x3A4], *(s32 *)(record + 0x3A0));
        {
            s32 x = *(s32 *)(record + 8);
            u16 field2 = *(u16 *)(record + 2);
            /* Reload access view prevents forwarding the preceding call result;
             * the original reads this word again. No hardware claim is implied. */
            s32 y = *(volatile s32 *)(record + 0x10);
            u16 field6 = *(u16 *)(record + 6);
            *(u16 *)(record + 2) = field2 + (u32)x;
            *(u16 *)(record + 6) = field6 + (u32)y;
        }
        func_8005BD1C(record);
        {
            u32 flag;
            if (*(s16 *)(record + 2) < 0) flag = state[13];
            else flag = state[14];

            if (flag == 1) record[0x396]++;
        }
        break;
    case 2:
        func_8018BB0C(record);
        {
            u16 x = *(u16 *)(record + 0x3BC);
            u32 next = record[0x396] + 1;
            u16 y = *(u16 *)(record + 0x3BE);
            *(u16 *)(record + 2) = x;
            *(u16 *)(record + 6) = y;
            record[0x396] = next;
        }
        break;
    case 3:
        func_8005BD1C(record);
        if (record[0x3AA] == 0xC0) {
            func_8018EA04(record, 1, 0);
            record[0x3AD] = 10;
            record[0x396]++;
            record[0x3AC] ^= 1;
        }
        *(u32 *)(record + 0x3A0) = 0;
        func_8005B7CC(0xC0, record[0x3AA], 2);
        record[0x3AA] = 0xC0;
        *(u16 *)(record + 0x26) = 0;
        if (base[0xABDA] >= 0x30) record[0x3AA] = 0xC0;
        break;
    /* Explicit no-op endpoint belongs to the original five-word jump table. */
    case 4:
        break;
    }
}
