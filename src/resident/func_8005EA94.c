#include "common.h"

extern u8 D_8010C1EC;
extern u8 D_8010C1ED;
extern void func_8005EB48(u8 *record);
extern void func_8005EF94(u8 *record);
extern void func_80062DFC(u8 *record);
extern void func_80063B94(u8 *record);
extern void func_80063F40(u8 *record);
extern void func_800647F0(u8 *record);

/* Dispatch the real record pointer to the selected state handler. */
void func_8005EA94(u8 *record) {
    switch (D_8010C1EC) {
    case 0:
        func_8005EB48(record);
        break;
    case 1:
        func_8005EF94(record);
        break;
    case 2:
        func_80062DFC(record);
        break;
    case 3:
        func_80063B94(record);
        break;
    case 4:
        func_80063F40(record);
        break;
    case 5:
        func_800647F0(record);
        break;
    default:
        D_8010C1EC = 0;
        D_8010C1ED = 0;
        break;
    }
}
