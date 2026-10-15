#include "common.h"

/* Four measured request halfwords, not an inferred complete resource layout.
 * Helper APIs, callback behavior, bounds and the void/residual-result view
 * remain provisional. Selector shifts/additions wrap as unsigned words;
 * counters are bounded before byte wrap and call coordinates narrow to u16. */
extern s32 func_800AE8A0(s16 *, u32, u32);
extern s32 func_800AE534(u32);
extern void func_800500B0(u32, u32, u32, u32);

void func_80050380(u32 selector)
{
    s16 request[4];
    u8 first;
    u8 second;
    u32 destinationBase;

    request[0] = 0x360;
    request[1] = 0x180;
    request[2] = 0x20;
    request[3] = 0x58;
    func_800AE8A0(request, (selector << 6) + 0x260U, 0x180);
    func_800AE534(0);
    first = 0;
    destinationBase = (selector << 6) + 0x271U;
    for (; first < 7; first++) {
        for (second = 0; second < 20; second++) {
            func_800500B0((u16)(first + 0x371), (u16)(second + 0x1EC),
                          (u16)(first + destinationBase),
                          (u16)(second + 0x1EC));
        }
    }
    first = 0;
    destinationBase = (selector << 6) + 0x278U;
    for (; first < 8; first++) {
        for (second = 0; second < 40; second++) {
            func_800500B0((u16)(first + 0x378), (u16)(second + 0x1D8),
                          (u16)(first + destinationBase),
                          (u16)(second + 0x1D8));
        }
    }
    request[0] = 0x3E4;
    request[1] = 0x1C0;
    request[2] = 0x18;
    request[3] = 0x20;
    if (selector == 0) {
        func_800AE8A0(request, 0x264, 0x140);
    } else {
        func_800AE8A0(request, 0x224, 0x1C0);
    }
    func_800AE534(0);
}
