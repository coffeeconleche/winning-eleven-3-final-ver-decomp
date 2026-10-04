#include "common.h"

extern s8 D_801D8C60;
extern u8 D_801D8C64, D_801D8C65, D_801D8C66, D_801D8C67;
extern u8 D_80108667;

s32 func_8019CB54(void) {
    /* These short-lived bindings retain the original/copy distinction and
     * captured rotation bytes, including v0 reuse in the four-field paths. */
    register s32 original asm("$4") = D_801D8C60;
    s32 step = -1;
    s32 value;
    register u8 first asm("$6");
    u8 middle;
    register u8 last asm("$4");
    register u8 extra asm("$2");
    u8 *head;
    /* Keep eight otherwise-unused bytes for the measured eight-byte frame;
     * their original source purpose is unknown. No accesses are introduced. */
    u8 frameSlot[8];
    /* Empty identity/input constraints preserve the measured lifetimes and
     * register reuse; they emit no instructions or memory accesses. */
    asm("" : "=r"(original) : "0"(original));
    value = original;
    if (original >= 0) step = original != 0;
    value += step;
    D_801D8C60 = value;
    if (value & 7) return 0;

    switch (step) {
    case -1: {
        u8 mode = *(u8 *)0x1F8002E1;
        if ((mode == 2 && (D_80108667 & 15) == 0) || mode == 1) {
            u8 *shortHead = &D_801D8C64;
            middle = D_801D8C65;
            first = *shortHead;
            last = D_801D8C67;
            *shortHead = middle;
            D_801D8C65 = last;
            D_801D8C67 = first;
        } else {
            head = &D_801D8C64;
            extra = D_801D8C65;
            first = *head;
            middle = D_801D8C66;
            last = D_801D8C67;
            asm("" : : "r"(extra));
            *head = extra;
            D_801D8C65 = middle;
            D_801D8C66 = last;
            D_801D8C67 = first;
        }
        break;
    }
    case 1: {
        u8 mode = *(u8 *)0x1F8002E1;
        if ((mode == 2 && (D_80108667 & 15) == 0) || mode == 1) {
            u8 *shortHead = &D_801D8C64;
            middle = D_801D8C67;
            first = *shortHead;
            last = D_801D8C65;
            *shortHead = middle;
            D_801D8C67 = last;
        } else {
            head = &D_801D8C64;
            extra = D_801D8C67;
            first = *head;
            middle = D_801D8C66;
            last = D_801D8C65;
            asm("" : : "r"(extra));
            *head = extra;
            D_801D8C67 = middle;
            D_801D8C66 = last;
        }
        D_801D8C65 = first;
        break;
    }
    }
    return 1;
}
