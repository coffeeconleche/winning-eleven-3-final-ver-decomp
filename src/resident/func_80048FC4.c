#include "common.h"

#if defined(_PSYQ) && defined(__mips__) && (__GNUC__ == 2)
#define REG_BIND(reg) __asm__(reg)
#define MATCH_ASM __asm__
#else
#define REG_BIND(reg)
#define MATCH_ASM(...)
#endif

extern u8 D_800C6D98[];
extern s32 func_80054A68(u8 *, u32);
extern void func_8005BA78(u8 *, u32, u32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005BA30(u8 *, u32, u32);

/* Partial views of existing guest storage; neither a record extent nor a
 * bound on the byte table index is inferred. The four inputs retain their
 * full word domains until the native byte/halfword narrowing points.
 * Explicit snapshots preserve reads before stores and across helper calls.
 * Host guest-memory adapters must preserve widths, alignment, address wrap
 * and access faults; this raw-pointer view alone is not that adapter. */
void func_80048FC4(u8 *record, u32 dir1Arg, u32 dir2Arg, u32 speed)
{
    /* Measured GCC2 allocation aids for real directions and Boolean results.
     * The guarded host branch uses ordinary initialized C values. */
    register u32 dir1 REG_BIND("$17") = dir1Arg;
    register u32 dir2 REG_BIND("$19") = dir2Arg;
    register u32 midFlag REG_BIND("$3");
    register u32 farFlag REG_BIND("$2");
    u32 diff = dir1Arg - dir2Arg;
    u32 cap;
    s32 delta;
    s32 reverse;
    s32 product;
    s32 cap16;
    s32 tableSpeed;
    u32 firstResult;
    u32 secondResult;
    u32 currentHeading;
    u32 nextHeading;
    u32 animation;
    u32 tableIndex;
    u32 turnHeading;

    if ((u8)diff > 128) {
        diff = dir2Arg - dir1Arg;
    }
    /* Zero-instruction identity of the initialized second direction. Its
     * join lifetime keeps the native S3 entry copy before the subtraction
     * while leaving the RA store available for the first branch delay. */
    MATCH_ASM("" : "=r"(dir2) : "0"(dir2));
    if (*(u16 *)(record + 0x38E) != 13) {
        if (*(u16 *)(record + 0x38E) == 14) {
            if ((u8)(diff - 0x10) < 0x11) {
                diff += 0x10;
            } else if ((u8)diff >= 0x60) {
                diff = diff - 0x10;
            }
        }
    } else {
        if ((u8)diff < 0x61) diff += 0x10;
    }
    diff = (u8)diff;
    if (diff < 0x21) {
        dir1 = (u8)dir1;
        if (func_80054A68(record, dir1) != 0) return;
        func_8005BA78(record, 0x26, record[0x390]);
        firstResult = func_8005B7CC(dir1, record[0x3AA], 12);
        currentHeading = record[0x3A4];
        record[0x3AA] = firstResult;
        secondResult = func_8005B7CC(dir1, currentHeading, 24);
        nextHeading = record[0x3AA];
        record[0x3A4] = secondResult;
        if (nextHeading == dir1) {
            if ((u16)speed >= 0x31) speed = 0x30;
        } else {
            speed = 0x22;
        }
        cap = (u16)speed;
        *(u32 *)(record + 0x3A0) += cap >> 2;
        if (cap < *(u32 *)(record + 0x3A0)) *(u32 *)(record + 0x3A0) = cap;
        return;
    } else if (diff < 0x60) {
        if (*(u16 *)(record + 0x38E) != 14 || record[0x390] == 0) {
            func_8005BA30(record, 14, 2);
        }
        firstResult = func_8005B7CC((u8)dir2, record[0x3AA], 12);
        midFlag = (u8)(dir1 - dir2) > 128;
        turnHeading = record[0x3A4];
        record[0x3AA] = firstResult;
        record[0x3AC] = midFlag;
        delta = (u8)(turnHeading - dir1);
        if ((u8)(turnHeading - dir1) < 0x81) goto deltaNear;
        reverse = (u8)(dir1 - turnHeading);
        if (reverse >= 0x41) goto farDecay;
        goto nearCap;
deltaNear:
        if (delta < 0x41) goto nearCap;
farDecay:
        if (*(u32 *)(record + 0x3A0) < 9) {
            *(u32 *)(record + 0x3A0) = 0;
        } else {
            *(u32 *)(record + 0x3A0) -= 8;
        }
        if (*(u32 *)(record + 0x3A0) != 0) return;
nearCap:
        tableIndex = record[0x390];
        record[0x3A4] = dir1;
        product = D_800C6D98[tableIndex] * 38;
        cap16 = (u16)speed;
        tableSpeed = product / 10;
        if (tableSpeed < cap16) speed = tableSpeed;
        *(u32 *)(record + 0x3A0) = (u16)speed;
    } else {
        if (func_80054A68(record, (u8)dir1) != 0) return;
        firstResult = func_8005B7CC((u8)dir2, record[0x3AA], 0x28);
        animation = *(u16 *)(record + 0x38E);
        record[0x3AA] = firstResult;
        record[0x3A4] = dir1;
        if (animation == 13) {
            if (record[0x390] == 0) {
                func_8005BA30(record, 13, 1);
            }
            if ((u16)speed >= 0x23) speed = 0x22;
            cap = (u16)speed;
            *(u32 *)(record + 0x3A0) += (u16)(cap / 6);
            if (cap < *(u32 *)(record + 0x3A0)) *(u32 *)(record + 0x3A0) = cap;
        } else {
            func_8005BA30(record, 13, 0);
            farFlag = (u8)(dir2 - dir1) <= 128;
            record[0x3AC] = farFlag;
            *(u32 *)(record + 0x3A0) = 0x22;
        }
    }
}
