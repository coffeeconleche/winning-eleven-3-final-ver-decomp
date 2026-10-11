#include "common.h"

/* Partial access view only; full record ownership and field meanings unknown. */
typedef struct {
    u8 unknown[2];
    s16 half2;
    u8 unknown4[2];
    s16 half6;
    u8 unknown8[0x38A];
    u8 byte392;
    u8 unknown393[5];
    u8 byte398;
    u8 unknown399[0x1B];
    u8 byte3B4;
} Resident4840CView;

extern u8 D_8010C330[];
extern s16 scratch0F2 __asm__("0x1F8000F2");
extern u32 func_800484F8(s32, s32, u32, u32);

/* The 12/264-byte table strides and numeric scratch half are no-storage access
 * views. Preserve signed truncating division, the low-half store before the
 * callback and signed record-half arguments. Helper/return APIs are provisional;
 * the void view retains the callback's observed result-register residue. */
void func_8004840C(Resident4840CView *record)
{
    u32 word = *(u32 *)(D_8010C330 + record->byte392 * 12 + record->byte398 * 264);
    s32 derived;
    u32 value;

    word >>= 11;
    word &= 127;
    word += 100;
    derived = -((s32)word * 352) / 180;
    value = record->byte3B4;
    scratch0F2 = derived;
    /* Empty scheduling boundary: no instruction or invented value. Without
     * the memory clobber GCC 2.7 hoists the signed record reads before the
     * original scratch store. Pointer inputs/outputs are unnecessary. */
    __asm__("" : : : "memory");
    func_800484F8(record->half2, record->half6, value, 0);
}
