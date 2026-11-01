#include "common.h"

extern s32 func_8006DB48(u8 *record);
extern void func_800512B8(u8 *record, u32 selector);
extern void func_8009406C(u8 *record);

/* Replay-state router on the record phase byte at +0x396; the empty cases
 * intentionally do nothing before the join. */
void func_8006C53C(u8 *record) {
    u8 *scratch = (u8 *)0x1F800000;

    switch (record[0x396]) {
    case 135:
    case 136:
    case 140:
    case 153:
    case 154:
    case 159:
        scratch[0x2FC] = 1;
        /* fallthrough */
    case 144:
        *(u16 *)(*(u8 **)(scratch + 0x2F4) + 0x3DC) = 1;
        return;
    case 15:
    case 27:
    case 36:
    case 37:
    case 38:
    case 40:
    case 42:
        if (*(s16 *)(record + 0x3BE) == 0) {
            return;
        }
        func_8006DB48(record);
        record[0x396] = 0x82;
        return;
    case 4:
    case 5:
    case 6:
    case 8:
    case 10:
        if (record[0x38D] != scratch[0x2A9]) {
            return;
        }
        /* fallthrough */
    case 11:
        if (record[0x39A] != 0) {
            return;
        }
        func_800512B8(record, 4);
        goto tail;
    case 0:
    case 1:
    case 7:
    case 14:
        if (func_8006DB48(record) != 0) {
            return;
        }
        if (record[0x38D] != scratch[0x2A9]) {
            record[0x396] = 0x82;
        }
        /* fallthrough */
    case 2:
    case 3:
        if (record[0x38D] != scratch[0x2A9]) {
            return;
        }
        if (record[0x39A] == 0) goto block648;
        record[0x396] = 10;
        record[0x397] = 0;
        return;
    case 129:
    case 146:
    case 148:
    case 149:
    case 151:
block648:
        if (record[0x38D] != scratch[0x2A9]) {
            return;
        }
        func_800512B8(record, 4);
        scratch[0x332] = 4;
tail:
        func_8009406C(record);
        return;
    case 128:
        record[0x396] = 0x82;
        /* fallthrough */
    default:
        if (*(u8 *)((u32)scratch + 0x29A) == 1) {
            func_8006DB48(record);
        }
        break;
    case 12:
    case 13:
    case 16:
    case 20:
    case 24:
    case 30:
    case 31:
    case 45:
    case 48:
    case 49:
    case 131:
    case 132:
    case 133:
    case 134:
    case 137:
    case 138:
    case 139:
    case 141:
    case 142:
    case 143:
    case 145:
    case 147:
    case 150:
    case 152:
    case 155:
    case 160:
    case 161:
    case 255:        break;
    }
}
