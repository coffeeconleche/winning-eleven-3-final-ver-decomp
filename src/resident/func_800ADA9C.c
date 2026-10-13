#include "common.h"

/* No direct callers or address-taken registrations are known; the 20-byte
 * initialized prefix and the measured store order are access views, not a
 * recovered record layout. The fifth word arrives on the stack and is stored
 * last, in the return delay slot. */
void func_800ADA9C(u32 base, u32 b, u32 c, u32 d, u32 e)
{
    /* One measured allocation aid: without this binding every natural
     * source shape stores through the incoming $a0 and loads the fifth
     * argument into $v0, differing in all twelve store base fields; with
     * it the original $v0 base copy and $v1 argument load appear under
     * both basic profiles. It emits no game instructions beyond the
     * original addu $v0,$a0,$zero move. */
    register u8 *p __asm__("$2") = (u8 *)base;
    *(s16 *)(p + 0x0) = b;
    *(s16 *)(p + 0x2) = c;
    *(s16 *)(p + 0x4) = d;
    *(s16 *)(p + 0x8) = 0;
    *(s16 *)(p + 0xA) = 0;
    *(s16 *)(p + 0xC) = 0;
    *(s16 *)(p + 0xE) = 0;
    p[0x11] = 0;
    p[0x10] = 0;
    p[0x13] = 0;
    p[0x12] = 0;
    *(s16 *)(p + 0x6) = e;
}
