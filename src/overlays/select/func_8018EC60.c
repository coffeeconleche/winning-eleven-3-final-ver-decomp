#include "common.h"

typedef struct {
    u8 padding[11];
    u8 kind;
    u8 trailing[8];
    u8 *data;
} StateEntry;

extern StateEntry D_801D8F90[];
extern void func_80194790(u8 *);

void func_8018EC60(u8 index, u8 *data) {
    StateEntry *entry = &D_801D8F90[index];

    entry->data = data;
    if (entry->kind == 3) {
        func_80194790(data);
    }
}
