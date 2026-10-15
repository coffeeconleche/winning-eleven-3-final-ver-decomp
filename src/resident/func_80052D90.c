#include "common.h"

/* Storage-free shared partial view, identical to the existing 3EF94 API. */
typedef struct {
    u8 unknown000[0x38D];
    u8 byte38D;
    u8 unknown38E[0xB];
    u8 byte399;
    u8 unknown39A;
    u8 byte39B;
    u8 unknown39C[4];
    u32 word3A0;
    u8 unknown3A4[0x24];
    s16 half3C8;
} Resident3EF94View;

/* Classify the complete unsigned state-byte domain; no table or storage. */
u8 func_80052D90(Resident3EF94View *record)
{
    switch (((u8 *)record)[0x396]) {
    case 0xC ... 0xD:
    case 0x10 ... 0x12:
    case 0x14:
    case 0x1A:
    case 0x1E ... 0x2A:
    case 0x35:
    case 0x83 ... 0x91:
    case 0x99 ... 0x9B:
    case 0x9F ... 0xA1:
    case 0xFF:
        return 1;
    default:
        return 0;
    }
}
