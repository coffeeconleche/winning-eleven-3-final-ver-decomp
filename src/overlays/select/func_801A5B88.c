#include "common.h"

extern u8 D_801D8078[];

/* Four 36-byte records, addressed using the narrowed byte index. The
 * original field names and aggregate type are not established. */
void func_801A5B88(u32 mode, u8 index) {
    s32 i;
    u8 *record;
    /* Unsupported modes do not modify any record bytes. */
    switch (mode) {
    case 0: case 3: case 4:
        for (i = 0; i < 4;) {
            s32 row = (s32)index * 4 + i;
            i++;
            record = D_801D8078 + row * 36;
            record[4] = 0;
            record[5] = 0;
            record[6] = 128;
            record[12] = 0;
            record[13] = 0;
            record[14] = 128;
            record[20] = 0;
            record[21] = 0;
            record[22] = 128;
            record[28] = 0;
            record[29] = 0;
            record[30] = 128;
        }
        break;
    case 1:
        for (i = 0; i < 4;) {
            s32 row = (s32)index * 4 + i;
            i++;
            record = D_801D8078 + row * 36;
            record[4] = 128;
            record[5] = 0;
            record[6] = 0;
            record[12] = 128;
            record[13] = 0;
            record[14] = 0;
            record[20] = 128;
            record[21] = 0;
            record[22] = 0;
            record[28] = 128;
            record[29] = 0;
            record[30] = 0;
        }
        break;
    case 2:
        for (i = 0; i < 4;) {
            s32 row = (s32)index * 4 + i;
            i++;
            record = D_801D8078 + row * 36;
            record[4] = 128;
            record[5] = 128;
            record[6] = 0;
            record[12] = 128;
            record[13] = 128;
            record[14] = 0;
            record[20] = 128;
            record[21] = 128;
            record[22] = 0;
            record[28] = 128;
            record[29] = 128;
            record[30] = 0;
        }
        break;
    }
}
