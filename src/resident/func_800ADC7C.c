#include "common.h"

void func_800ADC7C(u32 *word, u32 value)
{
    *word = (*word & 0xFF000000u) | (value & 0x00FFFFFFu);
}
