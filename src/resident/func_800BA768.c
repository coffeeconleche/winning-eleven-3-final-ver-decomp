#include "common.h"

/* Four-word forwarding ABI view; the table's complete layout and the callback
 * APIs remain provisional. Only the proved function-pointer slot at +8 is used. */
typedef u32 (*ResidentCallback)(u32, u32, u32, u32);
extern ResidentCallback *D_800D4E74;

u32 func_800BA768(u32 first, u32 second, u32 third, u32 fourth) {
    return D_800D4E74[2](first, second, third, fourth);
}
