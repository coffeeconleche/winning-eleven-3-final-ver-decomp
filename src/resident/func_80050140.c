#include "common.h"

/* Four measured request halfwords and a 64-byte local buffer extent from
 * original frame spacing. Buffer format/capacity contract and complete
 * helper APIs/return contract remain provisional. */
extern void func_800AE840(s16 *, u32 *);
extern void func_800AE7E0(s16 *, u32 *);
extern void func_800AE534(u32);

void func_80050140(u32 first, u32 second, u32 third, u32 fourth)
{
    s16 request[4];
    u32 buffer[16];

    request[0] = (s16)first;
    request[1] = (s16)second;
    request[2] = 16;
    request[3] = 1;
    func_800AE840(request, buffer);
    func_800AE534(0);
    request[0] = (s16)third;
    request[1] = (s16)fourth;
    request[2] = 16;
    request[3] = 1;
    func_800AE7E0(request, buffer);
    func_800AE534(0);
}
