#include "common.h"

extern u8 D_8010C1D8[];
extern s32 func_8001E6B8(s32);
extern s32 func_8009A278(u8 mode);

/* Periodic marker update: on every 480th scratch-clock tick with a clear
 * phase byte, roll a mode value, then publish the phase through the record. */
void func_8009ACC0(void) {
    u8 *record = D_8010C1D8;
    u8 *scratch = (u8 *)0x1F800000;
    u32 mode;

    if (*(s32 *)0x1F800290 % 480 == 0 && scratch[0x10] == 0) {
        mode = func_8001E6B8(5);
        switch (mode) {
        case 0:
        case 1:
            record[5] = 0;
            break;
        case 2:
        case 3:
            record[5] = 1;
            break;
        case 4:
            record[5] = 2;
            break;
        }
        if (record[6] != 0) {
            scratch[0x10] = 1;
        } else {
            record[6] = 2;
            scratch[0x10] = 1;
        }
    }
    if (scratch[0x10] != 0) {
        if ((u8)func_8009A278(record[5]) != 0) {
            scratch[0x10] = 0;
        }
    }
}
