#include "common.h"

/* This view begins at the pointer field, with the observed 40-byte stride.
 * The remaining bytes are never accessed here; it is not a complete original
 * record layout or a claim about the beginning/extent of its owning objects. */
typedef struct PointerStrideView {
    u8 *items;
    u8 unused[36];
} PointerStrideView;

extern PointerStrideView D_80105514[];

/* Both selectors and the stored value use their low bytes. The pointed-to
 * item has an observed 12-byte stride and byte field at offset 10. Valid
 * selector domains, item ownership and original formal types are unknown. */
s32 func_8006FAF4(u32 first, u32 second, u32 value)
{
    D_80105514[(u8)first].items[12 * (u8)second + 10] = (u8)value;
    return 1;
}
