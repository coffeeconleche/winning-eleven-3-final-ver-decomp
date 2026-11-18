#include "common.h"

#define KEEP(v) __asm__("" : "=r"(v) : "0"(v))

typedef struct {
    s16 x, y, width, height;
} Rect;

typedef struct {
    u8 level;
    u8 reserved;
    s16 maxX, maxY;
} RectCheck;

extern RectCheck D_800CEAC6;
extern s32 (*D_800CEAC0)(const char *, ...);
extern char D_80014F18[], D_80014F24[], D_80014F38[];

void func_800AE59C(const char *name, const Rect *rect)
{
    register const char *label __asm__("$8") = name;
    register RectCheck *settings __asm__("$4");
    const char *format;
    const Rect *box = rect;
    register s32 width __asm__("$5");
    register s32 x __asm__("$7");
    register s32 y __asm__("$3");
    register s32 height __asm__("$6");
    register s32 xLimit __asm__("$3");
    register s32 yLimit __asm__("$4");

    /* Capture the name before reusing a0 for the settings address. */
    __asm__("" : "=r"(label) : "0"(label) : "$4", "$16");
    settings = &D_800CEAC6;
    switch (settings->level) {
    case 1:
        width = box->width;
        xLimit = settings->maxX;
        if (width > xLimit)
            goto bad;
        x = box->x;
        {
            register s32 outside __asm__("$2") = width + x > xLimit;
            KEEP(outside);
            if (outside)
                goto bad;
        }
        y = box->y;
        yLimit = settings->maxY;
        if (y > yLimit)
            goto bad;
        height = box->height;
        {
            register s32 outside __asm__("$2") = y + height > yLimit;
            KEEP(outside);
            if (outside)
                goto bad;
        }
        if (width <= 0 || x < 0 || y < 0 || height <= 0) {
        bad:
#if defined(_PSYQ) && defined(__mips__) && defined(__GNUC__) && (__GNUC__ == 2)
            /* D_80014F18 lies at this offset in the fixed resident image.
             * Splitting its address lets the low add fill the jump slot. */
            {
                register u32 warningPage __asm__("$4") = 0x80010000U;
                KEEP(warningPage);
                format = (const char *)(warningPage + 0x4F18U);
            }
#else
            format = D_80014F18;
#endif
            break;
        }
        return;
    case 2:
        format = D_80014F38;
        break;
    default:
        return;
    }

    D_800CEAC0(format, label);
    /* The first callback can update both the rectangle and the logger slot. */
    {
        register s32 argX __asm__("$5") = box->x;
        register s32 argY __asm__("$6") = box->y;
        register s32 argW __asm__("$7") = box->width;
        register s32 argH __asm__("$3") = box->height;
        register s32 (*logger)(const char *, ...) __asm__("$2") = D_800CEAC0;
        __asm__("" : : "r"(argX), "r"(argY), "r"(argW), "r"(argH), "r"(logger));
        logger(D_80014F24, argX, argY, argW, argH);
    }
}
