#include "types.h"

extern void func_8009BA54(s32,s32,s32,s32,u8 *,s32);
extern void func_8009BF7C(s32,s32,s32,s32,u8 *,s32);
extern void func_8009B4F8(u8 *,u8 *,u8 *,s32,u8 *,u8 *);
extern u32 func_800ADB14(s32,u32);
extern s16 D_800E6F04;
typedef struct { u16 x,y,z; } TableCoord;
extern TableCoord D_800CB434[][14],D_800CB438[][14];
extern u8 sceneMode __asm__("0x1F8002E3");
extern u8 phase1 __asm__("D_800CAA78+1");
extern u8 phase2 __asm__("D_800CAA78+2");
extern u8 D_800CAA7B;
extern u8 D_800CAA78;
extern u8 D_800CAA7C;
extern u8 phase5 __asm__("D_800CAA7C+1");
extern u8 phase6 __asm__("D_800CAA7C+2");
typedef struct { s16 x; u8 rest[14]; } Coord16;
typedef struct { u8 flag; u8 rest[15]; } Flag16;
typedef struct { u8 head[14]; u16 color; u8 rest[24]; } Packet40;
extern Coord16 D_800E6E24[];
extern Flag16 D_800E6E2C[];
extern u8 D_800CB62C[],D_800CB62E[],D_800CB630[],D_800E6E20[],D_800E6E28[];
/* Native mapped PS1 views: table rows are 84 bytes, coordinates/flags are
 * 16-byte-stride aliases, and packets are 40-byte records in 376-record banks.
 * These declarations allocate no storage and are not a complete portable API.
 * Helpers may change scratch/pool state; keep the original reload chronology.
 * The only mapped caller supplies no arguments and ignores the return value.
 * Empty tied-value expressions are compiler-matching aids, never instructions,
 * memory clobbers, fabricated input words or new application state. */
