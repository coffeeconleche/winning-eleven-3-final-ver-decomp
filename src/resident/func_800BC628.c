#include "common.h"

/* First-call forwarding is a four-word ABI view, not a recovered full API.
 * Complete nested callback contracts and original return type are unknown. */
extern void func_800BA738(u32, u32, u32, u32);
extern void func_800C11B8(void);
extern void func_800BC538(void);

void func_800BC628(u32 first, u32 second, u32 third, u32 fourth)
{
    func_800BA738(first, second, third, fourth);
    func_800C11B8();
    func_800BC538();
}
