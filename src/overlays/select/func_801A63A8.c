#include "common.h"

extern u16 D_801D8080[];
extern u16 D_801D8082[];
extern u16 D_801D805C[];
extern u16 D_801D805E[];

/* Copy two halfword pairs from 144-byte records into 16-byte records. */
void func_801A63A8(void) {
    s32 i = 0;
    s32 source = 0;
    s32 destination = 0;
    for (; i < 2;) {
        u16 value = *(u16 *)((u8 *)D_801D8080 + source);
        i++;
        *(u16 *)((u8 *)D_801D805C + destination) = value;
        *(u16 *)((u8 *)D_801D805E + destination) =
            *(u16 *)((u8 *)D_801D8082 + source);
        source += 144;
        destination += 16;
    }
}
