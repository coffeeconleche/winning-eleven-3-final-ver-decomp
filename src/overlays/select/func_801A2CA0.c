#include "common.h"

extern u8 D_800FF748[], D_80189FFC[], D_8018A004[];
extern u8 D_801D8B17, D_801D8A70;
/* Caller ABI views: the classifier narrows its input internally; the
 * descriptor callback consumes a byte in its seventeenth argument. Other
 * supplied words retain the measured caller bits, not a full prototype. */
extern s32 func_801A36D0(u32);
extern void func_80193FB4(u32, u32, s32, s32, s32, s32, s32, s32, s32,
    s32, s32, s32, s32, s32, s32, s32, u8);

u32 func_801A2CA0(u32 side0, u8 side1) {
    u32 mode = D_801D8B17;
    u32 firstSide = side0;
    u8 *base = D_800FF748;
    /* Modes other than 0/1 bypass these assignments in retail. Preserve
     * that target-specific residue/uninitialized-byte path; it is not a
     * portable C default or initialized return contract. */
    s32 first;
    u8 second;
    u32 category;
    switch (mode) {
    case 0: {
        /* Only the observed map/record accesses are known. */
        u32 code = base[0x8F25 + base[0xAB80 + D_801D8A70] * 36];
        if (code == 255) {
            first = 0;
            firstSide = 0;
        } else {
            first = func_801A36D0(code);
        }
        second = func_801A36D0(*(u8 *)0x1F8002DE);
        break;
    }
    case 1:
        first = func_801A36D0(*(u8 *)0x1F8002DD);
        second = func_801A36D0(*(u8 *)0x1F8002DE);
        break;
    }
    /* Keep categories captured across descriptor callbacks; later fields
     * and tables are accessed in the original order. */
    category = (u8)first;
    if (category == 6) {
        base[0x5EDC] = 0;
        base[0x5F2C] = 0;
        base[0xAC20] = firstSide;
    } else {
        func_80193FB4(7, category + 0x3052, 0, 0, 1, 26, 0, 4096, 4096,
            0, 0, 128, 128, 128, 0, 5, firstSide);
        func_80193FB4(9, category + 0x3059, 0, 0, 1, 26, 0, 4096, 4096,
            0, 0, 128, 128, 128, 0, 5, firstSide);
        base[0xAC20] = 0;
    }
    category = second;
    if (category == 6) {
        base[0x5F04] = 0;
        base[0x5F54] = 0;
        base[0xAC21] = side1;
    } else {
        func_80193FB4(8, category + 0x3052, 0, D_80189FFC[category], 1, 26, 0, 4096, 4096,
            0, 0, 128, 128, 128, 0, 5, side1);
        func_80193FB4(10, category + 0x3059, 0, D_8018A004[category], 1, 26, 0, 4096, 4096,
            0, 0, 128, 128, 128, 0, 5, side1);
        base[0xAC21] = 0;
    }
    return (u8)first;
}
