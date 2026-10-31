#include "common.h"

/* Bank table resolver: maps a packed selector to its backing word entry. */
extern u32 D_800CDF20[];
extern u32 D_80122FA0[];
extern u32 D_80139778[];
extern u32 D_80123004[];
extern u32 D_801D42A4[];
extern u32 D_801D64E0[];
extern u32 D_801D46A0[];
extern u32 D_801D5120[];
extern u32 D_801D57E4[];
extern u32 D_801D8370[];

u32 func_8001D004(u32 selector) {
    switch ((u16)selector >> 12) {
    case 0:
        return D_800CDF20[(u16)selector];
    case 1:
        return D_80122FA0[selector & 0xFFF];
    case 2:
        return D_80139778[selector & 0xFFF];
    case 3:
        return D_80123004[selector & 0xFFF];
    case 4:
        return D_801D42A4[selector & 0xFFF];
    case 5:
        return D_801D64E0[selector & 0xFFF];
    case 7:
        return D_801D46A0[selector & 0xFFF];
    case 8:
        return D_801D5120[selector & 0xFFF];
    case 9:
        return D_801D57E4[selector & 0xFFF];
    case 10:
        return D_801D8370[selector & 0xFFF];
    }
}
