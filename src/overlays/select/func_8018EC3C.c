#include "common.h"

typedef struct SelectionEntry {
    u8 value;
    u8 padding[23];
} SelectionEntry;

extern SelectionEntry D_801D8FA0[];

void func_8018EC3C(u8 index, s32 value) {
    D_801D8FA0[index].value = value;
}
