#include "common.h"

extern u8 D_801DA2F4[], D_801DA2F6;
extern u8 D_801D8DF5, D_801D8DF6, D_801D8DF7, D_801D8DF8, D_801D8DF9;
extern s32 func_8018E640(s32, s32, s32);
extern s32 func_8006F84C(u8, u8);

void func_8019DDA8(u8 selector) {
    u8 *field;
    s32 minimum;
    switch (selector) {
    case 1:
    case 11: {
        /* Retain unsigned division and the narrowed decimal remainder. */
        u32 value = selector;
        u8 digit = value % 10;
        switch (D_801DA2F4[digit]) {
        case 0:
            minimum = 0;
            /* Keep the zero lower bound before selecting its field address. */
            __asm__("" : "=r"(minimum) : "0"(minimum));
            field = &D_801D8DF5;
            *field = func_8018E640(*field, minimum, 2);
            break;
        case 1:
            minimum = 0;
            field = &D_801D8DF6;
            *field = func_8018E640(*field, minimum, 5);
            break;
        }
        break;
    }
    case 2: {
        s32 mode = D_801DA2F6;
        switch (mode) {
        case 0:
            minimum = 3;
            field = &D_801D8DF7;
            *field = func_8018E640(*field, minimum, 16);
            break;
        case 1:
            minimum = 0;
            /* Keep the zero lower bound before selecting its field address. */
            __asm__("" : "=r"(minimum) : "0"(minimum));
            field = &D_801D8DF8;
            *field = func_8018E640(*field, minimum, 1);
            if (*field == 0) {
                func_8006F84C(42, 48);
                func_8006F84C(45, 48);
                func_8006F84C(48, 48);
            } else {
                func_8006F84C(42, 128);
                func_8006F84C(45, 128);
                func_8006F84C(48, 128);
            }
            break;
        case 2:
            minimum = 0;
            goto lastField;
        }
        break;
    }
    case 13:
        minimum = 0;
lastField:
        field = &D_801D8DF9;
        *field = func_8018E640(*field, minimum, 1);
        break;
    }
}
