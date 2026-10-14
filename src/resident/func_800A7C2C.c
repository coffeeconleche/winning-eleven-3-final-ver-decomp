#include "common.h"

extern u8 D_800CB690;
extern void func_800AB620(s32 argument);
extern void func_8005A218(void);

/* Partial mixed-width and consumed-void call views, not recovered APIs. The sole
 * audited direct caller ignores v0; this target leaves the observed 0x7FFF word
 * residue, not a boolean or callback result. Record extents, state meanings,
 * indirect users and native contracts remain unknown. No helper is declared pure. */
void func_800A7C2C(void)
{
    u8 *scratch;
    u8 *record = *(u8 **)0x1F8002F4;
    s32 marker = 5;
    s32 coordinate;
    /* The binding retains the actual widened magnitude's in-place negation.
     * A signed-halfword input cannot overflow signed32 when widened/negated. */
    register s32 magnitude __asm__("$2");

    /* Consume the actual value later written to D_800CB690, preserving the
     * observed entry setup. This empty input adds no instructions, accesses,
     * clobbers or storage; the 24-byte s0/RA frame is natural. */
    __asm__ ("" : : "r"(marker));
    coordinate = *(s16 *)(record + 2);
    /* Capture the signed coordinate before the potentially aliasing byte store. */
    D_800CB690 = marker;
    magnitude = coordinate;
    if (coordinate < 0) {
        magnitude = -magnitude;
    }
    scratch = (u8 *)0x1F800000;
    if (magnitude < 0x3320) {
        s32 limit = 0x3320;
        if (coordinate < 0) {
            limit = -0x3320;
        }
        *(s16 *)(record + 2) = limit;
    }

    /* Independent second pointer and coordinate capture, not a combined clamp. */
    record = *(u8 **)(scratch + 0x2F4);
    coordinate = *(s16 *)(record + 2);
    magnitude = coordinate;
    if (coordinate < 0) {
        magnitude = -magnitude;
    }
    if (magnitude >= 0x3361) {
        *(s16 *)(record + 2) = coordinate < 0 ? -0x3360 : 0x3360;
    }

    {
        u8 *angleRecord = *(u8 **)(scratch + 0x2F4);
        angleRecord[0x3A4] = (u8)-angleRecord[0x3A4];
    }
    {
        u8 *speedRecord = *(u8 **)(scratch + 0x2F4);
        u32 speed = *(u32 *)(speedRecord + 0x3A0);
        /* Logical word halve and word store precede the opaque callback. */
        *(u32 *)(speedRecord + 0x3A0) = (speed >> 1) + 1000;
        func_800AB620(0x515);
    }

    /* Read the selector and conditional pointer only after the callback. */
    if (scratch[0x2A9] == 0) {
        func_8005A218();
    } else {
        u8 *afterRecord = *(u8 **)(scratch + 0x2F4);
        s32 afterCoordinate = *(s16 *)(afterRecord + 2);
        s32 limit = 0x3361;
        if (afterCoordinate < 0) {
            limit = -0x3361;
        }
        *(s16 *)(afterRecord + 2) = limit;
    }

    /* Preserve the distinct word/halfword/byte store order and final v0 residue. */
    *(u32 *)(scratch + 0x2B0) = 13;
    *(u16 *)(scratch + 0x31C) = 8;
    scratch[0x2F2] = 0;
    *(u16 *)(scratch + 0x2B8) = 0x7FFF;
}
