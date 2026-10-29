#include "common.h"

extern s32 func_80017528(u32 slot, u32 selector, u32 mask);
extern void func_800AB620(s32 value);

/* Supported scan modes are 0..4. The retail out-of-range branch enters the
 * loop with ambient A0/S1, so it has no defined ordinary-C scan contract.
 * The pinned PS1 matching arm preserves those retail bytes; a native/reference
 * build explicitly declines unsupported modes instead of using unset bounds.
 * This fallback is a defined reference policy, not full-domain retail behavior. */
s32 func_800525A4(void) {
    s32 i;
    s32 limit;
    s32 start;

    switch (*(u8 *)0x1F8002E2) {
    case 0:
    case 3:
        start = 0;
        limit = 1;
        break;
    case 1:
    case 2:
    case 4:
        start = 0;
        limit = 2;
        break;
#if !(defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE))
    default:
        return 0;
#endif
    }
    for (i = start; i < limit; i++) {
        if (func_80017528(i, 0, 0x820) != 0) {
            func_800AB620(0x528);
            return 1;
        }
    }
    return 0;
}
