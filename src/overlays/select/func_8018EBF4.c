#include "common.h"

typedef struct SelectionEntry {
    s16 value;
    u8 padding[26];
} SelectionEntry;

extern SelectionEntry D_801D92A8[];

s32 func_8018EBF4(u8 index, s32 value) {
    D_801D92A8[index].value = value;
    return 1;
}
