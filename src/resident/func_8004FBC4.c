#include "common.h"

extern s32 D_800E7658;
extern s32 D_800E81D0;
extern void func_8004FAC0(s32, u32);

/* Global meanings/domains and helper API remain provisional. Read each updated
 * word after its callback and preserve ordered stores. Use unsigned arithmetic
 * for the unrestricted post-callback subtraction's original word wrapping. */
s32 func_8004FBC4(u32 argument)
{
    s32 remaining = D_800E7658;
    s32 countdown;
    /* Bind the real 0/1 return value only. Removing this binding changes the
     * post-callback word allocation, branch delay and epilogue copies. */
    register s32 result __asm__("$2");

    if (remaining > 0) {
        u32 updated;

        func_8004FAC0(remaining, argument);
        updated = D_800E7658;
        D_800E81D0 = 2;
        D_800E7658 = (s32)(updated - 4);
        result = 0;
        goto done;
    }
    func_8004FAC0(0, argument);
    countdown = D_800E81D0;
    if (countdown > 0) {
        goto decrement;
    }
    D_800E7658 = 0;
    result = 1;
    goto done;
decrement:
    D_800E81D0 = countdown - 1;
    result = 0;
done:
    return result;
}