void func_8009C6E8(void) {
    u8 *forwardPhase1;
    u8 *reversePhase1;
    u8 *scratch = (u8 *)0x1F800000;
    s32 firstX;
    s32 secondX;
    s32 modeOffset0;
    s32 modeOffset9;
    s32 modeOffset10;
    s32 modeOffset11;
    s32 renderOffset;
    s32 modeOffset1;
    s32 modeOffset2;
    s32 modeOffset3;
    s32 modeOffset4;
    s32 modeOffset5;
    s32 modeOffset6;
    s32 modeOffset7;
    s32 modeOffset8;
    s32 packetIndex;
    Packet40 *packetRow;
    s32 xOffset;
    s32 xSign;
    s32 renderIndex;
    s32 counter;
    s32 zSign;
    s32 zTableIndex;
    s32 zPolarity;
    u32 xIndex;
    u32 zIndex;
    u8 nextPhase2;
    u8 nextPhase0;
    u8 nextPhase1;
    Packet40 *packet;

    if (*(s32 *)0x1F8001FC < *(s32 *)0x1F8001F0) {
        modeOffset0 = sceneMode * 6;
        func_8009BA54(*(s16 *)(D_800CB62C + modeOffset0), *(s16 *)(D_800CB62E + modeOffset0), 0, 0, &D_800CAA78, 0);
        modeOffset1 = sceneMode * 6;
        func_8009BF7C(*(s16 *)(D_800CB62C + modeOffset1), *(s16 *)(D_800CB62E + modeOffset1), 0, 0, &D_800CAA78, 0);
        forwardPhase1 = &phase1;
        modeOffset2 = sceneMode * 6;
        func_8009BA54(*(s16 *)(D_800CB62C + modeOffset2), *(s16 *)(D_800CB62E + modeOffset2), *(s16 *)(D_800CB630 + modeOffset2), 0, forwardPhase1, 5);
        modeOffset3 = sceneMode * 6;
        func_8009BF7C(*(s16 *)(D_800CB62C + modeOffset3), *(s16 *)(D_800CB62E + modeOffset3), *(s16 *)(D_800CB630 + modeOffset3), 0, forwardPhase1, 8);
        modeOffset4 = sceneMode * 6;
        func_8009BA54(*(s16 *)(D_800CB62C + modeOffset4), *(s16 *)(D_800CB62E + modeOffset4), (s16) ((s32) *(u16 *)(D_800CB630 + modeOffset4) * -1), 0, &phase2, 0xA);
        modeOffset5 = sceneMode * 6;
        func_8009BF7C(*(s16 *)(D_800CB62C+modeOffset5), *(s16 *)(D_800CB62E+modeOffset5), (s16)-*(u16 *)(D_800CB630+modeOffset5), 0, &phase2, 16);
    } else {
        modeOffset6 = sceneMode * 6;
        func_8009BA54((s16) ((s32) *(u16 *)(D_800CB62C + modeOffset6) * -1), *(s16 *)(D_800CB62E + modeOffset6), 0, 1, &D_800CAA78, 0xF);
        modeOffset7 = sceneMode * 6;
        func_8009BF7C((s16) ((s32) *(u16 *)(D_800CB62C + modeOffset7) * -1), *(s16 *)(D_800CB62E + modeOffset7), 0, 1, &D_800CAA78, 0x18);
        reversePhase1 = &phase1;
        modeOffset8 = sceneMode * 6;
        func_8009BA54((s16) ((s32) *(u16 *)(D_800CB62C + modeOffset8) * -1), *(s16 *)(D_800CB62E + modeOffset8), *(s16 *)(D_800CB630 + modeOffset8), 1, reversePhase1, 0x14);
        modeOffset9 = sceneMode * 6;
        func_8009BF7C((s16) ((s32) *(u16 *)(D_800CB62C + modeOffset9) * -1), *(s16 *)(D_800CB62E + modeOffset9), *(s16 *)(D_800CB630 + modeOffset9), 1, reversePhase1, 0x20);
        modeOffset10 = sceneMode * 6;
        func_8009BA54((s16) ((s32) *(u16 *)(D_800CB62C + modeOffset10) * -1), *(s16 *)(D_800CB62E + modeOffset10), (s16) ((s32) *(u16 *)(D_800CB630 + modeOffset10) * -1), 1, &phase2, 0x19);
        modeOffset11 = sceneMode * 6;
        func_8009BF7C((s16)-*(u16 *)(D_800CB62C+modeOffset11), *(s16 *)(D_800CB62E+modeOffset11), (s16)-*(u16 *)(D_800CB630+modeOffset11), 1, &phase2, 40);
    }
    nextPhase0 = D_800CAA78 + 1;
    nextPhase1 = phase1 + 1;
    nextPhase2 = phase2 + 1;
    D_800CAA78 = nextPhase0;
    phase1 = nextPhase1;
    phase2 = nextPhase2;
    if ((u32) (nextPhase0 & 0xFF) >= 0x6DU) {
        D_800CAA78 = 0U;
    }
    if ((u32) (nextPhase1 & 0xFF) >= 0x6DU) {
        phase1 = 0U;
    }
    if ((u32) (nextPhase2 & 0xFF) >= 0x6DU) {
        phase2 = 0U;
    }
    if ((u8) D_800CAA7B >= 0x39U) {
        D_800CAA7B = 1;
    }
    if ((u8) D_800CAA7C >= 0x39U) {
        D_800CAA7C = 1U;
    }
    if ((u8) phase5 >= 0x39U) {
        phase5 = 1U;
    }
    if ((u8) phase6 >= 0x39U) {
        phase6 = 1U;
    }
    xSign = -1;
    if (*(s32 *)(scratch+0x1FC) < *(s32 *)(scratch+0x1F0)) {
        xSign = 1;
    }
    zSign = 1;
    if (*(s32 *)(scratch+0x204) < *(s32 *)(scratch+0x1F8)) {
        zSign = -1;
    }
    /* Preserve the later signed-halfword test of this initialized sign. */
    __asm__("" : "=r"(zSign) : "0"(zSign));
    counter = 1;
    do {
        xIndex = counter & 0xFF;
        if (xIndex < 7U) {
            firstX = D_800CB434[scratch[0x2E3]&255][xIndex].x * xSign;
            xOffset = xIndex * 0x10;
            *(s16 *)(D_800E6E20 + xOffset) = firstX;
            if ((s16)firstX >= 0) {
                /* Keep the original positive-path store/flag branch shape. */
                __asm__("" : "=r"(xOffset) : "0"(xOffset));
                goto x_nonnegative;
            }
            goto x_negative;
        }
        secondX = D_800CB434[scratch[0x2E3]&255][xIndex-7].x * xSign;
        xOffset = xIndex * 0x10;
        *(s16 *)(D_800E6E20 + xOffset) = secondX;
        if ((s16)secondX < 0) {
x_negative:
            *((u8 *)D_800E6E2C + xOffset) = 0;
            counter += 1;
        } else {
x_nonnegative:
            *((u8 *)D_800E6E2C + xOffset) = 1;
            counter += 1;
        }
    } while ((u32) (counter & 0xFF) < 0xEU);
    counter = 0;
    do {
        {
            s32 bankIndex = scratch[0x29D] & 255;
            packetRow = *(Packet40 **)(scratch+0x190);
            packetRow += bankIndex * 376;
        }
        packetIndex = counter & 0xFF;
        packet = &packetRow[packetIndex + 348];
        if (D_800E6E2C[packetIndex].flag != 0) {
            packet->color = func_800ADB14(0, 0x1FB);
        } else {
            packet->color = func_800ADB14(0, 0x1FA);
        }
        counter += 1;
    } while ((u32) (counter & 0xFF) < 0xEU);
    zPolarity = 1;
    if ((s16)zSign < 0) {
        zPolarity = -1;
    }
    /* This halfword also aliases D_800E6E24[14].x in native memory. */
    if (D_800E6F04 < 0) {
        counter = 0xE;
        if (zPolarity == -1) {
            counter = 0;
        } else {
            goto update_z_rows;
        }
    } else {
        counter = 0xE;
        if (zPolarity != 1) {
update_z_rows:
            do {
                zIndex = counter & 0xFF;
                if (zIndex < 0x15U) {
                    zTableIndex = zIndex - 7;
                } else {
                    zTableIndex = zIndex - 0xE;
                }
                D_800E6E24[zIndex].x = D_800CB438[scratch[0x2E3]&255][zTableIndex].x * zSign;
                /* Keep the increment after the coordinate store. */
                __asm__ volatile("" : "=r"(counter) : "0"(counter));
                counter += 1;
            } while ((u32) (counter & 0xFF) < 0x1CU);
        }
        counter = 0;
    }
    {
    u8 *xBase = D_800E6E20;
    u8 *yBase = xBase + 2;
    u8 *zBase = xBase + 4;
    do {
        renderIndex = counter & 0xFF;
        renderOffset = renderIndex * 0x10;
        {
            u8 *px = (u8 *)((u32)renderOffset + (u32)xBase);
            u8 *py = (u8 *)((u32)renderOffset + (u32)yBase);
            u8 *pz = (u8 *)((u32)renderOffset + (u32)zBase);
            /* Capture only the three live coordinate pointer arguments. */
            __asm__("" : "=r"(px), "=r"(py), "=r"(pz) : "0"(px), "1"(py), "2"(pz));
            counter += 1;
            func_8009B4F8(px, py, pz, renderIndex, *(u8 **)(D_800E6E28 + renderOffset), renderOffset + (D_800E6E20 + 0xC));
        }
    } while ((u32) (counter & 0xFF) < 0x1CU);
    }
    {
        u32 a = D_800CAA7B;
        u32 b = D_800CAA7C;
        register u32 c __asm__("v0") = phase5;
        register u32 d __asm__("v1") = phase6;
        a++;
        b++;
        c++;
        d += 2;
        D_800CAA7B = a;
        D_800CAA7C = b;
        phase5 = c;
        phase6 = d;
    }
}
