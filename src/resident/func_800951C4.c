#include "common.h"

/* Call-site views only; the helpers' complete contracts remain unknown. */
extern s32 func_8001E6B8(s32 divisor);
extern void func_8004B0F0(u8 *record, u32 byteValue, u32 shiftedWord,
                          u32 scaledWord);

/* Partial native record/scratch views; gameplay meanings remain provisional.
 * The observed word at 0x3A0 is shifted by eight before scaling, and the
 * negated word at 0xC is divided by 736. The scratch pointer is reread after
 * helper calls. Actual helper arguments and low-byte/word operations remain
 * unchanged; no nonnegative RNG-state invariant is assumed.
 *
 * Only savedDirection ($s3) and amount ($a2) retain measured value bindings.
 * The formerly used empty direction identity is redundant and removed. Each
 * final binding removal changes native code. There is no instruction-output
 * assembly, fabricated frame object or table patch. */
void func_800951C4(u8 *record, u32 direction, s32 level, u32 adjustment)
{
    s32 random;
    u8 *associated;
    u8 *scratch;
    u32 product;
    s32 numerator;
    register s32 amount __asm__("$6");
    s32 divisor;
    u32 delta;
    u8 oldDirection;
    s32 velocity;
    s32 combined;
    register u32 savedDirection __asm__("$19");

    /* Preserve the signed remainder result; no nonnegative RNG-state
     * invariant is assumed. For divisor 2 its range is -1 through 1. */
    random = func_8001E6B8(2);
    associated = *(u8 **)0x1F8002F4;
    product = (*(u32 *)(associated + 0x3A0) >> 8) * (u32)(random + 6);
    savedDirection = direction;
    oldDirection = associated[0x3A4];
    /* Wrapped 8-bit facing difference; both halves are kept positive. */
    delta = (oldDirection - direction) & 255;
    /* Legacy word division: the quotient then the fixed-point shift. */
    amount = product / 10U;
    numerator = amount << 7;
    scratch = (u8 *)0x1F800000;
    amount = numerator;
    if (delta >= 129U) {
        divisor = (s32)(((direction - oldDirection) & 255) + 128);
        amount = numerator / divisor;
    } else {
        divisor = (s32)(delta + 128);
        amount = amount / divisor;
    }
    /* The angle word is a negative 736-scale remainder. */
    velocity = (s32)(0U - *(u32 *)(*(u8 **)(scratch + 0x2F4) + 0xC));
    velocity /= 736;
    combined = (s32)((u32)amount + (((u32)velocity - (u32)level) * 2U + adjustment));
    if (combined >= 113) {
        combined = 112;
    }
    if (combined < 24) {
        combined = 24;
    }
    func_8004B0F0(record, savedDirection & 255, combined, level);
    random = func_8001E6B8(2);
    *(u16 *)(*(u8 **)(scratch + 0x2F4) + 0x3CA) = random;
    random = func_8001E6B8(5);
    *(u16 *)(*(u8 **)(scratch + 0x2F4) + 0x3C8) = random + 3;
    *(u16 *)(scratch + 0x2B4) = 0x7FFF;
}
