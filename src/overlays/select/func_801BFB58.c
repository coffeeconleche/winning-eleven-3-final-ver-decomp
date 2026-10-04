#include "common.h"

extern u8 D_800FF748[], D_801D8FA0[];
extern u8 D_801DA2F0;
extern u8 *func_8001D004(s32);
extern void func_80196800(s32, s16, s16, s16, u16, u8, u8, u8, u8);

void func_801BFB58(void) {
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s32 i = 0;
    u32 mapOffset = 0xAB80;
    s32 byteOffset = 0;
    s32 fieldOffset = 96;
    for (; i < 16; byteOffset += 12, i++, fieldOffset += 24) {
        if (D_801DA2F0 != 0) {
            register u32 mapped __asm__("$2") = ((u8 *)((u32)base + i))[0xAB50];
            u8 *record;
            u32 firstOffset;
            u8 *first;
            u32 other;
            u8 firstValue;
            u32 secondOffset;
            record = (u8 *)((u32)base + mapped);
            record += mapOffset;
            mapped = *record;
            /* The empty $2 tie retains the first lookup before the mode reread. */
            __asm__("" : "=r"(mapped) : "0"(mapped));
            firstOffset = mapped * 36;
            mapped = base[0x8F21];
            first = base + firstOffset;
            record = (u8 *)((u32)base + mapped);
            record += mapOffset;
            other = *record;
            firstValue = first[0x8F25];
            secondOffset = other * 36;
            /* Preserve the measured address-add operand order; emits no code. */
            __asm__("" : "=r"(secondOffset) : "0"(secondOffset));
            if (firstValue == ((u8 *)((u32)base + secondOffset))[0x8F25]) {
                u8 *result;
                /* Retain the address copy in the condition's delay slot. */
                register u8 *address __asm__("$3");
                u8 value;
                D_801D8FA0[fieldOffset] = (*(u32 *)&scratch[0x290] >> 5) & 1;
                result = func_8001D004(0x310B);
                if (*(u32 *)&scratch[0x290] & 0x20) {
                    address = (u8 *)(byteOffset + (u32)result);
                    value = 0x95;
                } else {
                    address = (u8 *)(byteOffset + (u32)result);
                    value = 0x5B;
                }
                address[10] = value;
            }
        }
    }
    func_80196800(0, -73, -161, 18, 352, 0, 0, 32, 5);
}
