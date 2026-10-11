#include "common.h"

extern s32 abs(s32 value);
extern s32 func_8005C7A0(s32 value);
extern s32 func_8001E6B8(s32 bound);

/* Partial access view only: the original loads a pointer word at +0x2F4
 * relative to scratch base. No other field, ownership or domain is inferred. */
typedef struct Scratch95F40View {
    u8 unknown[0x2F4];
    u8 *record;
} Scratch95F40View;

/* No incoming argument is consumed. Callers use the signed clamped word. */
s32 func_80095F40(void)
{
    s32 value = *(s32 *)(((Scratch95F40View *)0x1F800000)->record + 0xC) / 736;
    /* The quotient has magnitude at most 2917776, so abs/+6 cannot overflow.
     * The signed-low16 narrowing is required even at coordinate extremes. */
    s32 random = (s16)func_8005C7A0((s16)(abs(value) + 6));

    value = random - value;
    /* Reload both the pointer and coordinate after the callback. */
    if (*(s32 *)(((Scratch95F40View *)0x1F800000)->record + 0xC) < 0) {
        value -= func_8001E6B8(12);
    }
    if (value > 24) value = 24;
    else if (value < -24) value = -24;
    return value;
}
