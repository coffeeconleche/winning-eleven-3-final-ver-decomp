#include "common.h"

typedef u32 (*ResidentDispatch)(u32, u32, u32, u32);
typedef struct {
    u32 prefix[3];
    ResidentDispatch callback_0C;
} ResidentDispatchView;

extern ResidentDispatchView *D_800D4E74;

/* Four-word forwarding is an ABI view, not a complete callback prototype. */
u32 func_800BA738(u32 first, u32 second, u32 third, u32 fourth)
{
    return D_800D4E74->callback_0C(first, second, third, fourth);
}
