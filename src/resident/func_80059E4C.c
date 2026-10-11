#include "common.h"

extern s32 func_8001E6B8(s32);
/* One incoming argument word is set here; the complete helper API is unknown. */
extern void func_800AB620(s32);

/* The known caller ignores the result. The void ABI view preserves the
 * measured $v0 residue: zero from the first helper, or the second helper's
 * residue. The wrapper only overwrites $a0 at each call; $a1-$a3 flow through
 * as left by the preceding code/helper, without an invented argument value. */
void func_80059E4C(void)
{
    if (func_8001E6B8(3) != 0) {
        func_800AB620(0xDFB);
    }
}
