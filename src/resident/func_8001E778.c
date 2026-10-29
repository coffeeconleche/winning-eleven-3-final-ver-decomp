#include "common.h"

extern void func_8001E814(u32, u32, u32, u32);
extern void func_8001EB10(void);
extern void func_8001EE84(u32, u32);
extern void func_8001F134(void);
extern void func_8001F2D0(void);
extern void func_8001F3E0(u32, u32, u32, u32);

/* Raw O32 entry words are forwarded where the native call has no setup.
 * 8001EE84 dereferences the incoming A1; the two overlay entry APIs remain
 * unresolved, so retain all four words there rather than inventing void APIs.
 * Existing callers' ambient-register context needs an explicit native adapter;
 * these raw call views do not establish complete portable helper contracts. */
void func_8001E778(u32 raw0, u32 raw1, u32 raw2, u32 raw3) {
    switch (*(u8 *)0x1F80029C) {
    case 0:
        func_8001E814(raw0, raw1, raw2, raw3);
        break;
    case 1:
        func_8001EB10();
        break;
    case 2:
        func_8001EE84(raw0, raw1);
        break;
    case 3:
        func_8001F134();
        break;
    case 4:
        func_8001F2D0();
        break;
    case 5:
        func_8001F3E0(raw0, raw1, raw2, raw3);
        break;
    }
}
