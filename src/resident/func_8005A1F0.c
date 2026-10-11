#include "common.h"

/* The dispatcher directly consumes only $a0. Its complete API is unknown. */
extern void func_800AB620(u32);

/* Callers ignore the result; this view does not establish a return contract. */
void func_8005A1F0(u32 arg0, u32 arg1)
{
    func_800AB620((u16)arg1 + (u8)arg0);
}
