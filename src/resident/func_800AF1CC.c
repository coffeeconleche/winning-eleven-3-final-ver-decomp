#include "common.h"

/* Only callback offset 0x38 is accessed; the full table/API is not recovered. */
typedef struct {
    u32 words[14];
    u32 (*callback)(u32, u32, u32, u32);
} CallbackView800AF1CC;

extern CallbackView800AF1CC *D_800CEABC;

/* Forwarding words are an ABI view; complete indirect argument types unknown. */
u32 func_800AF1CC(u32 first, u32 second, u32 third, u32 fourth)
{
    return D_800CEABC->callback(first, second, third, fourth) >> 31;
}
