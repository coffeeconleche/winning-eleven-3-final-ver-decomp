#include "common.h"

/* Measured eight-byte rectangle and 32-byte aggregate-copy views only;
 * these do not reconstruct the surrounding graphics/camera state. */
typedef struct { s16 x, y, w, h; } ResidentDDD0Rect;
typedef struct { u32 words[8]; } ResidentDDD0Copy32;

extern u32 D_800FB580, D_800FB594;
extern u8 *D_800FB584, *D_800FB598;
extern u8 D_800F3568[], D_800FF688[], D_800FF6B0[];
extern u32 D_800F1018, D_800F102C;
extern u8 *D_800F101C, *D_800F1030;
extern s32 func_800AE6B8(void *, u32, u32, u32);
extern s32 func_800AE534(u32);
extern void func_8001E138(u32, u32, u32);
extern void func_800B4138(u32, u32, u32, u32, u32);
extern void func_800B5248(s32, s32, s32, s32);
extern void func_800B52E8(void);
extern void func_800B4958(s32, s32);
extern void func_800B53D8(u32);
extern s32 func_800B5FA8(void *);

void func_8001DDD0(void)
{
    ResidentDDD0Rect rect;
    u32 depth;

    rect.w = 1024;
    rect.x = 0;
    rect.y = 0;
    rect.h = 480;
    func_800AE6B8(&rect, 0, 0, 0);
    func_800AE534(0);
    func_8001E138(0, 0, 0);
    func_800B4138(384, 240, 4, 0, 0);
    func_800B5248(0, 0, 0, 240);
    func_800B52E8();
    func_800B4958(192, 120);
    {
        /* Real stored value; measured binding preserves the original stores
         * before the scratch-depth load without a memory clobber. */
        register u32 enabled __asm__("$3") = 1;
        D_800FB580 = enabled;
        D_800FB594 = enabled;
    }
    depth = *(u32 *)0x1F800000;
    D_800F101C = D_800F3568;
    D_800F1030 = D_800F3568 + 0x4000;
    D_800FB584 = D_800FF688;
    D_800FB598 = D_800FF688 + 8;
    *(s32 *)0x1F8001F8 = -128;
    *(u32 *)0x1F800204 = 0;
    *(u32 *)0x1F800200 = 0;
    *(u32 *)0x1F8001FC = 0;
    *(u32 *)0x1F8001F0 = 0;
    *(u32 *)0x1F8001F4 = 0;
    *(u32 *)0x1F80032C = 1024;
    D_800F1018 = depth;
    D_800F102C = depth;
    func_800B53D8(1024);
    /* The helper returns status 0/1; this initializer discards it. */
    func_800B5FA8((void *)0x1F8001F0);
    *(ResidentDDD0Copy32 *)0x1F8001C8 = *(ResidentDDD0Copy32 *)D_800FF6B0;
}
