#include "common.h"

extern u8 D_801D8B17, D_801D8A70, D_801D1F60, D_801D1F61;
/* Local two-byte access view: only byte0 is observed here.  The complete
 * original table type and the intervening byte's meaning remain unknown. */
typedef struct {
    u8 byte0;
    u8 unknown1;
} PairView;
extern PairView D_800C6AF0[], D_800C6AF4[];
extern u8 D_800FF748[], D_8011BD2C[], D_8011BD2D[];
extern void func_80196378(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801A4DA8(void) {
    u8 selected;
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    /* Unsupported modes leave selected uninitialized in the original too. */
    switch (D_801D8B17) {
        case 0:
            selected = base[base[0xAB80 + D_801D8A70] * 36 + 0x8F25];
            if (selected == 255) D_801D1F60 = 0;
            break;
        case 1:
            selected = *(u8 *)0x1F8002DD;
            break;
    }
    if (D_801D1F60) {
        if (selected == 43) {
            func_80196378(0, -47, -10, 32, 16, 0, D_8011BD2C[(D_800C6AF4[0].byte0 >> 2) * 2] * 16 + 16, 26, 9, 1);
            func_80196378(0, -15, -10, 8, 16, D_8011BD2D[(D_800C6AF4[0].byte0 >> 2) * 2] * 8 + 32, 112, 26, 9, 1);
        } else {
            /* Capture the byte offset across calls, but reread the table byte. */
            u32 offset = selected * 2;
            func_80196378(0, -47, -10, 32, 16, 0, D_8011BD2C[(D_800C6AF0[offset / 2].byte0 >> 2) * 2] * 16 + 16, 26, 9, 1);
            func_80196378(0, -15, -10, 8, 16, D_8011BD2D[(D_800C6AF0[offset / 2].byte0 >> 2) * 2] * 8 + 32, 112, 26, 9, 1);
        }
    }
    /* Keep the scratch address live at the late flag test, as in the original. */
    __asm__("" : : "r"(scratch));
    if (D_801D1F61) {
        /* This comparison binding retains the original branch-delay constant.
         * The empty identity preserves byte narrowing and the separate scratch
         * reread on the nonspecial path; its memory barrier prevents CSE. */
        register u32 limit __asm__("$3") = 43;
        register u32 selectedSecond __asm__("$2") = scratch[0x2DE];
        __asm__("" : "=r"(selectedSecond) : "0"(selectedSecond), "r"(limit) : "memory");
        if ((u8)selectedSecond == 43) {
            func_80196378(0, 9, -10, 32, 16, 0, D_8011BD2C[(D_800C6AF4[0].byte0 >> 2) * 2] * 16 + 16, 26, 9, 1);
            func_80196378(0, 41, -10, 8, 16, D_8011BD2D[(D_800C6AF4[0].byte0 >> 2) * 2] * 8 + 32, 112, 26, 9, 1);
        } else {
            func_80196378(0, 9, -10, 32, 16, 0, D_8011BD2C[(D_800C6AF0[scratch[0x2DE]].byte0 >> 2) * 2] * 16 + 16, 26, 9, 1);
            func_80196378(0, 41, -10, 8, 16, D_8011BD2D[(D_800C6AF0[scratch[0x2DE]].byte0 >> 2) * 2] * 8 + 32, 112, 26, 9, 1);
        }
    }
}
