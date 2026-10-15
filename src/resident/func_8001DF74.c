#include "common.h"

/* Eight-byte rectangle access view; the enclosing graphics state is not
 * reconstructed here. No storage or padding is introduced. */
typedef struct { s16 x, y, w, h; } ResidentDF74Rect;
extern u8 D_800FF748[];
extern s32 func_800AE6B8(void *, u32, u32, u32);
extern s32 func_800AE534(u32);
extern void func_800B42C8(u32, u32, u32, u32, u32);
extern void func_800B5F28(s32, s32, s32, s32);
extern void func_800B4958(s32, s32);

void func_8001DF74(s32 width, s32 height)
{
    ResidentDF74Rect rect;
    u8 *base = D_800FF748;

    height = (u16)height;
    /* These initialized bindings are the four actual ClearImage inputs.
     * The empty capture preserves their measured preparation order
     * before width narrowing; it emits no instruction or memory clobber. */
    if (height != 480) {
        register void *clearRect __asm__("$4") = &rect;
        register u32 red __asm__("$5") = 0;
        register u32 green __asm__("$6") = 0;
        register u32 blue __asm__("$7") = 0;
        __asm__("" : : "r"(clearRect), "r"(red), "r"(green), "r"(blue));
        width = (u16)width;
        rect.w = (u32)width >> 2;
        rect.x = 0;
        rect.y = 0;
        rect.h = 480;
        func_800AE6B8(clearRect, red, green, blue);
        func_800AE534(0);
        func_800B42C8(width, height, 4, 0, 0);
        func_800B5F28(0, 0, 0, 240);
        *(s32 *)0x1F800198 = 0;
    } else {
        register void *clearRect __asm__("$4") = &rect;
        register u32 red __asm__("$5") = 0;
        register u32 green __asm__("$6") = 0;
        register u32 blue __asm__("$7") = 0;
        __asm__("" : : "r"(clearRect), "r"(red), "r"(green), "r"(blue));
        width = (u16)width;
        rect.w = (u32)width >> 2;
        rect.x = 0;
        rect.y = 0;
        rect.h = 480;
        func_800AE6B8(clearRect, red, green, blue);
        func_800AE534(0);
        func_800B42C8(width, 480, 5, 0, 0);
        func_800B5F28(0, 0, 0, 0);
        *(s32 *)0x1F800198 = 2;
    }
    /* Loaded signed halfwords may be negative; multiplication by two is
     * safe for their full domain, unlike a signed left-shift expression. */
    if (*(s32 *)0x1F800198 == 2) {
        func_800B4958(*(s16 *)(base + 0xAC18), *(s16 *)(base + 0xAC1A) * 2);
    } else {
        func_800B4958(*(s16 *)(base + 0xAC18), *(s16 *)(base + 0xAC1A));
    }
}
