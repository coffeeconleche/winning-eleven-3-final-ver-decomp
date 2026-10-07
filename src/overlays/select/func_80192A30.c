#include "common.h"

extern u8 D_800FF748[];
extern s32 D_800FB568, D_800FB56C, D_800FB570, D_800FB574;
extern s32 D_800FF698, D_800FF69C, D_800FF6A0, D_800FF6A8;
extern s32 D_801D8A78, D_801D7D48;
extern u16 D_801D7D56;
extern u8 *D_801D1AF8;
/* Call-site ABI views: the resident thunks identify BIOS operation numbers,
 * not complete original prototypes or the direction of the three-word call. */
extern s32 func_800ACE48(s32), func_800ACE78(u32, s32), func_800ACEB8(s32);
extern s32 func_800C5938(u32), func_800C5958(u32);
extern void func_800ACE98(s32, u8 *, u32), func_800AD648(void *, void *, u32);

#define CLEAR(a,b,c,d) do { func_800ACE48(a); func_800ACE48(b); func_800ACE48(c); func_800ACE48(d); } while (0)
#define FB_CLEAR CLEAR(D_800FB568,D_800FB56C,D_800FB570,D_800FB574)
#define FF_CLEAR CLEAR(D_800FF698,D_800FF69C,D_800FF6A0,D_800FF6A8)

#define READ_STATUS(out,a,b,c,d) do { \
    if (func_800ACE48(a)) out=1; \
    else if (func_800ACE48(b)) out=-1; \
    else if (func_800ACE48(c)) out=-2; \
    else out=func_800ACE48(d) ? -3 : 0; \
} while (0)
#define READ_FB(out) READ_STATUS(out,D_800FB568,D_800FB56C,D_800FB570,D_800FB574)
#define READ_FF(out) READ_STATUS(out,D_800FF698,D_800FF69C,D_800FF6A0,D_800FF6A8)

s32 func_80192A30(s32 mode, u32 channel, u32 resource, void *data, u32 size, u8 verify) {
    /* Matching-only reservation hypothesis, not a recovered original type.
     * No local byte is accessed in retail. Removing this plain reservation
     * changes only 20 stack adjustment, save/restore and incoming stacked-
     * argument displacement words (88-byte frame becomes 48). Its original
     * storage purpose remains unknown. */
    u8 unknownFrameStorage[40];
    /* Six real-value bindings remain after cumulative and joint removal:
     * status, the two checked results, base, polled and pending. No clobbers
     * or emitted instructions are used to impose their allocation. */
    register s32 status __asm__("$2");
    s32 offset;
    u32 sum;
    register s32 checked __asm__("$2");
    u32 expected;
    u8 *buffer;
    void *dataCopy = data;
    s32 modeCopy = mode;
    register u8 *base __asm__("$20") = D_800FF748;
    u8 verifyCopy = verify;
    switch (D_801D8A78) {
    case 0:
        READ_FB(status);
        switch (status) {
        case 1:
            FB_CLEAR;
            while (!func_800C5938(channel << 4)) {}
            D_801D8A78 = 1;
            break;
        case -3:
            {
                s32 first = D_800FF698;
                base[0xAC1C] = 1;
                func_800ACE48(first);
                func_800ACE48(D_800FF69C);
                func_800ACE48(D_800FF6A0);
                func_800ACE48(D_800FF6A8);
            }
            while (!func_800C5958(channel << 4)) {}
            do { READ_FF(status); } while (status == 0);
            {
                register s32 polled __asm__("$4") = status;
                /* Transparent identity of the actual completed status keeps
                 * its capture distinct from the polling result. */
                __asm__("" : "=r"(polled) : "0"(polled));
                if (polled != 1) return polled;
            }
            {
                s32 first = D_800FB568;
                base[0xAC1C] = 1;
                func_800ACE48(first);
                func_800ACE48(D_800FB56C);
                func_800ACE48(D_800FB570);
                func_800ACE48(D_800FB574);
            }
            while (!func_800C5938(channel << 4)) {}
            D_801D8A78 = 0;
            D_801D7D56 = 0;
            base[0x8F1E] = 0;
            break;
        case -2: return -2;
        case -1: goto fail1;
        case 0: return 0;
        }
        break;
    case 1:
        READ_FB(status);
        switch (status) {
        case 1:
            {
                s32 opened = func_800ACE78(resource, 0x8001);
                D_801D7D48 = opened;
                if (opened == -1) return -1;
                D_801D8A78 = 2;
                func_800ACE98(opened, D_801D1AF8, size + 0x100);
            }
            break;
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
    case 2: {
        s32 status;
        READ_FB(status);
        switch (status) {
        case 1:
            {
                register s32 pending __asm__("$16") = -1;
                while (func_800ACEB8(D_801D7D48) == pending) {}
            }
            {
                if ((u8)modeCopy == 1) {
                    u8 *next;
                    offset = 0;
                    sum = 0;
                    buffer = D_801D1AF8;
                    for (; offset < 0x51F; offset++) sum += *(u8 *)((u32)buffer + offset + 0x100);
                    /* Preserve the post-loop global pointer reread. Byte
                     * accesses can alias it; buffer extent is not recovered. */
                    next = D_801D1AF8;
                    if ((u8)sum != next[0x61F]) return -4;
                    sum = 0;
                    offset = 0x580;
                    buffer = next;
                    for (; offset < 0x21B0; offset++) sum += *(u8 *)((u32)buffer + offset + 0x100);
                    buffer = D_801D1AF8;
                    expected = buffer[0x22B0];
                    checked = 1;
                    goto check4;
                } else if ((u8)modeCopy == 0) {
                    u32 innerSum;
                    if (!verifyCopy) {
                        func_800AD648(D_801D1AF8 + 0x100, dataCopy, size);
                        return 1;
                    }
                    offset = 0;
                    innerSum = 0;
                    buffer = D_801D1AF8;
                    for (; offset < 0x1C90; offset++) innerSum += *(u8 *)((u32)buffer + offset + 0x100);
                    /* The two paths share a comparison, not initialization:
                     * this separate sum preserves the original verify branch. */
                    sum = innerSum;
                    buffer = D_801D1AF8;
                    checked = 1;
                    {
                        u8 *end = (u8 *)((u32)buffer + offset);
                        expected = end[0x100];
                    }
                    check4:
                    {
                        if ((u8)sum != expected) checked = -4;
                        return checked;
                    }
                } else {
                    offset = 0;
                    sum = 0;
                    buffer = D_801D1AF8;
                    for (; offset < 0x1E80;) {
                        u32 byte = *(u8 *)((u32)buffer + offset + 0x180);
                        offset++;
                        sum += byte;
                    }
                    buffer = D_801D1AF8;
                    expected = buffer[0x100];
                    {
                        register s32 checked __asm__("$2") = 1;
                        if ((u8)sum == expected) return checked;
                    }
                    goto fail1;
                    /* Also reached by the first-state -1 table slot. */
                    fail1:
                    return -1;
                }
            }
        case 0: return 0;
        case -3:
        case -2:
        case -1:
            func_800ACEB8(D_801D7D48);
            FB_CLEAR;
            while (!func_800C5938(channel << 4)) {}
            D_801D8A78 = 0;
        }
    }
    }
    return 0;
}
