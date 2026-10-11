#include "common.h"

extern s32 func_8006FB90(u32, u32, u32);
extern s32 func_8006FBCC(u32, u32, u32);

/* Capture the first two low bytes across both callbacks, narrowing each payload
 * at its own call. Complete original helper APIs and gameplay meaning are unknown. */
s32 func_8006FB30(u32 first, u32 second, u32 third, u32 fourth)
{
    u32 firstByte = (u8)first;
    u32 secondByte = (u8)second;

    func_8006FB90(firstByte, secondByte, (u8)third);
    func_8006FBCC(firstByte, secondByte, (u8)fourth);
    return 1;
}
