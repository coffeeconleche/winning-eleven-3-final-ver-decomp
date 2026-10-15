#include "common.h"

extern u32 D_800FB568, D_800FB56C, D_800FB570, D_800FB574;
extern u32 D_800FF698, D_800FF69C, D_800FF6A0, D_800FF6A8;
/* Existing BIOS event handles are opaque 32-bit words. */
extern s32 func_800ACE38(u32, s32, s32, s32 (*)(void));
extern s32 func_800ACE58(s32);
extern void func_800ACE68(void);
extern void func_800C59B8(s32);
extern void func_800C5A24(void);
extern void func_800ACE28(void);

void func_8001E158(void)
{
    D_800FB568 = func_800ACE38(0xF4000001U, 4, 0x2000, 0);
    D_800FB56C = func_800ACE38(0xF4000001U, 0x8000, 0x2000, 0);
    D_800FB570 = func_800ACE38(0xF4000001U, 0x100, 0x2000, 0);
    D_800FB574 = func_800ACE38(0xF4000001U, 0x2000, 0x2000, 0);
    D_800FF698 = func_800ACE38(0xF0000011U, 4, 0x2000, 0);
    D_800FF69C = func_800ACE38(0xF0000011U, 0x8000, 0x2000, 0);
    D_800FF6A0 = func_800ACE38(0xF0000011U, 0x100, 0x2000, 0);
    D_800FF6A8 = func_800ACE38(0xF0000011U, 0x2000, 0x2000, 0);
    func_800ACE58(D_800FB568);
    func_800ACE58(D_800FB56C);
    func_800ACE58(D_800FB570);
    func_800ACE58(D_800FB574);
    func_800ACE58(D_800FF698);
    func_800ACE58(D_800FF69C);
    func_800ACE58(D_800FF6A0);
    func_800ACE58(D_800FF6A8);
    func_800ACE68();
    func_800C59B8(1);
    func_800C5A24();
    func_800ACE28();
}
