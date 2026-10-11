#include "common.h"

/* Provisional void call views, not complete historical APIs. The original
 * dispatcher leaves incoming argument registers unchanged. */
extern void func_8007BED0(void);
extern void func_8007C09C(void);
extern void func_8007C264(void);
extern void func_8007C6E4(void);

void func_8007BE38(void)
{
    switch (*(u8 *)0x1F80029B) {
    case 0:
        func_8007BED0();
        break;
    case 1:
        func_8007C09C();
        break;
    case 2:
        func_8007C264();
        break;
    case 3:
        func_8007C6E4();
        break;
    }
}
