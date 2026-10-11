#include "common.h"

/* Existing tag-word accesses; complete packet layout and API are provisional. */
void func_800ADC40(u32 *tag, u32 next, u32 *tail)
{
    /* Retains the observed mask allocation; this is an initialized real value. */
    register u32 low_mask __asm__("$7") = 0x00FFFFFF;
    u32 high_mask = 0xFF000000;

    *tail = (*tail & high_mask) | (*tag & low_mask);
    /* Reread after the potentially aliasing tail store. */
    *tag = (*tag & high_mask) | (next & low_mask);
}
