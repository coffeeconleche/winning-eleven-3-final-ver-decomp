#include "common.h"

/* Measured argument access views only; meanings and historical return API
 * are unknown. The third word is forwarded unchanged. Incoming stack words
 * at 0x1C..2C are sign-extended from their low halfwords before forwarding;
 * the intervening outgoing defaults are 0x80, 0x80, 0x80 and zero. */
extern void func_8001CDAC(u32, u32, u32, s32, s32, u32, u32, s32,
                         s32, s32, s32, u32, u32, u32, u32, s32);

void func_8001CF5C(u8 first, u16 second, u32 third, s16 fourth,
                   s16 fifth, u8 sixth, u8 seventh, s16 eighth,
                   s16 ninth, s16 tenth, s16 eleventh, s16 twelfth)
{
    func_8001CDAC(first, second, third, fourth, fifth, sixth, seventh,
                  eighth, ninth, tenth, eleventh, 0x80, 0x80, 0x80, 0,
                  twelfth);
}
