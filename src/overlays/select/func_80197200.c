#include "common.h"

extern u8 D_800F1018[];
/* Call-site word views; the glyph helper narrows its selector internally and
 * the submitter consumes only the low selector halfword. Original APIs unknown. */
extern void func_801979D8(u32, s32, s32, u32);
extern void func_800B3FB8(void *, void *, u32);

/* Volatile qualifies only the fifth argument's local access view: it keeps the
 * measured entry word load ahead of later captures, with no added accesses.
 * This is a scheduling aid, not a recovered original volatile prototype. */
void func_80197200(u32 kind, u32 rawNumber, s32 rawX, s32 rawY,
    volatile s32 contrast, u16 argSelector) {
    u32 selector;
    s32 rawContrast;
    u32 number;
    /* Measured color/scratch and scoped packet/argument bindings preserve the
     * original allocation and submission setup; none supplies instructions. */
    register u32 color __asm__("$2");
    register u8 *scratch __asm__("$23") = (u8 *)0x1F800000;
    rawContrast = contrast;
    selector = argSelector;

    if (rawContrast) {
        /* Consume the old condition before overwriting v0; this preserves the
         * original two-arm branch and leaves 64 eligible for its jump delay. */
        __asm__ volatile ("" : : "r"(rawContrast));
        color = 64;
    } else {
        color = 128;
    }
    *(u8 *)0x1F800170 = color;
    *(u8 *)0x1F800171 = color;
    *(u8 *)0x1F800172 = color;
    /* Keep the byte mask after the three ordered color stores. */
    __asm__ volatile ("" : "=r"(kind) : "0"(kind));
    number = (u8)rawNumber;
    if ((u8)kind == 64) {
        func_801979D8(0xCA, (s16)rawX, (s16)rawY, 80);
        /* At the fixed aligned base, this selects the same 15C prefix as +15C
         * while retaining the observed OR address formation on this path. */
        func_800B3FB8((void *)((u32)scratch | 0x15C),
            D_800F1018 + scratch[0x29D] * 20, selector);
    } else {
        /* Two stages of the measured signed-halfword conversion let its
         * initial shift occupy the numeric-branch delay. Arithmetic right
         * shift here is the matching PSX target behavior. */
        register u32 shiftedX __asm__("$17");
        /* Preserve this base's runtime value while ending its constant-address
         * propagation into the numeric paths. No memory is touched by the tie. */
        __asm__ volatile ("" : "=r"(scratch) : "0"(scratch));
        shiftedX = (u32)rawX << 16;
        if (number < 10) {
            s32 x = (s32)shiftedX >> 16;
            s32 y = (s16)rawY;
            register void *packet __asm__("$19");
            u32 savedSelector;
            register void *argument __asm__("$4");
            register u8 *rows __asm__("$18");
            func_801979D8(0xC6, x + 2, y, 80);
            packet = scratch + 0x15C;
            argument = packet;
            /* Retain the first submission's pointer setup before re-narrowing
             * its selector; the empty constraint emits no instructions. */
            __asm__ volatile ("" : : "r"(argument));
            savedSelector = (u16)selector;
            rows = D_800F1018;
            func_800B3FB8(packet, rows + scratch[0x29D] * 20, savedSelector);
            func_801979D8((u8)(rawNumber + 48), x + 9, y, 80);
            func_800B3FB8(packet, rows + scratch[0x29D] * 20, savedSelector);
        } else {
            s32 x;
            s32 y;
            register void *packet __asm__("$20");
            u32 savedSelector;
            register void *argument __asm__("$4");
            register u8 *rows __asm__("$19");
            u32 tens;
            register u32 firstGlyph __asm__("$4");
            register u32 firstSelector __asm__("$6");
            u32 index;
            firstGlyph = 0xC6;
            /* Set the glyph before completing the deferred x conversion. */
            __asm__ volatile ("" : : "r"(firstGlyph), "r"(shiftedX));
            x = (s32)shiftedX >> 16;
            y = (s16)rawY;
            func_801979D8(firstGlyph, x, y, 80);
            packet = scratch + 0x15C;
            argument = packet;
            /* Retain the first submission's pointer setup before re-narrowing
             * its selector; the empty constraint emits no instructions. */
            __asm__ volatile ("" : : "r"(argument));
            savedSelector = (u16)selector;
            firstSelector = savedSelector;
            /* Keep selector setup ahead of the late index/base address loads. */
            __asm__ volatile ("" : : "r"(firstSelector));
            index = scratch[0x29D];
            rows = D_800F1018;
            func_800B3FB8(packet, rows + index * 20, firstSelector);
            tens = number / 10;
            func_801979D8((u8)(tens + 48), x + 6, y, 80);
            func_800B3FB8(packet, rows + scratch[0x29D] * 20, savedSelector);
            {
                u32 digit = (u8)(number - tens * 10 + 48);
                /* Form the final byte before advancing the x coordinate. */
                __asm__ volatile ("" : : "r"(digit));
                x += 12;
                func_801979D8(digit, x - (number < 20), y, 80);
            }
            func_800B3FB8(packet, rows + scratch[0x29D] * 20, savedSelector);
        }
    }
}
