#include "common.h"

extern u8 D_800FF748[];

void func_800477A0(u8 *target, u32 count)
{
    u8 *base = D_800FF748;
    u32 best_dist[16];
    u8 best_ids[16];
    u8 n = (u8)count;
    s32 i;
    s32 j;
    s32 k;

    if (n > 16) {
        n = 16;
    }
    for (i = 0; i < n; i++) {
        best_dist[i] = 0xFFFFFFFFU;
        best_ids[i] = 0;
    }

    for (i = 0; i < 22; i++) {
        u8 *rec = base + (i + 1) * 0x3E8;
        s32 dx;
        s32 dz;
        u32 d2;

        if (rec[0] == 0 || rec[0x3D2] != 0) {
            continue;
        }
        dx = *(s16 *)(target + 2) - *(s16 *)(rec + 2);
        dz = *(s16 *)(target + 6) - *(s16 *)(rec + 6);
        d2 = (u32)(dx * dx + dz * dz);

        for (j = 0; j < n; j++) {
            if (d2 < best_dist[j]) {
                for (k = n - 1; k > j; k--) {
                    best_ids[k] = best_ids[k - 1];
                    best_dist[k] = best_dist[k - 1];
                }
                best_ids[j] = rec[0x38D];
                best_dist[j] = d2;
                break;
            }
        }
    }

    for (i = 0; i < 22; i++) {
        u8 *rec = base + (i + 1) * 0x3E8;
        if (rec[0] == 0) {
            continue;
        }
        rec[0x3A5] = 12;
        rec[0x3A6] = 24;
        rec[0x3D3] = 0;
        rec[0x39C] = 0;

        for (j = 0; j < n; j++) {
            if (rec[0x38D] == best_ids[j]) {
                rec[0x3A5] = 0;
                rec[0x3A6] = 12;
                rec[0x3D3] = 1;
                rec[0x39C] = 1;
                break;
            }
        }
    }
}
