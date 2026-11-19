#include "common.h"

extern s16 D_800D3094[];
extern s16 D_800D2894[];
extern s16 D_800D1894[];

#define TABLE_HALFWORD(table, index) (*(const s16 *)((u32)(table) + (u32)(index) * 2U))

s32 func_800B6718(s32 angle)
{
    /* Negate in unsigned arithmetic, including the minimum signed word. */
    if (angle < 0)
        angle = (s32)(0U - (u32)angle);
    angle &= 0xFFF;
    if (angle < 0x801) {
        if (angle < 0x401)
            return TABLE_HALFWORD(D_800D3094, 0x400U - (u32)angle);
        return -TABLE_HALFWORD(D_800D2894, angle);
    }
    if (angle < 0xC01)
        return -TABLE_HALFWORD(D_800D3094, 0xC00U - (u32)angle);
    return TABLE_HALFWORD(D_800D1894, angle);
}

#undef TABLE_HALFWORD
