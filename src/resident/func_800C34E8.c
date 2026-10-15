#include "common.h"

/* Observed 68-byte request view; not a recovered complete historical type. */
typedef struct {
    u32 mask;
    u16 values[32];
} RegisterWriteView;

/*
 * Original data initializes this pointer to SPU MMIO base 0x1F801C00.
 * Only the pointee is volatile; the pointer object has no volatile qualifier.
 */
extern volatile u16 *D_800D558C;

#define WRITE_REGISTER(index) \
    if (all || (mask & (1U << (index)))) { \
        D_800D558C[0xE0 + (index)] = request->values[index]; \
    }

/* gcc272-dos -quiet -O2 -G0; no matching aids or extra compiler flags. */
void func_800C34E8(const RegisterWriteView *request)
{
    u32 mask = request->mask;
    s32 all = mask == 0;

    WRITE_REGISTER(0);
    WRITE_REGISTER(1);
    WRITE_REGISTER(2);
    WRITE_REGISTER(3);
    WRITE_REGISTER(4);
    WRITE_REGISTER(5);
    WRITE_REGISTER(6);
    WRITE_REGISTER(7);
    WRITE_REGISTER(8);
    WRITE_REGISTER(9);
    WRITE_REGISTER(10);
    WRITE_REGISTER(11);
    WRITE_REGISTER(12);
    WRITE_REGISTER(13);
    WRITE_REGISTER(14);
    WRITE_REGISTER(15);
    WRITE_REGISTER(16);
    WRITE_REGISTER(17);
    WRITE_REGISTER(18);
    WRITE_REGISTER(19);
    WRITE_REGISTER(20);
    WRITE_REGISTER(21);
    WRITE_REGISTER(22);
    WRITE_REGISTER(23);
    WRITE_REGISTER(24);
    WRITE_REGISTER(25);
    WRITE_REGISTER(26);
    WRITE_REGISTER(27);
    WRITE_REGISTER(28);
    WRITE_REGISTER(29);
    WRITE_REGISTER(30);
    WRITE_REGISTER(31);
}

#undef WRITE_REGISTER
