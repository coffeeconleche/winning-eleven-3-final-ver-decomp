#include "common.h"

/* Partial callback-table access view, not a complete recovered SDK API. */
typedef struct ResidentBA798Callbacks {
    u32 first;
    s32 (*second)(u32, u32, u32, u32);
} ResidentBA798Callbacks;
extern ResidentBA798Callbacks *D_800D4E74;

s32 func_800BA798(u32 arg0, u32 arg1, u32 arg2, u32 arg3)
{
    return D_800D4E74->second(arg0, arg1, arg2, arg3);
}
