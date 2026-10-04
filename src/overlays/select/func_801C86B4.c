#include "common.h"

/* A measured twelve-byte copy view, not the original complete record type.
 * Its byte alignment retains the compiler's unaligned aggregate transfers. */
typedef struct {
    u8 bytes[12];
} Prefix12;

/* Observed caller-word views: the helpers perform their own narrowing.
 * Complete original prototypes and record meanings remain unknown. */
extern Prefix12 *func_8001D004(s32);
extern void func_80196800(s32, s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_8006FAA8(s32, s32);
extern u8 D_801DADC0[], D_801DADC6;
extern u8 D_8018D8F0[], D_8018D8F1[], D_8018D8F2[];

/* The observed no-argument caller ignores the result. */
void func_801C86B4(void) {
    Prefix12 *first, *templates;
    s32 i, j;

    first = func_8001D004(0x9002);
    templates = func_8001D004(0x9003);
    for (i = 0; i < 6; i++) {
        u16 x = ((u16 *)(first + i))[3];
        u16 y = ((u16 *)(first + i))[4];
        u8 count = D_801DADC0[i];

        /* Preserve both halfwords across the complete twelve-byte copy.
         * No template-index bounds policy is introduced. */
        if (count == 0)
            first[i] = *templates;
        else
            first[i] = templates[count - 1];
        ((u16 *)(first + i))[3] = x;
        ((u16 *)(first + i))[4] = y;

        /* The count is reread after the copy and after each submission.
         * Keep the original signed index arithmetic and size comparison. */
        for (j = 0; j < D_801DADC0[i]; j++) {
            s32 dx = i < 3 ? j * 3 - 4 : j * 3 + 93;
            s32 dy = (i % 3) * 12 + 68;
            s32 size = i == 8 ? 4 : 3;
            u32 byte0 = D_8018D8F0[j * 3];
            u32 byte1 = D_8018D8F1[j * 3];
            u32 byte2 = D_8018D8F2[j * 3];

            func_80196800(0, dx, dy, size, 3, byte0, byte1, byte2, 1);
        }
        func_8006FAA8(5, D_801DADC6 | 0x9000);
    }
}
