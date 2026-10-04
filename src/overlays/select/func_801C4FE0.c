#include "common.h"
/* Local descriptor access view; complete original types are unknown. */
typedef struct {
    u16 half[4];
    u8 bytes[12];
} Fields20;

/* Fixed-width ABI views, not recovered original prototypes. The input index
 * remains a word until byte narrowing at descriptor submission. */
extern void func_801941E0(u8, u32, Fields20 *, u8, u16, u8);

void func_801C4FE0(u32 index, u32 word, s32 targetX, s32 targetY,
                  s32 targetWidth, s32 targetHeight, s32 startX, s32 startY,
                  u8 targetRed, u8 targetGreen, u8 targetBlue,
                  u32 startRed, u32 startGreen, u32 startBlue,
                  u8 count, u8 total, u8 half0, u8 byte3)
{
    Fields20 record;
    /* Measured register lifetimes retain the entry captures, signed casts,
     * intermediate results and full-word color copies. No frame is reserved. */
    register s32 difference __asm__("$3");
    register s32 temporary __asm__("$2");
    register s32 yRaw __asm__("$9") = targetY;
    s32 wRaw = targetWidth;
    s32 hRaw = targetHeight;
    s32 xRaw = startX;
    s32 yStartRaw = startY;
    register u8 rTarget __asm__("$14") = targetRed;
    register u8 gTarget __asm__("$15") = targetGreen;
    register u8 bTarget __asm__("$24") = targetBlue;
    register u32 savedIndex __asm__("$23") = index;
    register u32 savedHalf __asm__("$21") = half0;
    register u32 savedByte __asm__("$22") = byte3;
    register u32 rawRed __asm__("$25") = startRed;
    register u32 rawGreen __asm__("$18") = startGreen;
    register u32 rawBlue __asm__("$16") = startBlue;
    register s32 dx __asm__("$7"), dy __asm__("$6"), width __asm__("$9"), height;
    register s32 red __asm__("$5"), green __asm__("$3"), blue __asm__("$2");
    register u32 oldRed __asm__("$17") = rawRed;
    register u32 oldGreen __asm__("$19") = rawGreen;
    register u32 oldBlue __asm__("$20") = rawBlue;
    s32 divisor = (u8)total;

    /* Clamp only the byte count. A zero total retains the original signed
     * division trap; no native fallback or extra guard is introduced. */
    if (total < count) {
        count = total;
    }

    dx = ((s16)targetX - (s16)xRaw) * (u8)count / divisor;
    difference = (s16)yRaw;
    temporary = (s16)yStartRaw;
    difference -= temporary;
    dy = difference * (u8)count / divisor;
    temporary = (s16)wRaw;
    width = temporary * (u8)count / divisor;
    temporary = (s16)hRaw;
    temporary *= (u8)count;
    /* Consume the real signed numerator before division, retaining its
     * original result register and divide order without emitting code. */
    __asm__("" : : "r"(temporary));
    height = temporary / divisor;
    temporary = rTarget - (u8)oldRed;
    red = temporary * (u8)count / divisor;
    temporary = gTarget - (u8)oldGreen;
    green = temporary * (u8)count / divisor;
    temporary = bTarget - (u8)oldBlue;
    blue = temporary * (u8)count / divisor;

    /* Raw-coordinate sums wrap as 32-bit words before halfword narrowing. */
    dx = (u32)xRaw + (u32)dx;
    record.half[0] = dx;
    dy = (u32)yStartRaw + (u32)dy;
    record.half[1] = dy;
    record.half[2] = width;
    record.half[3] = height;
    red = rawRed + red;
    record.bytes[0] = red;
    record.bytes[1] = rawGreen + green;
    record.bytes[2] = rawBlue + blue;
    /* Only these eleven bytes are initialized. The callee also copies the
     * remaining nine descriptor bytes from unknown stack residue. This matching
     * source does not define those values for a future native implementation. */
    func_801941E0(savedIndex, word, &record, 0, savedHalf, savedByte);
}
