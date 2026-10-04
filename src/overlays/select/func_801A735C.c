#include "common.h"
/* GCC/PsyQ recognizes abs here and expands the measured sign test/word
 * negation inline; this is not a new external callback. */
extern s32 abs(s32);

extern u8 D_800FF748[], D_801D81C8, D_801D81A8;
/* Word caller views retain the observed sign-half coordinate conversions;
 * the descriptor callee narrows its fields internally. */
extern void func_80193FB4(s32, s32, u32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32);
extern u8 *func_801A76A8(s32);

void func_801A735C(s32 value) {
    s32 magnitude;
    s32 y = 0;
    /* These narrow register views preserve the measured coordinate copy and
     * post-call source/byte allocation; they emit no assembly body. */
    register s32 x asm("$4") = 0;
    s32 color0;
    s32 color1;
    s32 color2;
    u8 *base;
    register u8 *source asm("$4");
    u8 *second;
    u8 *first;
    register u32 byte asm("$2");

    /* Matching-PSX signed magnitude and low-byte color stores. INT_MIN and
     * overflowing word arithmetic are not portable host-C contracts. */
    magnitude = abs(value);
    color2 = magnitude + 48;
    base = D_800FF748;
    color1 = color2;
    color0 = color2;
    if (value == 0) {
        func_80193FB4(13, 0x3089, 0x01000000, 0, 0,
                     D_801D81C8 < 3 ? 30 : 31, 0, 4096, 4096,
                     0, 0, 128, 128, 128, 0, 2, 1);
        func_80193FB4(14, 0x308A, 0x01000000, 0, 0,
                     D_801D81C8 < 3 ? 30 : 31, 0, 4096, 4096,
                     0, 0, 128, 128, 128, 0, 2, 1);
        base[0x6006] = 128;
        base[0x6007] = 128;
        base[0x6008] = 128;
        source = func_801A76A8(0);
        first = *(u8 **)(base + 0x5FFC);
        /* Capture the first pointer before loading the source byte. */
        __asm__ volatile ("" : : "r"(first));
        byte = source[1];
        second = *(u8 **)(base + 0x5FD4);
        first[1] = byte;
        second[1] = byte;
        byte = source[2];
        first[2] = byte;
        second[2] = byte;
        byte = source[3];
        first[3] = byte;
        second[3] = byte;
        byte = source[4];
        first[4] = byte;
        second[4] = byte;
        byte = source[10];
        first[10] = byte;
        second[10] = byte;
        D_801D81A8 = D_801D81C8;
    } else {
        if (value >= 0) {
            x = value;
            /* Retain the observed x-to-y copy instead of reusing value. */
            __asm__ volatile ("" : : "r"(x));
            y = x;
        }
        {
            register s32 narrowX asm("$2") = (s16)x;
            /* Complete the non-destructive signed-half view before the
             * descriptor selector load; the empty identity emits no code. */
            __asm__ volatile ("" : "=r"(narrowX) : "0"(narrowX));
            func_80193FB4(13, 0x3089, 0x01000000, (s16)y, narrowX,
                         D_801D81C8 < 3 ? 30 : 31, 0, 4096, 4096,
                         0, 0, 128, 128, 128, 0, 2, 1);
        }
        func_80193FB4(14, 0x308A, 0x01000000, 0, 0,
                     D_801D81A8 < 3 ? 30 : 31, 0, 4096, 4096,
                     0, 0, 128, 128, 128, 0, 2, 1);
        base[0x6006] = color0;
        base[0x6007] = color1;
        base[0x6008] = color2;
        source = func_801A76A8(value);
        second = *(u8 **)(base + 0x5FD4);
        byte = source[1];
        second[1] = byte;
        byte = source[2];
        second[2] = byte;
        byte = source[3];
        second[3] = byte;
        byte = source[4];
        second[4] = byte;
        byte = source[10];
        second[10] = byte;
    }
}
