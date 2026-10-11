#include "common.h"

/* Existing storage, viewed only at the observed byte offsets. */
extern u8 D_800FF748[];
extern u16 scratch2B8 __asm__("0x1F8002B8");
extern void func_8004FCE0(void);
extern void func_8004FD14(u32);

/* Record/state meanings and original return contract remain provisional. */
void func_8004FC54(u32 mode)
{
    u8 *base = D_800FF748;
    u8 *record = base;
    s32 remaining = 23;

    do {
        record[0] = 0;
        record += 1000;
    } while (--remaining >= 0);
    func_8004FCE0();
    func_8004FD14((u8)mode);
    base[0x6634] = 0;
    base[0x665C] = 0;
    base[0x6684] = 0;
    base[0xAC21] = 0;
    base[0xAC20] = 0;
    scratch2B8 = 0x7FFF;
}
