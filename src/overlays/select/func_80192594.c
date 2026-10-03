#include "common.h"

extern u32 D_800FB568;
extern u32 D_800FB56C;
extern u32 D_800FB570;
extern u32 D_800FB574;
extern s32 func_800ACE48(u32);
extern s32 func_800C5948(u32);

void func_80192594(u32 channel) {
    /* Read each handle after the preceding BIOS call, not in advance. */
    func_800ACE48(D_800FB568);
    func_800ACE48(D_800FB56C);
    func_800ACE48(D_800FB570);
    func_800ACE48(D_800FB574);

    /* This wrapper uses the distinct poll entry, still without a timeout. */
    while (func_800C5948(channel << 4) == 0) {
    }
}
