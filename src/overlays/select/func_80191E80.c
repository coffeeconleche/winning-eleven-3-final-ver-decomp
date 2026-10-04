#include "common.h"

extern u8 D_800FF748[], D_8010A5A8[], D_801D7D60[];
extern s16 D_801D7D56;
extern u8 *D_801D1AF8;
extern void func_800AD648(void *, void *, u32);

/* Access views only: the original aggregates and helper prototype are unknown.
 * The local helper is an A0/27 dispatch thunk, not evidence of copy direction. */
void func_80191E80(void) {
    u8 *fields = D_8010A5A8;
    u8 *base = D_800FF748;
    /* Preserve the shared scratch page's measured saved-register allocation. */
    register u8 *scratch __asm__("$19") = (u8 *)0x1F800000;
    u8 *start, *cursor, *check;
    s32 i, count, six;
    /* Match a1 allocation and the original modulo-word ADDU accumulation. */
    register u32 sum __asm__("$5");

    /* The byte stores may alias the pointer's storage: reread it each time. */
    for (i = 0; i < 0x2000; i++)
        ((u8 *)((u32)D_801D1AF8 + i))[0x100] = 0;

    six = 6;
    start = D_801D1AF8;
    /* Finish the buffer snapshot before loading the scratch-mode byte. */
    __asm__ volatile("" : : "r"(start));
    {
        u32 mode = scratch[0x2E1];
        /* Retain the measured second narrowing after the unsigned byte load. */
        __asm__("" : "=r"(mode) : "0"(mode));
        mode = (u8)mode;
        cursor = start + 0x100;

        if (mode == six) {
            /* Keep second-pointer setup, length, then the next cursor. */
            register u8 *callArg1 __asm__("$5") = cursor;
            s32 one = 1;
            __asm__("" : "=r"(one) : "0"(one), "r"(callArg1));
            cursor = start + 0x101;
            func_800AD648(D_801D7D60 + D_801D7D56, callArg1, one);
        } else {
            /* This identity tie retains branch-local scratch-address setup.
             * OR and addition agree for the unchanged page base 0x1F800000. */
            __asm__ volatile("" : "=r"(scratch) : "0"(scratch));
            func_800AD648((void *)((u32)scratch | 0x2E1), cursor, 1);
            cursor = start + 0x101;
        }
    }

    func_800AD648((void *)((u32)scratch | 0x2E2), cursor, 1); cursor++;
    func_800AD648((void *)((u32)scratch | 0x2DD), cursor, 1); cursor++;
    func_800AD648(fields, cursor, 1); cursor++;
    func_800AD648(fields + 1, cursor, 1); cursor++;
    func_800AD648(base + 0x8F1F, cursor, 1); cursor++;
    func_800AD648(base + 0x8F20, cursor, 1); cursor++;
    func_800AD648(base + 0x8F22, cursor, 1); cursor++;
    func_800AD648(base + 0x8F21, cursor, 1); cursor++;
    func_800AD648(base + 0x8F23, cursor, 1); cursor++;
    func_800AD648(base + 0x8F24, cursor, 0x480); cursor += 0x480;
    func_800AD648(base + 0x93A4, cursor, 0x162C); cursor += 0x162C;
    func_800AD648(base + 0xA9D0, cursor, 0x180); cursor += 0x180;
    func_800AD648(base + 0xABA2, cursor, 2); cursor += 2;
    func_800AD648(base + 0xABA4, cursor, 4); cursor += 4;
    func_800AD648(base + 0xABA8, cursor, 1); cursor++;
    func_800AD648(base + 0xABA0, cursor, 1); cursor++;
    func_800AD648(base + 0xABA1, cursor, 1); cursor++;
    func_800AD648(base + 0xABA9, cursor, 1); cursor++;
    func_800AD648(base + 0xAB50, cursor, 0x30); cursor += 0x30;
    func_800AD648(base + 0xAB80, cursor, 0x20);

    /* Do not advance after the final transfer. Preserve the signed word span
     * cursor-minus-224-minus-current-base; its format and bounds are unknown. */
    sum = 0;
    check = D_801D1AF8;
    {
        u32 end = (u32)cursor - 0xE0;
        count = end - (u32)check;
    }
    for (i = 0; i < count; i++)
        sum += ((u8 *)((u32)check + i))[0x100];

    /* Retain the separate final global-pointer load after the checksum loop. */
    ((u8 *)((u32)D_801D1AF8 + i))[0x100] = sum;
}
