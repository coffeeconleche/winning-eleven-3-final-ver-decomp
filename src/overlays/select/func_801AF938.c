#include "common.h"

extern u8 D_801D86F2;
extern s16 D_801D86EA;
extern u8 D_801D8B21[];
extern u8 D_801D9623[];

/* Caller-word ABI views: negative coordinates reach the callees before their
 * internal halfword/byte narrowing. Complete helper prototypes are unknown. */
extern void func_80193FB4(s32, s32, s32, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_801942E0(s32, u8 *, s32, s32, s32, s32, s32, s32,
                         s32, s32, s32, s32);

/* Only the incoming low halfword is retained. Its coordinate uses are signed;
 * the original descriptor meanings and complete parameter type remain unknown. */
void func_801AF938(u16 offset) {
    s32 i, y, z, z2;
    u8 *text, *text2;

    {
        s32 size = 29;
        s32 scale = 4096;
        s32 color = 128;
        s32 one = 1;

        func_80193FB4(2, 0x30AC, 0, (s16)offset, ((s16)offset >> 4) + 2,
                       size, 0, scale, scale, 0, 0, color, color, color, 0, one, one);
        func_80193FB4(8, 0x30C0, 0, 0, 0, 12, 0, 4096, 4096,
                       0, 0, 128, 128, 128, 0, 1, 1);
        if (D_801D86F2 == 0) {
            func_80193FB4(3, 0x30B0, 0, (s16)offset, -((s16)offset >> 4),
                           24, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
            func_80193FB4(5, 0x30BE, 0, (s16)offset, -((s16)offset >> 4),
                           29, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
            func_80193FB4(7, 0x30BE, 0, (s16)offset, -((s16)offset >> 4) + 3,
                           29, 116, 4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
        } else {
            func_80193FB4(3, 0x30B1, 0, (s16)offset, -((s16)offset >> 4),
                           24, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
            func_80193FB4(5, 0x30BF, 0, (s16)offset, -((s16)offset >> 4),
                           29, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
            func_80193FB4(7, 0x30BF, 0, (s16)offset, -((s16)offset >> 4) + 3,
                           29, 116, 4096, 4096, 0, 0, 128, 128, 128, 0, 4, 1);
        }
    }
    {
        s32 size = 29;
        s32 scale = 4096;
        s32 color = 128;
        s32 one = 1;

        func_80193FB4(4, 0x30B2, 0, (s16)offset, -((s16)offset >> 4),
                       size, 0, scale, scale, 0, 0, color, color, color, 0, 4, one);
        func_80193FB4(6, 0x30B2, 0, (s16)offset, -((s16)offset >> 4) + 3,
                       size, 116, scale, scale, 0, 0, color, color, color, 0, 5, one);
    }
    i = 0;
    {
        s32 scale = 4096;
        s32 color = 128;
        s32 one = 1;
        u8 *start;

        z2 = -57;
        start = D_801D9623;
        text2 = start + 405;
        z = -55;
        text = start;
        y = 0;
        do {
            s32 inverse;

            /* The signed table base is read again after each callback group.
             * Preserve the unchecked lookup and the first 255 sentinel exit. */
            if (D_801D8B21[(D_801D86EA + i) * 10] == 255) break;
            inverse = -(s16)offset;
            func_80193FB4(i + 9, i + 0x30B5, 0, inverse, 0, 12, 0,
                           scale, scale, 0, 0, color, color, color, 0, 3, one);
            func_80193FB4(i + 18, 0x30B3, 0, inverse, y, 12, 0,
                           scale, scale, 0, 0, color, color, color, 0, 4, one);
            func_80193FB4(i + 27, 0x30B4, 0, inverse, y, 12, 0,
                           scale, scale, 0, 0, 32, 48, 48 + (i << 3), 0, 5, one);
            func_801942E0(i + 7, text, inverse - 132, z, 200,
                           one, 0, 0, 0, 4, 3, one);
            func_801942E0(i + 16, text2, inverse - 100, z2, 200,
                           one, 0, 0, 0, 2, 3, one);
            text2 += 45;
            z += 17;
            text += 45;
            y += 17;
            i++;
            z2 += 17;
        } while (i < 9);
    }
}
