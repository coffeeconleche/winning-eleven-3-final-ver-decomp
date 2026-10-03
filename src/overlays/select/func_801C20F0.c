#include "common.h"

extern u8 D_801D8B17, D_80108668;
extern u8 *D_801055B4;
extern void func_801C18AC(void);
extern void func_801A8E08(void);
extern void func_801A8CD0(void);
/* The callee narrows the ABI words to descriptor fields; source prototype
 * and field meanings are not known. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                          s32, s32, s32, s32, s32, s32, s32, s32);

void func_801C20F0(void) {
    u8 state;
    u8 *record;
    func_801C18AC();
    func_801A8E08();
    func_80193FB4(4, 0x3127, 0, 0, 0, 12, 0, 0x1000, 0x1000,
                 0, 0, 128, 128, 128, 0, 3, 1);
    func_80193FB4(5, 0x3128, 0, 0, 0, 12, 0, 0x1000, 0x1000,
                 0, 0, 128, 128, 128, 0, 5, D_801D8B17);
    state = D_80108668;
    record = D_801055B4;
    if (state == 3) {
        record[96] = 255;
    } else {
        record[96] = 0;
    }
    func_801A8CD0();
}
