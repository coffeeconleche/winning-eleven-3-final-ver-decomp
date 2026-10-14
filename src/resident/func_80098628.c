#include "common.h"

/* Existing record/scratch access views only. Full layouts, indirect users and
 * native pointer/alias/alignment and signed-word cast contracts are unknown.
 * The result encodes observed v0=1 residue, not a recovered historical API. */
u32 func_80098628(u8 *record)
{
    u8 *scratch;
    s32 value = *(s32 *)(record + 8);
    /* Actual $v0 work values: wrapped magnitude, then final quotient/result.
     * $v1 holds the captured /90 dividend and the post-D6 /10 reread. These
     * bindings retain measured allocation, not recovered declarations. */
    register s32 magnitude __asm__("$2") = value;
    register s32 dividend __asm__("$3");

    /* Unsigned word negation retains INT_MIN's wrapped negative magnitude. */
    if (value < 0) {
        magnitude = (s32)(0u - (u32)magnitude);
    }
    scratch = (u8 *)0x1F800000;
    if (magnitude < 32) {
        s32 minimum = 32;
        if (value < 0) {
            minimum = -32;
        }
        *(s32 *)(record + 8) = minimum;
    }

    /* Preserve full-word reads and sequential scratch writes. In both paths
     * capture word 0x10 after D2, before D8; reread word 8 only after D6.
     * Wrapped word arithmetic is narrowed before signed truncating division. */
    if (*(s16 *)(record + 2) > 0) {
        *(u16 *)(scratch + 0xCE) = *(u32 *)(record + 0x10);
        *(u16 *)(scratch + 0xD0) = *(s32 *)(record + 0xC) / 256;
        *(u16 *)(scratch + 0xD2) = (s32)((0u - *(u32 *)(record + 8)) * 2u) / 3;
        dividend = (s32)(0u - *(u32 *)(record + 0x10));
        *(u16 *)(scratch + 0xD8) = 4;
        *(u16 *)(scratch + 0xD6) = dividend / 90;
        dividend = *(s32 *)(record + 8);
        magnitude = dividend / 10;
    } else {
        *(u16 *)(scratch + 0xCE) = 0u - *(u32 *)(record + 0x10);
        *(u16 *)(scratch + 0xD0) = *(s32 *)(record + 0xC) / 256;
        *(u16 *)(scratch + 0xD2) = (s32)(*(u32 *)(record + 8) * 2u) / 3;
        dividend = *(s32 *)(record + 0x10);
        *(u16 *)(scratch + 0xD8) = 4;
        *(u16 *)(scratch + 0xD6) = dividend / 90;
        dividend = (s32)(0u - *(u32 *)(record + 8));
        magnitude = dividend / 10;
    }
    *(u16 *)(scratch + 0xDA) = magnitude;
    /* Consume the genuine stored quotient: retain DA-before-C0 access order.
     * Volatility keeps this measured empty input even though its value dies.
     * This empty input emits no instructions; it is a matching constraint,
     * not a recovered game operation or historical-source claim. */
    __asm__ volatile ("" : : "r"(magnitude));
    if ((s16)*(u16 *)(scratch + 0xC0) < -32) {
        *(s16 *)(scratch + 0xC0) = -32;
    }
    magnitude = 1;
    scratch[0xDE] = magnitude;
    return magnitude;
}
