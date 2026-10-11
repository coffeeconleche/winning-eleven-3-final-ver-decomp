#include "common.h"

/* Word-result ABI views; complete original callback/helper APIs are unknown. */
extern u32 func_800BA798(u32, u32 (*)(void));
extern u32 func_800B0594(void);

u32 func_800B10B0(void) {
    return func_800BA798(2, func_800B0594);
}
