#include "common.h"

extern u8 D_800FF748[];
/* Consumed MIPS views only; complete historical helper APIs are unknown. */
extern u8 *func_8001D004(u32 key);
extern void func_80020E30(void);

/* Existing mutable storage is viewed as bytes, not a complete record layout.
 * The final helper's result-register residue survives this void-view return;
 * the four known callers ignore it, not proof of a historical void API.
 * The 32-byte saved-register/RA frame is natural, without matching aids. */
void func_80020C14(void)
{
    u8 *base = D_800FF748;
    u8 *scratch = (u8 *)0x1F800000;
    u8 *output;
    u8 *source;
    s32 index;

    output = func_8001D004(2);
    if (*(u8 *)0x1F8002E2 == 3) {
        output[0xF] = 0xE8;
    } else {
        output[0xF] = 0xD0;
    }
    source = base + 1000;
    for (index = 0; index < 22; index++, source += 1000) {
        /* Keep signed division/remainder and the full XOR result. The byte
         * selector is not assumed binary; backing extents remain unknown. */
        s32 selector = scratch[0x2E0] ^ (index / 11);

        /* Empty records do not read mode; only mode 5 reads offset 0x39A. */
        if (source[0] == 0 ||
            ((u8)scratch[0x2E1] == 5 && source[0x39A] != 0)) {
            output[0x2E + 12 * (selector * 11 + index % 11)] = 0x5B;
        } else {
            output[0x2E + 12 * (selector * 11 + index % 11)] = 3;
        }
    }
    if (scratch[0x2E6] < 5) {
        output[0x136] = 3;
        output[0x142] = 0x5B;
    } else {
        output[0x136] = 0x5B;
        output[0x142] = 3;
    }
    /* Reload mode after the ordered trailing byte stores. */
    if ((u8)scratch[0x2E1] == 5) {
        output[0x16] = 0x5B;
    } else {
        output[0x16] = 3;
    }
    func_80020E30();
}
