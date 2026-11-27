#include "common.h"

extern u8 D_800FF748[];
extern s16 D_800E6C18;
extern s16 D_800E6C28[];
extern u16 D_800E6C48[];
extern s16 D_800C7BC4[][10];

void func_8004F82C(void)
{
    u8 *base = D_800FF748;
    s32 i = 0;
    u32 offset = 0x410;

    for (; i < 10; i++, offset += 0x28) {
        u8 *entry = base + offset;
        if (entry[0x5DC4] == 0) {
            continue;
        }

        switch (D_800E6C28[i]) {
        case 0:
            D_800E6C48[i]--;
            if ((s16)D_800E6C48[i] <= 0) {
                s16 y = (s16)(*(u16 *)(entry + 0x5DD0) - 0x40);
                s16 limit = D_800C7BC4[D_800E6C18][i];
                *(s16 *)(entry + 0x5DD0) = y;
                if (y < limit) {
                    *(s16 *)(entry + 0x5DD0) = limit;
                    D_800E6C48[i] = 0x1C;
                    D_800E6C28[i]++;
                }
            }
            break;
        case 1:
            D_800E6C48[i]--;
            if ((s16)D_800E6C48[i] <= 0) {
                D_800E6C28[i]++;
            }
            break;
        case 2: {
            s16 y = (s16)(*(u16 *)(entry + 0x5DD0) - 0x40);
            *(s16 *)(entry + 0x5DD0) = y;
            if (y < -0xC0) {
                entry[0x5DC4] = 0;
            }
            break;
        }
        }
    }
}
