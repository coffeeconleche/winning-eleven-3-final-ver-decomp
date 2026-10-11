#include "common.h"

/* Only the two accessed bytes are evidenced; this is a partial access layout. */
typedef struct {
    u8 unknown[0x3E2];
    u8 byte3E2;
    u8 byte3E3;
} Resident9D35CView;

extern u8 scratch29A __asm__("0x1F80029A");

/* The scratch mode, fields and original API remain provisional. This void view
 * preserves observed $v0 = 9 residue without recovering a return contract. */
void func_8009D35C(Resident9D35CView *record)
{
    if (scratch29A != 9) {
        record->byte3E2 = 0;
        record->byte3E3 = 0;
    }
}
