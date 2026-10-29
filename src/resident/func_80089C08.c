#include "common.h"

/* Advance per-record marker bytes from the state halfword at +0x38E;
 * partial view of a 1000-byte record. */
void func_80089C08(u8 *record) {
    switch (*(u16 *)(record + 0x38E)) {
    case 119:
        if (record[0x390] < 5) {
            record[0x3A7] = 1;
        }
        /* fallthrough */
    case 33:
    case 39:
    case 44:
    case 46:
    case 98:
    case 99:
    case 107:
    case 110:
    case 113:
    case 117:
        record[0x3AD] = 0;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
    case 28:
    case 34:
    case 35:
    case 38:
    case 40:
    case 42:
    case 45:
    case 49:
    case 50:
    case 83:
    case 84:
    case 85:
    case 87:
    case 88:
    case 90:
    case 97:
    case 100:
    case 106:
        record[0x3A7] = 1;
        /* fallthrough */
    default:
        record[0x3AD] = 2;
        break;
    }
}
