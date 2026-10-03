#include "common.h"

extern u8 D_801DAD84;
/* The second halfword is the reference's D_801D27BC + 2 access. */
extern u16 D_801D27BC, D_801D27BE;
/* ABI access view: every supplied key is already byte-narrowed, and the
 * callee uses its low byte. Its original parameter declaration is unknown. */
extern u16 func_8006EE60(u32);

u16 func_801B04B4(u8 channel) {
    u32 key;
    if ((u32)(D_801DAD84 - 2) < 2) {
        key = channel;
        if ((*(u16 *)(0x1F800232 + key * 8) & 0x20) != 0) {
            u32 count = D_801D27BC;
            u32 next;
            if (count >= 12) {
                u32 repeats = D_801D27BE;
                D_801D27BC = 0;
                D_801D27BE = repeats + 1;
                return 0x20;
            }
            if (D_801D27BE < 2) {
                next = count + 1;
            } else {
                next = count + 3;
            }
            D_801D27BC = next;
        } else {
            D_801D27BC = 0;
            D_801D27BE = 0;
            /* Preserve the no-bit path's existing key at the shared call. */
            goto delegate;
        }
    }
    key = channel;
delegate:
    return func_8006EE60(key);
}
