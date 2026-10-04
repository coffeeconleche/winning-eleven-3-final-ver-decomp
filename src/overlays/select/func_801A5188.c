#include "common.h"

extern u8 D_801D803B, D_801D819C[], D_801DAD88[], D_800FF748[];
extern u32 D_801D1F8C[];
extern u8 *func_8001D004(u16);
extern u32 func_800502A0(u32, u32);
extern void func_801962E4(void *, u16);

/* Caller views only: packet fields and helper meaning are not established.
 * Bindings retain measured scratch/cursor and short-lived argument roles.
 * Empty identities/inputs preserve reload, comparison and setup lifetimes;
 * they emit no instructions. Volatile accesses below retain observed ordering,
 * not a recovered hardware or original volatile contract. */
#define H(address) (*(u16 *)(address))
#define W(address) (*(u32 *)(address))

void func_801A5188(void) {
    register u8 *scratch __asm__("$17") = (u8 *)0x1F800000;
    register s32 side __asm__("$19");
    register s32 bias;
    if (D_801D803B == 0) return;
    if (*(u8 *)0x1F8002E1 == 3) {
        register s32 accumulated;
        u32 dim;
        register u32 normal;
        side = 0;
        dim = 32;
        normal = 128;
        accumulated = 0;
        H(0x1F800164) = 24;
        H(0x1F800166) = 16;
        H(0x1F800168) = 27;
        H(0x1F800178) = 4096;
        H(0x1F80017A) = 4096;
        W(0x1F80017C) = 0;
        __asm__("" : "=r"(scratch) : "0"(scratch));
        do {
            register u8 *packet __asm__("$4") = func_8001D004(0x3130);
            register u8 *cursor __asm__("$16");
            register s32 j;
            register s32 start;
            if (side == 0) {
                __asm__("" : "=r"(side) : "0"(side));
                {
                    register u32 selected = scratch[0x2DD];
                    register u32 selectedCode __asm__("$3");
                    selectedCode = 40;
                    __asm__("" : "=r"(selected) : "0"(selected), "r"(selectedCode));
                    bias = 0;
                    if ((u8)selected == selectedCode) {
                        packet += 132;
                        bias = 11;
                    }
                }
            } else {
                register u32 selected = scratch[0x2DD];
                register u32 selectedCode;
                selectedCode = 41;
                __asm__("" : "=r"(selected) : "0"(selected), "r"(selectedCode));
                if ((u8)selected == selectedCode) packet += 132;
                else bias = -11; /* The matching branch retains the previous row bias. */
            }
            if (D_801D819C[side] == 1) {
                scratch[0x170] = dim;
                scratch[0x171] = dim;
                scratch[0x172] = dim;
            } else {
                scratch[0x170] = normal;
                scratch[0x171] = normal;
                scratch[0x172] = normal;
            }
            j = 0;
            start = accumulated;
            cursor = packet + 4;
            do {
                u32 mapped;
                register u32 zeroArgument;
                register u8 *base __asm__("$6");
                register u8 *record __asm__("$2");
                register u32 half;
                {
                    register u32 field = *(u16 *)(cursor + 2);
                    *(u16 *)(scratch + 0x160) = field;
                    field = *(u16 *)(cursor + 4);
                    *(u16 *)(scratch + 0x162) = field;
                    /* Keep this byte read after both halfword stores. */
                    field = *(volatile u8 *)(cursor - 1);
                    zeroArgument = 0;
                    scratch[0x16A] = field;
                }
                {
                    register s32 index = start + j;
                    register u32 secondByte;
                    j++;
                    index += bias;
                    secondByte = cursor[0];
                    index *= 4;
                    __asm__("" : : "r"(index), "r"(secondByte));
                    scratch[0x16B] = secondByte;
                    mapped = (u8)func_800502A0(*(u32 *)((u32)D_801D1F8C + index), zeroArgument);
                    cursor += 12;
                }
                mapped *= 4;
                base = D_800FF748;
                /* mapped is 0..1020: subtraction of its negation is
                * the same base + offset modulo the MIPS 32-bit word. */
                record = (u8 *)((u32)base - (u32)(-(s32)mapped));
                half = *(u16 *)(record + 0x7FA6);
                *(u16 *)(scratch + 0x16C) = half;
                *(u16 *)(scratch + 0x16E) = *(u16 *)(record + 0x7FA4);
                func_801962E4((void *)(scratch + 0x15C), 3);
            } while (j < 11);
            side++;
            accumulated += 11;
        } while (side < 2);
    } else {
        u8 *packet = func_8001D004(0x3050);
        register u8 *cursor __asm__("$16");
        register s32 i __asm__("$19") = 0;
        register u32 normal = 128;
        register u32 dim = 32;
        cursor = packet + 4;
        H(0x1F800164) = 24;
        H(0x1F800166) = 16;
        H(0x1F800168) = 27;
        H(0x1F800178) = 4096;
        H(0x1F80017A) = 4096;
        W(0x1F80017C) = 0;
        do {
            u32 mapped;
            register u8 *base __asm__("$6");
            register u8 *record __asm__("$2");
            register u32 half;
            {
                register u32 field = *(u16 *)(cursor + 2);
                *(u16 *)(scratch + 0x160) = field;
                field = *(u16 *)(cursor + 4);
                *(u16 *)(scratch + 0x162) = field;
                field = cursor[-1];
                scratch[0x16A] = field;
                field = cursor[0];
                scratch[0x16B] = field;
            }
            {
                register u32 finalIndex __asm__("$2") = 43;
                __asm__("" : "=r"(finalIndex) : "0"(finalIndex));
                if (i == finalIndex) {
                    register u32 selectedArgument = 43;
                    mapped = (u8)func_800502A0(selectedArgument, 0);
                } else {
                    mapped = (u8)func_800502A0(i, 0);
                }
            }
            mapped *= 4;
            base = D_800FF748;
            /* mapped is 0..1020: subtraction of its negation is
            * the same base + offset modulo the MIPS 32-bit word. */
            record = (u8 *)((u32)base - (u32)(-(s32)mapped));
            half = *(u16 *)(record + 0x7FA6);
            *(u16 *)(scratch + 0x16C) = half;
            *(u16 *)(scratch + 0x16E) = *(u16 *)(record + 0x7FA4);
            switch (D_801DAD88[i]) {
                case 0: {
                    register void *argumentPointer = (void *)(scratch + 0x15C);
                    register u32 argumentMode = 3;
                    *(volatile u32 *)(scratch + 0x15C) = 0;
                    scratch[0x170] = normal;
                    scratch[0x171] = normal;
                    scratch[0x172] = normal;
                    func_801962E4(argumentPointer, argumentMode);
                    break;
                }
                case 1: {
                    register void *argumentPointer = (void *)(scratch + 0x15C);
                    register u32 argumentMode = 3;
                    *(volatile u32 *)(scratch + 0x15C) = 0;
                    scratch[0x170] = dim;
                    scratch[0x171] = dim;
                    scratch[0x172] = dim;
                    /* Both sets of three stores are present in the original. */
                    scratch[0x170] = dim;
                    scratch[0x171] = dim;
                    scratch[0x172] = dim;
                    func_801962E4(argumentPointer, argumentMode);
                    break;
                }
                case 2: {
                    register void *argumentPointer = (void *)(scratch + 0x15C);
                    register u32 argumentMode __asm__("$5") = 3;
                    __asm__("" : : "r"(argumentPointer), "r"(argumentMode));
                    *(volatile u32 *)(scratch + 0x15C) = 0;
                    {
                        register u32 color __asm__("$2") = 16;
                        scratch[0x170] = color;
                        scratch[0x171] = color;
                        scratch[0x172] = color;
                    }
                    func_801962E4(argumentPointer, argumentMode);
                    break;
                }
            }
            i++;
            cursor += 12;
        } while (i < 44);
    }
}
