#include "common.h"

extern u8 D_800FFB58[];
extern s16 D_800E6C18;
extern s16 D_800E6C28[];
extern void func_8004F66C(u8);
extern void func_8001CDAC(u8, u16, u32, u16, u16, u8, u8, u16,
                         u16, u16, u16, u8, u8, u8, u32, u16);

/* The byte stores use a partial access view with a 40-byte stride; the
 * complete table layout is unknown. Only the selector's low byte is consumed.
 * Observed callers discard the result, and both helper return APIs remain
 * provisional. The constructor's sixteen inputs match its existing C view. */
void func_8004F58C(u32 selector)
{
    s32 index;
    u8 *entry;
    s32 mode;

    for (index = 26, entry = D_800FFB58; index < 36; index++, entry += 40) {
        entry[0x5DC4] = 0;
    }
    mode = selector & 255;
    if (mode >= 0) {
        if (mode < 4) {
            goto first;
        } else if (mode == 9) {
            goto second;
        }
    }
    goto done;
first:
    func_8004F66C(mode);
    goto done;
second:
    func_8001CDAC(26, 35, 0, 0, 0, 6, 0, 1,
                  1, 0, 0, 128, 128, 128, 0, 1);
    *(u8 *)0x1F8002A1 = 0;
    D_800E6C28[0] = 0;
done:
    D_800E6C18 = selector & 255;
}
