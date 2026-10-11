#include "common.h"

extern void func_800AA7EC(void);
extern void func_800A9B34(void);

/* Ordered calls; known caller ignores v0. Complete historical APIs are provisional. */
void func_800AA7C4(void)
{
    func_800AA7EC();
    func_800A9B34();
}
