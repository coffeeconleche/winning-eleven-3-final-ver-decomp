#include "common.h"

/* Measured argument views; helper meaning and original return API are unknown.
 * Incoming stack offsets 0x10/14/18/1C hold signed halfword, byte, byte,
 * signed halfword values. The last formal retains the observed word load
 * followed by sign extension; a word formal with a cast folds to an lh.
 * The outgoing stack positions 0x1C..38 add 0x1000, 0x1000, 0, 0,
 * 0x80, 0x80, 0x80, 0 before the final incoming value at 0x3C.
 * Basic GCC 2.7.2 produces the natural 0x48 frame without matching aids. */
extern void func_8001CDAC(u32, u32, u32, s32, s32, u32, u32, u32,
                         u32, u32, u32, u32, u32, u32, u32, s32);

void func_8001CEE0(u8 first, u16 second, u32 third, s16 fourth,
                   s16 fifth, u8 sixth, u8 seventh, s16 eighth)
{
    func_8001CDAC(first, second, third, fourth, fifth, sixth, seventh,
                  0x1000, 0x1000, 0, 0, 0x80, 0x80, 0x80, 0, eighth);
}
