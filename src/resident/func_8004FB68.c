#include "common.h"

/* Word and two-word call views, not recovered complete APIs. */
extern s32 D_800E7658;
extern void func_8004FAC0(u32, u32);

s32 func_8004FB68(u32 argument)
{
    s32 captured = D_800E7658;
    /* Measured result placement only: removing this binding changes the
     * reread/result registers and the shared epilogue. It emits no code. */
    register s32 result __asm__("$2");

    if (captured >= 16) {
        func_8004FAC0(captured, argument);
        result = 1;
    } else {
        func_8004FAC0(captured, argument);
        /* The callback can change this word: reread it, then add modulo 2^32. */
        D_800E7658 = (s32)((u32)D_800E7658 + 4u);
        result = 0;
    }
    return result;
}
