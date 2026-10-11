#include "common.h"

extern void func_8009E244(u8 *object);
extern void func_8009D9C4(u8 *object);
extern void func_8009DCC0(u8 *object);

/* Observed byte fields and callback pointer view only; the complete object
 * layout and historical return API are unknown. The original v0 is callback
 * residue, not a dispatcher-owned logical result. */
void func_8009CF84(u8 *object)
{
    if (((u8 *)0x1F8002CF)[object[0x398]] == 0) {
        if (object[0x38D] == *(u8 *)0x1F8002A9) {
            object[0x3E2] = 13;
            object[0x3E3] = 0;
            func_8009E244(object);
        } else {
            object[0x3E2] = 11;
            object[0x3E3] = 0;
            func_8009D9C4(object);
        }
    } else {
        object[0x3E2] = 12;
        object[0x3E3] = 0;
        func_8009DCC0(object);
    }
}
