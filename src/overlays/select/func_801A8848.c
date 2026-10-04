#include "common.h"

extern void func_801A85B0(s16, s16, u8, u8, u8);

void func_801A8848(s32 x, s16 y, u16 number, s32 step, u8 byte0, u8 selector) {
    register s32 current __asm__("$22") = x;
    register u32 value __asm__("$18");
    u32 digit;
    /* These empty ties retain the separate word coordinate and its call-register
     * copy; the bindings reproduce allocation without emitting instructions. */
    __asm__("" : "=r"(current) : "0"(current));
    if (number > 999) number = 999;
    value = number;
    if (value >= 100) {
        register s32 coordinate __asm__("$4");
        u32 hundreds = value / 100u;
        func_801A85B0((s16)x, y, hundreds, byte0, selector);
        number = value - hundreds * 100;
        value = number;
        coordinate = x + step;
        __asm__("" : "=r"(coordinate) : "0"(coordinate));
        current = coordinate;
        __asm__("" : "=r"(coordinate) : "0"(coordinate));
        digit = value / 10u;
        func_801A85B0((s16)coordinate, y, digit, byte0, selector);
        number = value - digit * 10;
    } else if (value >= 10) {
        register s32 coordinate __asm__("$4") = x + step;
        __asm__("" : "=r"(coordinate) : "0"(coordinate));
        current = coordinate;
        __asm__("" : "=r"(coordinate) : "0"(coordinate));
        digit = value / 10u;
        func_801A85B0((s16)coordinate, y, digit, byte0, selector);
        number = value - digit * 10;
    }
    func_801A85B0((s16)(current + step), y, number, byte0, selector);
}
