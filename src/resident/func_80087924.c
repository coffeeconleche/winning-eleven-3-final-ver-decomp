#include "common.h"

extern u8 D_8010A5A8[];
extern u8 D_800FF748[];
extern u8 D_80108667;
extern u8 D_8010866B;
extern u8 D_8010A2EA;
extern u8 D_8010A2EB;
extern u8 D_8010865D;

/* Byte access views of existing storage, not complete object layouts. The
 * original leaf returns a full-word 0/1; its known caller 800847DC tests only
 * the low byte. Historical declarations and indirect callers remain unknown.
 * Empty inputs retain measured captures/return branches and emit no code,
 * accesses or clobbers. The zero-byte frame needs no reservation. */
s32 func_80087924(void)
{
    enum { UNEQUAL_RESULT = 1 };
    u8 *fields = D_8010A5A8;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    s32 mode = *(u8 *)0x1F8002E1;
    s32 result;

    if (mode == 2 && !(D_80108667 & 0x20)) {
        if (D_8010866B != mode) {
            result = 1;
            goto done;
        }
        {
            s32 left;
            s32 first;
            s32 right;
            s32 second;
            s32 flag;
            s32 weighted;

            /* Keep the three byte captures ahead of each following load. */
            left = D_8010A2EA;
            __asm__("" : : "r"(left));
            first = *(u8 *)0x1F8002D1;
            __asm__("" : : "r"(first));
            right = D_8010A2EB;
            __asm__("" : : "r"(right));
            second = *(u8 *)0x1F8002D2;
            if (left + first != right + second) {
                goto unequal;
            }
            flag = D_8010865D;
            if (flag != 0) {
                right *= 2;
            }
            weighted = (flag == 0 ? left * 2 : left) +
                       (flag != 0 ? first * 2 : first);

            /* The second flag read aliases 8010865D but is not a reuse of
             * flag. Captured unsigned bytes are widened before all sums. */
            if (base[0x8F15] == 0) {
                if (weighted == right + second * 2) {
                    result = 0;
                    goto done;
                }
                __asm__("" : : "r"(weighted));
                result = 1;
                goto done;
            }
            if (weighted == right + second) {
                result = 0;
                goto done;
            }
            __asm__("" : : "r"(weighted));
            result = 1;
            goto done;
        }
    }

    if (scratch[0x2D1] != scratch[0x2D2]) {
unequal:
        /* Measured true-return control/merge fence on the same constant
         * returned below, not a game operation or register dependency.
         * A register input moves the assignment out of the jump delay slot. */
        __asm__("" : : "i"(UNEQUAL_RESULT));
        result = UNEQUAL_RESULT;
        goto done;
    }
    /* Reload mode after the equal-byte comparison. */
    switch ((u8)scratch[0x2E1]) {
    case 0:
    case 3:
        {
            s32 flags = fields[0xE];

            if (flags & 1) {
                result = 0;
                goto done;
            }
            result = flags & 4;
            goto masked;
        }
    case 1:
        goto unequal;
    case 2:
        /* This later byte read aliases the earlier eligibility flag, but
         * tests bit 0x40 rather than reusing its captured bit 0x20. */
        result = base[0x8F1F] & 0x40;
        break;
    default:
        result = 1;
        goto done;
    }
masked:
    result = result == 0;
done:
    return result;
}
