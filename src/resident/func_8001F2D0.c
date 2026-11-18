#include "common.h"

extern u8 D_800FF748[];
extern void func_8004FB68(s32);
extern void func_800477A0(u8 *, u32);
extern void func_80096094(s32);
extern void func_800204D8(void);
extern void func_8004F58C(s32);
extern void func_800AB620(s32);
extern void func_80057BD8(void);
extern void func_8001720C(void);

#if defined(__mips__)
#define REG(name) __asm__(name)
#else
#define REG(name)
#endif

#define BYTE(offset) (*(u8 *)(scratch + (offset)))

void func_8001F2D0(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    u32 slot;
    register u8 *bank REG("a2");
    u32 request;
    register u32 argumentScratch REG("a1");
    u8 mode;

    func_8004FB68(0);
    func_800477A0(*(u8 **)(scratch + 0x2F4), 5);
    /* Preserve the unused a1 clear before the record setup call. */
    argumentScratch = 0;
    __asm__("" : : "r"(argumentScratch));
    bank = D_800FF748;

    slot = (u8)(BYTE(0x2A8) % 24U);
    func_80096094((s32)(bank + 1000U * slot));

    if (!BYTE(0x309))
        return;

    func_800204D8();
    if (BYTE(0x2E1) != 5) {
        func_8004F58C(9);
        request = 0x51A;
    } else {
        request = 0x14E8;
    }
    func_800AB620(request);
    func_800AB620(0x517);
    func_80057BD8();

    mode = BYTE(0x2E1);
    *(u16 *)(scratch + 0x294) = 0;
    if (mode == 5)
        BYTE(0x2A1) = 1;
    func_8001720C();
}
