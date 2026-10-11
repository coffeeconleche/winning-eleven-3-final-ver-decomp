#include "common.h"

extern s32 func_8001E694(u32, s32);
extern s32 func_8001E5A4(u32, s32);

/* Aligned partial access and void views, not complete record/API recovery.
 * Some callers propagate v0 residue through their epilogues; it is retained
 * by the measured build without asserting a historical return contract. */
void func_8005B908(u8 *record)
{
    s32 difference;

    *(s32 *)(record + 8) = func_8001E694(record[0x3A4], *(s32 *)(record + 0x3A0));
    /* Reload both inputs after the first callback. */
    *(s32 *)(record + 0x10) = func_8001E5A4(record[0x3A4], *(s32 *)(record + 0x3A0));
    difference = 0x1C0 - record[0x3AA];
    *(u16 *)(record + 0x26) = (u16)((difference % 256) * 16);
    *(u16 *)(record + 2) = (u16)((u32)*(u16 *)(record + 2) + (u32)*(s32 *)(record + 8));
    *(u16 *)(record + 6) = (u16)((u32)*(u16 *)(record + 6) + (u32)*(s32 *)(record + 0x10));
}
