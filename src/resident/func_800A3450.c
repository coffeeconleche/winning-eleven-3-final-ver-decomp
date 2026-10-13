#include "types.h"

/* Scalar access view of the existing scratch halfword; allocates no storage. */
extern u16 scratch_0F8 __asm__("0x1F8000F8");

void func_800A3450(u8 *arg0)
{
    s16 direction = -1;
    s32 phase;

    if (arg0[0x399] == 0) {
        direction = 1;
    }
    if (*(u8 *)0x1F80000A != 0) {
        switch (((u8 *)0x1F8002FF)[arg0[0x398]]) {
        case 2:
            phase = *(u8 *)0x1F80030B;
            switch (phase) {
            case 0:
            case 1:
            case 2:
            case 3:
                scratch_0F8 += direction * 0x600;
                break;
            case 4:
            case 5:
                scratch_0F8 += direction * 0x700;
                break;
            }
            break;
        case 1:
            phase = *(u8 *)0x1F80030B;
            switch (phase) {
            case 0:
            case 1:
            case 2:
            case 3:
                scratch_0F8 += direction * 0x300;
                break;
            case 4:
            case 5:
                scratch_0F8 += direction * 0x500;
                break;
            }
            break;
        case 0:
            phase = *(u8 *)0x1F80030B;
            switch (phase) {
            case 0:
            case 1:
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                scratch_0F8 += direction * 0x300;
                break;
            }
            break;
        }
    }
}
