#include "common.h"

extern s32 func_8001E6B8(s32 bound);
/* Only the overwritten incoming word is described; the full API is unknown. */
extern void func_800AB620(s32 id);

/* Capture and narrow the first helper result before the four ordered calls.
 * The known caller ignores v0; this provisional void view leaves the final
 * callback's residue intact, and does not invent values for a1-a3. */
void func_8005891C(void)
{
    s32 base = (u8)func_8001E6B8(7) * 4;

    func_800AB620(base + 0xF6E);
    func_800AB620(base + 0xF6F);
    func_800AB620(base + 0xF70);
    func_800AB620(base + 0xF71);
}
