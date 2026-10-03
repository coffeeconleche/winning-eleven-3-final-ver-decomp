#include "common.h"

extern u32 D_800FF698;
extern u32 D_800FF69C;
extern u32 D_800FF6A0;
extern u32 D_800FF6A8;
extern s32 func_800ACE48(u32);
extern s32 func_800C5958(u32);

s32 func_80192608(u32 channel) {
    s32 result;

    /* Preserve the initial calls and the handle rereads after each call. */
    func_800ACE48(D_800FF698);
    func_800ACE48(D_800FF69C);
    func_800ACE48(D_800FF6A0);
    func_800ACE48(D_800FF6A8);
    while (func_800C5958(channel << 4) == 0) {
    }

    /* Retry the ordered checks indefinitely, retaining first-nonzero priority. */
    do {
        if (func_800ACE48(D_800FF698) != 0) {
            result = 1;
        } else if (func_800ACE48(D_800FF69C) != 0) {
            result = -1;
        } else if (func_800ACE48(D_800FF6A0) != 0) {
            result = -2;
        } else {
            result = func_800ACE48(D_800FF6A8) != 0 ? -3 : 0;
        }
    } while (result == 0);
    return result;
}
