#include "common.h"

extern u8 D_8010865D, D_8010A2EA[], D_800FF748[];
extern s16 D_801D8D90, D_801D8D92, D_801D8D94, D_801D8D96;
extern u8 D_801D8D98, D_801D8D99, D_801D8D9A;
extern u8 scratchD3[] __asm__("0x1F8002D3");
extern u8 scratchD4[] __asm__("0x1F8002D4");
extern u8 scratchD5[] __asm__("0x1F8002D5");
extern u8 scratchD6[] __asm__("0x1F8002D6");
extern u8 scratchDB[] __asm__("0x1F8002DB");
extern u8 scratchBase __asm__("0x1F800000");

extern void func_801941E0(u32, u32, void *, u32, u32, u32);
extern void func_80193FB4(u32, u32, u32, u32, s32, u32, u32, u32, u32,
                         u32, u32, u32, u32, u32, u32, u32, u32);
extern u8 *func_8001D004(u32);
extern u8 *func_801A9540(u8 *, s32, u32, s32, u32);

void func_801B9DCC(u32 input) {
    u8 total[2];
    struct SideSlot {
        u8 value;
        u8 unused[7];
    } side[2];
    /* Unknown-purpose compiler frame extent; the function never accesses it. */
    u8 compilerFrameExtent[32];
    register u32 firstSide;
    register u32 sideValue;
    s32 firstScore;
    s32 secondScore;

    input = (u8)input;
    {
        register u32 callIndex __asm__("$4") = 0;
        register u32 callWord __asm__("$5") = 0x60000000;
        register s16 *rectangle = &D_801D8D90;
        register u32 condition = input < 2;
        register u32 field = D_8010865D;
        __asm__("" : "=r"(field)
                : "0"(field), "r"(callIndex), "r"(callWord), "r"(rectangle),
                  "r"(condition));
        condition ^= 1;
        __asm__("" : "=r"(condition) : "0"(condition) : "$19", "$30");
        sideValue = condition ^ field;
    }
    side[0].value = sideValue;
    __asm__("" : "=m"(side[0].value) : "m"(side[0].value));
    firstSide = side[0].value;
    {
        register u32 one = 1;
        register u8 *packet;
        register u8 *base;
        register u32 firstOffset __asm__("$17");
        register u32 secondOffset __asm__("$16");
        register u32 secondSide;
        register u32 callFourth __asm__("$7");

        firstOffset = firstSide * 4;
        {
            register u32 firstD3 = scratchD3[firstOffset];
            register u32 firstD4 = scratchD4[firstOffset];
            __asm__ volatile("" : : "r"(firstD3), "r"(firstD4));
            sideValue ^= 1;
            side[1].value = sideValue;
            __asm__ volatile("" : "=m"(side[1].value) : "m"(side[1].value));
            {
                register u32 firstBase = D_8010A2EA[firstSide];
                __asm__ volatile("" : "=r"(firstBase) : "0"(firstBase));
                secondSide = side[1].value;
                __asm__ volatile("" : "=r"(secondSide) : "0"(secondSide));
                firstD3 += firstD4;
                firstD3 *= 2;
                firstBase += firstD3;
                secondOffset = secondSide * 4;
                callFourth = 0;
                total[0] = firstBase;
            }
        }
        {
            register u32 secondBase __asm__("$3") = D_8010A2EA[secondSide];
            {
                register u32 secondD3 = scratchD3[secondOffset];
                register u32 secondD4 = scratchD4[secondOffset];
                __asm__ volatile("" : "=r"(secondBase) : "0"(secondBase));

                {
                    register u32 callIndex = 0;
                    register u32 callWord = 0x60000000;
                    register s16 *rectangle = &D_801D8D90;
                    *rectangle = 0;
                    D_801D8D92 = 20;
                    D_801D8D94 = 122;
                    D_801D8D96 = 104;
                    D_801D8D98 = 0;
                    D_801D8D99 = 0;
                    D_801D8D9A = 32;
                    __asm__ volatile("" : "=m"(D_801D8D9A) : "m"(D_801D8D9A));
                    secondBase *= 2;
                    secondD3 += secondD4;
                    secondBase += secondD3;
                    total[1] = secondBase;
                    func_801941E0(callIndex, callWord, rectangle, callFourth, one, one);
                }
            }
        }

        {
            register u32 scale __asm__("$23") = 4096;
            register u32 shade = 128;
            func_80193FB4(16, 0x30F5, 0, 0, -1, 26, 0, scale, scale,
                          0, 0, shade, shade, shade, 0, 2, one);
            packet = func_8001D004(0x30F5);
            base = D_800FF748;
            packet[0xA] = 91;
            packet[0x16] = 97;
            packet[0x22] = 97;
            packet[0x2E] = 91;

            firstScore = total[0] + scratchD5[firstOffset] + scratchD6[firstOffset] +
                         scratchDB[firstSide];
            secondScore = total[1] + scratchD5[secondOffset] + scratchD6[secondOffset] +
                          scratchDB[secondSide];
            {
                u32 key;
                u32 kind = 3;
                if (secondScore < firstScore) {
                    __asm__ volatile("" : : "r"(kind));
                    key = 0x30F6;
                } else {
                    key = 0x30F7;
                }
                func_80193FB4(kind, key,
                              0, 0, 0, 6, 0, scale, scale,
                              0, 0, shade, shade, shade, 0, 3, one);
            }
        }

        secondOffset = side[0].value;
        {
            u8 *entry = (u8 *)((u32)base + secondOffset);
            func_801A9540(packet + 0x60, entry[0xABA2], 2, 176, 97);
        }
        firstOffset = side[1].value;
        {
            u8 *entry = (u8 *)((u32)base + firstOffset);
            func_801A9540(packet + 0x78, entry[0xABA2], 1, 176, 97);
        }
        __asm__ volatile("" : : "r"(base));
        {
            register u8 *glyph = packet + 0x90;
            register u32 alignment = 2;
            __asm__ volatile("" : "=r"(glyph), "=r"(alignment)
                             : "0"(glyph), "1"(alignment));
            secondOffset *= 4;
            {
                register u8 *scratchPair __asm__("$10") = &scratchBase;
                register u8 *indexedPair __asm__("$16");
                __asm__ volatile("" : "=r"(scratchPair) : "0"(scratchPair));
                indexedPair = scratchPair + secondOffset;
                func_801A9540(glyph,
                              indexedPair[0x2D3] + indexedPair[0x2D4],
                              alignment, 176, 97);
            }
        }
        {
            register u8 *glyph = packet + 0xA8;
            register u32 alignment = 1;
            __asm__ volatile("" : "=r"(glyph), "=r"(alignment)
                             : "0"(glyph), "1"(alignment));
            firstOffset *= 4;
            {
                register u8 *scratchPair __asm__("$10") = &scratchBase;
                register u8 *indexedPair __asm__("$17");
                __asm__ volatile("" : "=r"(scratchPair) : "0"(scratchPair));
                indexedPair = scratchPair + firstOffset;
                func_801A9540(glyph,
                              indexedPair[0x2D3] + indexedPair[0x2D4],
                              alignment, 176, 97);
            }
        }
        func_801A9540(packet + 0xC0, total[0], 2, 176, 97);
        func_801A9540(packet + 0xD8, total[1], 1, 176, 97);
    }
}
