#include "common.h"

extern u8 D_8010C32C[];
/* Existing scratch byte; this address name allocates no storage. */
extern u8 scratch2A9 __asm__("0x1F8002A9");
extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005B7CC(u32, u32, u32);
extern u32 func_8001E730(s32);
extern s32 func_8005C7A0(u32);
extern s32 func_8001E6B8(s32);
extern void func_8004B0F0(u8 *, u32, s32, s32);
extern void func_8005BD1C(u8 *);
extern void func_8005B864(u8 *, u32);
extern void func_800498AC(u8 *);

/* Partial storage/API view; complete record/table extents remain unknown. */
void func_80026B3C(u8 *record)
{
    *(u16 *)(record + 0x3AE) -= 2;
    if (record[0x397] == 0) {
        func_8005BA30(record, 42, 0);
        record[0x3AA] = func_8005B7CC(record[0x3AB], record[0x3AA], 24);
        if (record[0x38D] == scratch2A9) {
            u8 *other = *(u8 **)0x1F8002F4;
            s32 first = *(s16 *)(record + 2) - *(s16 *)(other + 2);
            /* Keep each product's low word, wrap their sum, then compare it
             * as signed. Halfword extremes can overflow a signed word square. */
            u32 square = (u32)((long long)first * first);
            s32 second = *(s16 *)(record + 6) - *(s16 *)(other + 6);
            if ((s32)(square + (u32)((long long)second * second)) <= 65535) {
                if ((u8)func_8001E730(record[0x3B8] - 20) != 0) {
                    s32 random = func_8005C7A0(16);
                    u32 direction = (u8)(record[0x3AA] + (u32)random);
                    u32 packed = *(u32 *)(D_8010C32C + record[0x392] * 12 + record[0x398] * 264);
                    /* Preserve the nibble's full domain and helper order. */
                    s32 amount = (s32)((u32)func_8001E6B8((9 - (s32)((packed >> 12) & 15)) * 2) + 56);
                    s32 final = (s32)((u32)func_8001E6B8(8) + 11);
                    func_8004B0F0(record, direction, amount, final);
                } else {
                    func_8004B0F0(record, record[0x3AA], 88, 0);
                }
            } else {
                scratch2A9 = 0;
            }
        }
        record[0x3D1] = 0;
        *(u32 *)(record + 0x3A0) = 48;
        record[0x397]++;
    } else {
        func_8005BD1C(record);
        if (record[0x390] == 0) {
            record[0x396] = 27;
            record[0x397] = 1;
        }
    }
    func_8005B864(record, *(u16 *)(record + 0x3A0));
    func_800498AC(record);
}
