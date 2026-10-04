#include "common.h"

extern u8 D_800FF748[];
extern u8 D_801D8DF5, D_801D8DF6, D_801D8DF7, D_801D8DF8, D_801D8DF9;
extern s32 func_8006FB90(u8, u8, s32);
extern s32 func_8006FBCC(u8, u8, s32);

/* Descriptor field names and original aggregate/prototype details are unknown. */
void func_8019D904(u8 mode) {
    u8 *base = D_800FF748;
    /* Retain the signed product/remainder in the measured v1 register. This
     * also preserves the descriptor-branch allocation without other bindings. */
    register s32 product __asm__("$3");

    switch (mode) {
    case 1:
    case 11: {
        u8 *descriptor;
        {
            s32 firstValue = D_801D8DF5;
            descriptor = *(u8 **)(base + 0x640C);
            switch (firstValue) {
            case 1:
                descriptor[3] = 168;
                descriptor[1] = 48;
                *(u16 *)(descriptor + 6) = 48;
                break;
            case 0:
                descriptor[3] = 128;
                descriptor[1] = 40;
                *(u16 *)(descriptor + 6) = 52;
                break;
            case 2:
                descriptor[3] = 216;
                descriptor[1] = 40;
                *(u16 *)(descriptor + 6) = 52;
                break;
            }
        }
        {
            s32 eight = 8;
            u8 *source;
            s32 current;
            descriptor = *(u8 **)(base + 0x6434);
            source = &D_801D8DF6;
            descriptor[13] = eight;
            current = *source;
            if (current == 0) {
                descriptor[3] = 168;
                descriptor[13] = 0;
            } else {
                descriptor[3] = ((current + 1) >> 1) * 8 - 128;
                /* The descriptor byte store can alias source; retain its
                 * reread and signed division/remainder rather than reuse it. */
                current = *source;
                current++;
                product = current * 5;
                product = (product % 10) * 8 - 128;
                descriptor[15] = product;
            }
        }
        break;
    }
    case 2: {
        u8 *digits = &D_801D8DF7;
        {
            u32 firstAmount = *digits;
            func_8006FB90(40, 0, (u8)(firstAmount / 10) * 8);
        }
        {
            u32 secondAmount = *digits;
            func_8006FB90(40, 1, (u8)(secondAmount % 10) * 8);
        }
        func_8006FBCC(41, 0, D_801D8DF8 * 16 + 144);
        func_8006FB90(42, 0, D_801D8DF9 * 24 + 80);
        break;
    }
    case 13:
        func_8006FBCC(40, 0, D_801D8DF9 * 16 + 144);
        break;
    }
}
