#include "common.h"

/* Preserve the low product word for every incoming signed word. The square
 * fits in signed 64 bits; unsigned narrowing defines modulo-2^32 wrapping.
 * The original formal types and gameplay purpose remain unknown. */
u32 func_8001E768(s32 value) {
    return (u32)((long long)value * value);
}
