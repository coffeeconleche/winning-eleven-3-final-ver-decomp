#include "types.h"

extern s32 D_800D3C68[8];
extern s32 func_800BA518(s32 mode);
extern s32 func_800B90C4(s32 reset);
extern s32 func_800B6FEC(u32 mode, u8 *result);

s32 func_800B9448(s32 poll, u8 *result)
{
    register s32 *clock __asm__("s1") = &D_800D3C68[7];
    s32 status;

    do {
        if (func_800BA518(-1) > (s32)((u32)clock[0] + 1200U)) {
            status = -1;
        } else if (clock[-2] < 0 ||
                   func_800BA518(-1) > (s32)((u32)clock[-1] + 60U)) {
            func_800B90C4(1);
            status = clock[-7];
        } else {
            status = clock[-2];
        }
    } while (poll == 0 && status > 0);
    func_800B6FEC(1, result);
    return status;
}
