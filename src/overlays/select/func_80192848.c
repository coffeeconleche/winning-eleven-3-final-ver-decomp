#include "common.h"

/* The seven-byte template and 40-byte record layouts are only access views. */
typedef struct {
    s8 bytes[7];
} Template7;
typedef struct {
    s32 size;
    u8 remaining[36];
} Record40;

extern Template7 D_80189454;
extern u8 D_801DA070[];
extern Record40 D_801DA088[];
extern s32 D_801D8A90, D_801D8A74;
extern s32 func_800ACEC8(Template7 *, u8 *);
extern s32 func_800ACED8(u8 *);

s32 func_80192848(s32 value) {
    Template7 local = D_80189454;

    local.bytes[2] = value + 0x30;
    if (func_800ACEC8(&local, D_801DA070) != 0) {
        s32 amount = 1;
        s32 initialSize = D_801DA088[0].size;
        D_801D8A90 = amount;
        if (initialSize != 0) {
            amount = (initialSize + 0x1FFF) / 0x2000;
        }
        D_801D8A74 = amount;
        while (func_800ACED8(D_801DA070 + D_801D8A90 * 40) != 0) {
            s32 size = D_801DA088[D_801D8A90].size;
            if (size == 0) {
                D_801D8A74++;
            } else {
                D_801D8A74 += (size + 0x1FFF) / 0x2000;
            }
            D_801D8A90++;
        }
    } else {
        D_801D8A90 = 0;
        D_801D8A74 = 0;
    }
    return D_801D8A74;
}
