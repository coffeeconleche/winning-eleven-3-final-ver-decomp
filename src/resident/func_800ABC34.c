#include "common.h"

/* A byte-aligned view of the existing template, not new storage. The original
 * copies exactly 38 bytes into a real local before the helper call. */
typedef struct {
    u8 bytes[38];
} Lookup38;

extern Lookup38 D_80014B44;
extern u8 D_800E6AF8[];
/* Existing runtime cells relative to retail GP 0x800E6A8C: 800E6AF8,
 * 800E6B76 and 800E6B6E. These access views allocate no storage. */
extern u8 queriedState __asm__("0x6C($gp)");
extern u16 selectedState __asm__("0xEA($gp)");
extern u16 comparisonState __asm__("0xE2($gp)");
extern u32 func_800B7034(u32, void *, u8 *);

/* The known direct caller ignores the output word. Historical SDK/API, native
 * bounds/alignment/aliasing and indirect-call contracts remain provisional. */
void func_800ABC34(void)
{
    Lookup38 local = D_80014B44;
    s32 index;
    u32 queriedByte;
    /* Matching-only zero capture: the empty OUTPUT initializes this C value
     * from immutable architectural $zero before any read. It emits nothing;
     * the value is the actual null helper argument and both unsigned OR bases.
     * This is not a historical-source or portable-native claim. */
    register u32 queryParameter __asm__("$0");

    __asm__("" : "=r"(queryParameter));
    func_800B7034(queryParameter | 17U, (void *)queryParameter, D_800E6AF8);
    /* Preserve the late signed low half and unguarded index. Read the helper's
     * result byte before the indexed local byte; no universal bounds are known. */
    index = (s16)(selectedState + 0xFE00U);
    queriedByte = queriedState;
    if (queriedByte != local.bytes[index]) {
        comparisonState = queryParameter | 1U;
    } else {
        comparisonState = 0;
    }
    /* The original leaves v0=1 on both paths, not the stored comparison flag. */
}
