#include "common.h"

/* Byte views of the two transfer records; original complete types and record
 * meanings are unknown. */
typedef struct {
    s32 size;
    u8 remaining[36];
} Record40;
typedef struct {
    u8 bytes[65];
} Blob65;

extern u32 D_800FB568, D_800FB56C, D_800FB570, D_800FB574;
extern u32 D_800FF698, D_800FF69C, D_800FF6A0, D_800FF6A8;
extern s32 D_801D8A78, D_801D7D48, D_801D8A94;
extern u8 *D_801D1AF8;
extern u8 D_801D1B1A;
extern u8 D_801D1B80[];
extern u16 D_801D1B88, D_801D1B8A;
extern u8 D_800FF748[];
extern Blob65 D_8018948C;
extern u8 D_801DA5D8[];
/* Call-site ABI views: the resident thunks identify BIOS operation numbers,
 * not complete original prototypes or the direction of the three-word call. */
extern s32 func_800ACE48(u32), func_800ACE78(void *, u32), func_800ACEB8(s32);
extern s32 func_800ACEC8(void *, Record40 *), func_800ACE88(s32, s32, s32);
extern void func_800ACEA8(s32, u8 *, u32), func_800AD618(u8 *, u8 *);
extern void func_800AD658(void *, s32), func_800AE840(void *, u8 *);
extern s32 func_800C5938(u32), func_800C5948(u32), func_800C5958(u32);

#define CLEAR(a,b,c,d) do { func_800ACE48(a); func_800ACE48(b); func_800ACE48(c); func_800ACE48(d); } while (0)
#define FB_CLEAR CLEAR(D_800FB568,D_800FB56C,D_800FB570,D_800FB574)
#define READ_STATUS(out,a,b,c,d) do { \
    if (func_800ACE48(a)) out=1; \
    else if (func_800ACE48(b)) out=-1; \
    else if (func_800ACE48(c)) out=-2; \
    else out=func_800ACE48(d) ? -3 : 0; \
} while (0)
#define READ_FB(out) READ_STATUS(out,D_800FB568,D_800FB56C,D_800FB570,D_800FB574)
#define READ_FF(out) READ_STATUS(out,D_800FF698,D_800FF69C,D_800FF6A0,D_800FF6A8)

s32 func_801930F4(s32 mode, u32 channel, s32 arg3, u8 *resource, s32 arg5, u32 size) {
    Record40 record;
    /* First local copies the first parameter: reproduces the original
     * parameter-copy order and keeps the flag tests off the incoming $4. */
    s32 modeCopy = mode;
    /* Real-value binding retained by cumulative removal (plain status gives
     * 14 extra differing words, mostly in both status switches and the tail). */
    register s32 status __asm__("$2");
    s32 result;
    u8 *base = D_800FF748;

    switch (D_801D8A78) {
    case 0:
        READ_FB(status);
        switch (status) {
        case 1:
            FB_CLEAR;
            while (!func_800C5948(channel << 4)) {}
            goto advance;
        case -3:
            {
                /* Read the first handle before the flag store. */
                s32 first = D_800FF698;
                base[0xAC1C] = 1;
                func_800ACE48(first);
                func_800ACE48(D_800FF69C);
                func_800ACE48(D_800FF6A0);
                func_800ACE48(D_800FF6A8);
            }
            while (!func_800C5958(channel << 4)) {}
            do {
                READ_FF(result);
            } while (result == 0);
            if (result != 1) return 1;
            FB_CLEAR;
            while (!func_800C5938(channel << 4)) {}
            D_801D8A78 = 0;
            return 0;
        case -2: return -2;
        case -1: return -1;
        case 0: return 0;
        }
        break;
    case 1:
        READ_FB(status);
        switch (status) {
        case 1: {
            s32 selector = ((u8)modeCopy != 0) ? 2 : 1;
            if (func_800ACEC8(resource, &record) == 0) {
                s32 handle = func_800ACE78(resource, (selector << 16) | 0x200);
                D_801D7D48 = handle;
                if (handle == -1) return -1;
                while (func_800ACEB8(D_801D7D48) == -1) {}
            }
            D_801D1B1A = 1;
            {
                s32 handle = func_800ACE78(resource, 0x8002);
                D_801D7D48 = handle;
                if (handle == -1) return -1;
            }
            D_801D1AF8[0] = 0x53;
            D_801D1AF8[1] = 0x43;
            D_801D1AF8[2] = 0x11;
            D_801D1AF8[3] = selector;
            func_800AD618(D_801D1AF8 + 4, D_801DA5D8);
            if ((u8)modeCopy != 0) {
                *(Blob65 *)(D_801D1AF8 + 4) = D_8018948C;
            }
            func_800AD658(D_801D1AF8 + 0x44, 0x1C);
            {
                /* Address taken once for the first store and the second call;
                 * the plain symbol form changes 18 differing words. */
                u16 *saved = &D_801D1B88;
                *saved = *(u16 *)(base + 0x8356);
                D_801D1B8A = *(u16 *)(base + 0x8354);
                func_800AE840(D_801D1B80, D_801D1AF8 + 0x80);
                func_800AE840((u8 *)saved, D_801D1AF8 + 0x60);
            }
            if ((u8)modeCopy != 0) {
                if ((modeCopy & 8) != 0) {
                    func_800ACEA8(D_801D7D48, D_801D1AF8, size);
                } else {
                    if (modeCopy & 1) {
                        D_801D8A94 = 0x100;
                    } else if (modeCopy & 2) {
                        D_801D8A94 = 0x680;
                    }
                    while (func_800ACE88(D_801D7D48, D_801D8A94, 0) == -1) {}
                    func_800ACEA8(D_801D7D48, D_801D1AF8 + 0x100, size);
                }
            } else {
                func_800ACEA8(D_801D7D48, D_801D1AF8, size + 0x100);
            }
        advance:
            /* Both state-1 completions share one increment and the $2
             * binding, reproducing the original merged tail allocation.
             * Removing the label or the reuse changes four tail words. */
            status = D_801D8A78 + 1;
            D_801D8A78 = status;
            return 0;
        }
        case -2:
        case -1:
            FB_CLEAR;
            while (!func_800C5938(channel << 4)) {}
            D_801D8A78 = 0;
            break;
        case -3: return -3;
        case 0: return 0;
        }
        break;
    case 2:
        READ_FB(result);
        if (result == 0) return 0;
        if (result > 0) {
            if (result == 1) {
                while (func_800ACEB8(D_801D7D48) == -1) {}
                return 1;
            }
        }
        func_800ACEB8(D_801D7D48);
        FB_CLEAR;
        while (!func_800C5938(channel << 4)) {}
        D_801D8A78 = 0;
        break;
    }
    return 0;
}
