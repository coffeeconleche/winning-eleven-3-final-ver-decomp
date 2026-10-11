#include "common.h"

/* Partial outgoing argument view, not a recovered historical type.
 * PS1 layout: word at 0, halfwords at 4/6/8/A, bytes at C/D/E; size 16.
 * Padding byte F is deliberately not initialized or supplied as a field.
 * The inspected callee consumes those mixed-width fields, not the padding. */
typedef struct {
    u32 word;
    s16 value0, value1, value2, value3;
    u8 byte0, byte1, byte2;
} ArgumentView;

/* Existing backing-store stride view; extents and ownership remain unknown. */
extern u8 D_800F1018[][20];
extern u8 D_8010A31E;
extern void func_800B3728(ArgumentView *argument, u8 *entry, u32 value);

/* API remains provisional. The known caller ignores v0; the void wrapper
 * preserves the helper residue. No aggregate initialization or widened stores
 * are used: the three byte writes occur in E/D/C order before the callback. */
void func_8006F360(void)
{
    ArgumentView argument;

    argument.word = 0x60000000;
    argument.value0 = -0xC0;
    argument.value1 = -0xF0;
    argument.value2 = 0x1A0;
    argument.value3 = 0x1E0;
    argument.byte0 = argument.byte1 = argument.byte2 = D_8010A31E;
    func_800B3728(&argument, D_800F1018[*(u8 *)0x1F80029D], 0);
}
