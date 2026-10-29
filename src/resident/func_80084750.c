#include "common.h"

extern void func_800847DC(void);
extern void func_80084B40(void);
extern void func_80084D44(void);
extern void func_800854F4(void);
extern void func_800859C0(void);

/* Per-mode handler dispatcher selected by the scratch mode byte at 0x1F80029B. */
void func_80084750(void) {
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_800847DC();
        break;
    case 1:
        func_80084B40();
        break;
    case 2:
        func_80084D44();
        break;
    case 3:
        func_800854F4();
        break;
    case 4:
        func_800859C0();
        break;
    }
}
