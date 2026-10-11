#include "common.h"

/* Partial record access view; complete layout and field meanings are unknown. */
typedef struct {
    u16 unknown0;
    s16 value2;
    u16 unknown4;
    s16 value6;
    u8 unknown8[0x38D - 8];
    u8 key38D;
} Resident49778View;

extern u8 D_800FF748[];
extern u32 func_8005CE30(u32);

/* Word result preserves low-word products/addition, not a recovered semantic
 * contract. Signed halfword differences fit s32; products use defined u32
 * modulo arithmetic even for the largest possible halfword differences. */
u32 func_80049778(Resident49778View *record)
{
    u8 index = func_8005CE30(record->key38D);
    /* Matching aid for the real base address, materialized in $a1 while the
     * division high-result is pending. Removing it delays the base capture. */
    register u8 *base __asm__("$5") = D_800FF748;
    Resident49778View *other;

    index %= 24u;
    other = (Resident49778View *)(base + index * 1000);
    {
        u32 difference2 = (s32)record->value2 - other->value2;
        u32 product2 = difference2 * difference2;
        u32 difference6 = (s32)record->value6 - other->value6;

        return product2 + difference6 * difference6;
    }
}
