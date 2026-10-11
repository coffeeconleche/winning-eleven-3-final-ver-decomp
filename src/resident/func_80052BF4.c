#include "common.h"

/* Only the observed object byte offset and scratch access conditions are
 * described; the complete object layout and classifier API are provisional. */
s32 func_80052BF4(u8 *object)
{
    s32 result = *(u8 *)0x1F8002FC;

    if (result != 0) {
        result = 0;
    } else {
        if (((u8 *)0x1F8002CF)[object[0x398]] == 0) {
            if (*(s32 *)0x1F8002B0 == 4) {
                if (*(s16 *)0x1F80031C < 16) {
                    return 0;
                }
            }
        } else {
            if (*(s16 *)0x1F80031C < 8) {
                return 0;
            }
        }
        result = 1;
    }
    return result;
}
