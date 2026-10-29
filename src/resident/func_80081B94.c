#include "common.h"

extern void func_80081C30(void);
extern void func_80081FE0 (u32, u32, u32, u32);
extern void func_800820A0(void);
extern void func_800823C4(void);
extern void func_8008248C(void);
extern void func_800827D4(void);

/* Retain the already-recovered 80081FE0 raw-word call view; its complete API
 * remains provisional. Other handlers consume no initial argument words. */
/* Per-mode handler dispatcher selected by the scratch mode byte at 0x1F80029B. */
void func_80081B94(u32 raw0,u32 raw1,u32 raw2,u32 raw3) {
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_80081C30();
        break;
    case 1:
        func_80081FE0(raw0,raw1,raw2,raw3);
        break;
    case 2:
        func_800820A0();
        break;
    case 3:
        func_800823C4();
        break;
    case 4:
        func_8008248C();
        break;
    case 5:
        func_800827D4();
        break;
    }
}
