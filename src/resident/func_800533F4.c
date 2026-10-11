#include "common.h"

/* Partial access layout only; complete ownership and field meanings are unknown. */
typedef struct {
    u8 unknown[2];
    s16 half2;
    u8 unknown4[2];
    s16 half6;
    u8 unknown8[0x391];
    u8 byte399;
} Resident533F4View;

/* Unsized numeric address view allocates no storage and asserts no table extent. */
extern u8 scratch322[] __asm__("0x1F800322");
extern void func_80067860(u32, s32, s32, u32, u32, u32);

/* Narrow only the second and third incoming words. Reread byte399 after the
 * callback before the scratch lookup; helper API and selector domains remain
 * provisional, including the final full-word stack argument. */
s32 func_800533F4(Resident533F4View *record, u32 second, u32 third, u32 fourth)
{
    func_80067860(record->byte399 ^ 1, record->half2, record->half6,
                 (u8)second, (u8)third, fourth);
    return scratch322[(record->byte399 ^ 1) * 2] != 255;
}
