#include "types.h"

/* Both incoming words narrow to bytes; the indexed guest-memory span is
 * 0x1F8002FF..0x1F8003FE. No logical two-team bound is assumed here.
 * The empty identity consumes/retains the actual initialized index so the
 * observed post-increment load remains a real reread. It emits no code and
 * is not a hardware-volatility or memory-clobber claim. Native address
 * translation and the historical formal API remain provisional. */
void func_800A2310(u32 first, u32 second)
{
    u32 index = (u8)first;
    u32 current = ((u8 *)0x1F8002FF)[index];
    u32 target = (u8)second;
    u32 compared = (u8)current;

    if (compared != target) {
        if (compared < target) {
            ((u8 *)0x1F8002FF)[index] = current + 1;
            __asm__("" : "=r" (index) : "0" (index));
            current = ((u8 *)0x1F8002FF)[index];
        }
        if (target < current) {
            ((u8 *)0x1F8002FF)[index] = current - 1;
        }
    }
}
