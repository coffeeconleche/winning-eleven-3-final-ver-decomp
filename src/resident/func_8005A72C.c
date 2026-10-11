#include "common.h"

/* Partial access layout; complete record ownership and field meanings are unknown. */
typedef struct {
    u8 unknown[0x3DA];
    u8 byte3DA;
    u8 unknown3DB;
    u16 half3DC;
    u16 half3DE;
    u8 byte3E0;
    u8 byte3E1;
} Resident5A72CView;

extern s32 func_8001E6B8(s32);

/* Preserve the helper's word result residue while narrowing only its byte store.
 * This void API view does not establish the historical return contract. */
void func_8005A72C(Resident5A72CView *record)
{
    record->half3DE = 0;
    record->half3DC = 0;
    record->byte3DA = func_8001E6B8(10);
    record->byte3E1 = 0;
    record->byte3E0 = 0;
}
