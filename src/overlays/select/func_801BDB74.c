#include "common.h"

extern u8 D_801D8A4C[], D_801DA2F0, D_80108669, D_801DA332;
extern u8 D_801D9290[], D_801D9291[], D_801D8EE0[], D_801D8FA0[];
extern u8 D_801DA310[], D_801DA311[], D_801DA312[], D_801DA313[];
extern u8 D_801D94D8[], D_801D94D9[];
/* Word-width caller views; the callees narrow their own descriptor fields. */
extern void func_801A89F0(s32, s32, s32, s32, s32, s32, s32, s32);
extern void func_80196378(s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);

void func_801BDB74(void) {
    s32 two = 2, one = 1;
    s32 i = 0;
    /* Only the signed high half is passed as a coordinate to the callbacks. */
    s32 fixed = 0;
    s32 pair = 0, valueOffset = 0, recordOffset = 288, flag = 12;
    do {
        if ((D_801D8A4C[flag] & 15) == 0) {
            s32 y;
            s32 upper, lower;
            if (D_801DA2F0) {
                if (D_801D9290[pair] == D_80108669)
                    D_801D8EE0[recordOffset] = (D_801DA332 >> 5) & 1;
                if (D_801D9291[pair] == D_80108669)
                    D_801D8FA0[recordOffset] = (D_801DA332 >> 5) & 1;
            }
            y = fixed >> 16;
            upper = y-49;
            func_801A89F0(-41, upper,16,D_801DA310[valueOffset],7,two,4,two);
            func_801A89F0(26, upper,16,D_801DA312[valueOffset],7,one,4,two);
            lower = y-41;
            func_801A89F0(-41, lower,16,D_801DA311[valueOffset],7,two,4,two);
            func_801A89F0(26, lower,16,D_801DA313[valueOffset],7,one,4,two);
            func_801A89F0(-26, upper,16,D_801D94D8[pair],8,3,one,two);
            func_801A89F0(10, upper,16,D_801D94D9[pair],8,3,one,two);
            func_80196378(0,-8,y-46,16,8,144,104,26,145,one);
        }
        {
            /* Empty input retains the measured high-word step scheduling. */
            s32 step = 0x130000;
            pair+=2;
            __asm__("" : : "r"(step));
            valueOffset+=4;
            recordOffset+=24;
            fixed+=step;
        }
        flag++;
        i++;
    } while (i<8);
}
