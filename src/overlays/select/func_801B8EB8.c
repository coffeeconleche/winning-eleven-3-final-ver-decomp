#include "common.h"

extern u8 D_8010A2EA;
extern u8 D_8010A2EB;
extern u8 D_801DA333;
extern u8 D_801DA334;
extern u8 D_1F8002D3;
extern u8 D_1F8002D4;
extern u8 D_1F8002D7;
extern u8 D_1F8002D8;

s32 func_801B8EB8(void) {
    u8 first;
    u8 second;
    s32 result;

    first = D_1F8002D3 + D_1F8002D4 + D_8010A2EA;
    D_801DA333 = first;

    second = D_1F8002D7 + D_1F8002D8 + D_8010A2EB;
    D_801DA334 = second;

    if ((first | second) != 0) {
        result = first == second;
    } else {
        result = 0;
    }
    /* Preserve the original shared return block. */
    __asm__ volatile ("");
    return result;
}
