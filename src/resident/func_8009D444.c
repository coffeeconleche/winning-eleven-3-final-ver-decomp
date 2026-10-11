#include "common.h"

extern void func_8009CF84(u8 *object);

/* These byte offsets and short-circuit reads are observed; the complete
 * object layout, index domains, and classifier meaning remain provisional. */
s32 func_8009D444(u8 *object)
{
    u32 value = object[0x38D];

    if (value == *(u8 *)0x1F8002A9 ||
        ((u8 *)0x1F8002CF)[object[0x398]] == 1 ||
        value == ((u8 *)0x1F80031E)[object[0x399] * 2]) {
        object[0x3E2] = 0;
        object[0x3E3] = 0;
        func_8009CF84(object);
        return 1;
    }
    return 0;
}
