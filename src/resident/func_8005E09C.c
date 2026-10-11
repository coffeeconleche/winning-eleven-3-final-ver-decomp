#include "common.h"

/* Partial record access layout, without claiming complete field meanings. */
typedef struct {
    u8 unknown[0x398];
    u8 byte398;
    u8 unknown399[0x3B];
    u16 half3D4;
} Resident5E09CView;

extern u16 D_800C8478[];
extern u16 scratch22[] __asm__("0x1F800022");

/* Select one of eight evidenced global halfwords. The low flag byte controls
 * both record-index and scratch reads. Table extents, selector domains and the
 * historical API are provisional; the scalar address view allocates no storage. */
u32 func_8005E09C(Resident5E09CView *record, u32 code, u32 flag)
{
    u32 value = *(u16 *)((u8 *)D_800C8478 + ((code >> 4) & 0xE));

    if ((u8)flag != 0) {
        value |= scratch22[record->byte398];
    }
    record->half3D4 = value;
    return value;
}
