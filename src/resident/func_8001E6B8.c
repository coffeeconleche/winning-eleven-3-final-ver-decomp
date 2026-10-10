#include "common.h"

extern s32 func_800AD678(void);

/* Add the post-callback scratch word with 32-bit wrapping, then take a signed
 * remainder. Zero skips both the random call and the scratch read.
 * The PS1 compiler emits a division trap for INT_MIN % -1; that input is
 * outside this C view's defined domain and needs explicit native adaptation.
 * The scratch word's complete meaning and original helper API are provisional. */
s32 func_8001E6B8(s32 divisor)
{
    /* One allocation aid retains the observed result register without code. */
    register s32 result __asm__("$2");

    if (divisor != 0) {
        s32 random = func_800AD678();
        u32 frameWord = *(u32 *)0x1F800290;
        result = (s32)((u32)random + frameWord) % divisor;
    } else {
        result = 0;
    }
    return result;
}
