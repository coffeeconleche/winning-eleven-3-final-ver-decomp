#include "common.h"

/* Partial byte/halfword PS1 layouts; scratch holds original 32-bit pointers.
 * Shared helper declarations use existing production word APIs. B36C also
 * has older narrow private views: reconcile historical APIs before native use.
 * Reread scratch2F4 after C7A0; callbacks may change it or pointed state.
 * Native ports must map scratch and preserve writable aligned object extent. */

extern void func_8005BA30(u8 *, u32, u32);
extern u32 func_8005BD1C(u8 *);
extern u32 func_8005B36C(s32, s32, s32, s32);
extern u32 func_8005B7CC(u32, u32, u32);
extern void func_8005B908(u8 *);
extern s32 func_8005C7A0(u32);
extern s32 func_8009462C(u8 *, s32, u32, s32, s32);
extern void func_800954E8(u8 *);
extern u32 func_8008ABA8(u8 *, s32);

void func_8008A8A4(u8 *object)
{
    s32 i;
    s32 random;
    u8 *scratch;
    u8 *other;
    u32 heading;

    scratch = (u8 *)0x1F800000;
    if (object[0x397] == 0) {
        func_8005BA30(object, 0x5E, 0);
        *(u32 *)(object + 0x3A0) = 0;
        object[0x397]++;
    } else {
        func_8005BD1C(object);
        if (object[0x390] == 6) {
            func_8005BA30(object, 0x5A, 0);
            object[0x396] = 0x82;
            object[0x397] = 0;
        }
    }
    other = *(u8 **)(scratch + 0x2F4);
    i = 6;
    heading = func_8005B36C(
        *(s16 *)(object + 2), *(s16 *)(object + 6),
        *(s16 *)(other + 2), *(s16 *)(other + 6));
    object[0x3AA] = func_8005B7CC(heading & 0xFF, object[0x3AA], 8);
    func_8005B908(object);
    random = (s16)func_8005C7A0(3);
    func_8009462C(object, 0xC, ((*(u8 **)(scratch + 0x2F4))[0x3A4] + 0x80) & 0xFF,
        0, random + 2);
    func_800954E8(object);
    do {
        if (func_8008ABA8(object, i) & 0xFF) {
            break;
        }
        i--;
    } while (i >= 0);
}
