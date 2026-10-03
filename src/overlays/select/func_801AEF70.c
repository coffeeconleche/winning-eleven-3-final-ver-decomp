#include "common.h"

extern volatile u8 D_801DA620[];
extern volatile u8 D_801DA621[];

void func_801AEF70(s32 first, s32 second) {
    u8 second_first;
    register u8 first_second asm("$3");
    register u8 first_first asm("$6");

    first *= 2;
    second *= 2;
    second_first = D_801DA620[second];
    first_first = D_801DA620[first];
    first_second = D_801DA621[first];
    D_801DA620[first] = second_first;
    D_801DA621[first] = D_801DA621[second];
    D_801DA620[second] = first_first;
    D_801DA621[second] = first_second;
}
