#include "common.h"

/* Raw matching call-site view only: the original replaces a0 but leaves
 * a1-a3 untouched. The complete caller reaches this after other callbacks
 * and a syscall, so those words are residues, not recovered API inputs.
 * DD50's accepted four-word definition is unchanged; a native port must
 * resolve and pass its arguments explicitly rather than use this view. */
extern void func_8001DD50();
extern void func_8001DD10(void);
extern void func_80089BD8(void);
extern void func_8001DDD0(void);
extern void func_8001E0F4(void);
extern void func_800AD688(u32 value);
extern u8 D_800F0EA0;
extern u32 D_80106838;
extern u32 D_8010683C;
extern u32 D_80106840;
extern u8 D_8010A368;
extern u8 D_8010A369;

/* Byte/word views and the BIOS thunk's broader API remain provisional. */
void func_8001DC80(void)
{
    func_8001DD50(12);
    func_8001DD10();
    func_80089BD8();
    func_8001DDD0();
    func_8001E0F4();
    D_800F0EA0 = 0;
    func_800AD688(1);
    D_80106838 = 1;
    D_8010683C = 383;
    D_80106840 = 239;
    D_8010A368 = 0;
    D_8010A369 = 0;
    *(u16 *)0x1F8002B8 = 0x7FFF;
}
