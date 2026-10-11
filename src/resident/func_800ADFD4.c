#include "common.h"

/* Partial linked-packet prefix, not a complete recovered SDK object. */
typedef struct ResidentADFD4Prefix {
    u8 bytes[4];
} ResidentADFD4Prefix;

s32 func_800ADFD4(ResidentADFD4Prefix *first, ResidentADFD4Prefix *second)
{
    s32 count = first->bytes[3] + second->bytes[3] + 1;
    s32 result = count <= 16;

    if (result) {
        first->bytes[3] = count;
        *(u32 *)second = 0;
        result = 0;
    } else {
        result = -1;
    }
    return result;
}
