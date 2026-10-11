#include "common.h"

/* Byte-access and one-pointer call views, not recovered complete APIs. */
extern void func_8009DCC0(u8 *);

void func_8009E2A4(u8 *record)
{
    switch (*(u8 *)0x1F80029A) {
    case 2:
        record[0x3E2] = 2;
        record[0x3E3] = 0;
        break;
    case 3:
        record[0x3E2] = 3;
        record[0x3E3] = 0;
        break;
    case 4:
        record[0x3E2] = 1;
        record[0x3E3] = 0;
        break;
    default:
        record[0x3E2] = 12;
        record[0x3E3] = 0;
        func_8009DCC0(record);
        break;
    }
}
