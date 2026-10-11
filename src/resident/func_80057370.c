#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010A392;
extern s32 func_8001E6B8(s32 bound);
/* Only the overwritten call argument is described; complete API unknown. */
extern void func_800AB620(s32 id);

/* Partial backing-store byte view; extent, ownership and meanings unknown.
 * Read the flag only after a zero helper result. Read/increment the counter
 * after both optional callbacks, allowing their memory side effects.
 * The known caller ignores v0; the void view retains its word residue of the
 * captured byte plus one (1..256), while the stored byte wraps modulo 256. */
void func_80057370(void)
{
    u8 *base = D_800FF748;

    if (func_8001E6B8(8) == 0 && D_8010A392 == 0) {
        func_800AB620(0x10);
        func_800AB620(0xD71);
    }
    base[0xAC6D]++;
}
