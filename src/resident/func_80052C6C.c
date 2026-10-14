#include "common.h"

/* Partial read-only record view; full layout, field meanings and historical
 * API remain provisional. The early tests keep later fields unread. */
s32 func_80052C6C(u8 *record)
{
    s32 state;

    if (*(s16 *)(record + 4) != 0) {
        return 1;
    }
    if (record[0] == 0) {
        return 1;
    }
    state = record[0x396];
    switch (state) {
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 24:
    case 25:
    case 26:
    case 28:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 46:
    case 53:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 153:
    case 154:
    case 155:
    case 159:
    case 160:
    case 161:
    case 255:
        return 1;
    default:
        return 0;
    }
}
