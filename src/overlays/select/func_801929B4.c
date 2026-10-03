#include "common.h"

extern u32 D_800FB568;
extern u32 D_800FB56C;
extern u32 D_800FB570;
extern u32 D_800FB574;
extern u32 D_801D8A78;
extern s32 func_800ACE48(u32);
extern s32 func_800C5938(u32);

void func_801929B4(u32 channel) {
    /* Read each handle after the preceding call, not in advance. */
    func_800ACE48(D_800FB568);
    func_800ACE48(D_800FB56C);
    func_800ACE48(D_800FB570);
    func_800ACE48(D_800FB574);

    /* Reset only after the indefinite wait, preserving the 32-bit shift. */
    while (func_800C5938(channel << 4) == 0) {
    }
    D_801D8A78 = 0;
}
