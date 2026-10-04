#include "common.h"
/* A 20-byte local access view; the complete original type is unknown. */
typedef struct { u16 halves[4]; u8 bytes[12]; } Fields20;
extern u8 D_800FF748[], D_80189FFC[], D_8018A004[];
extern Fields20 D_801D8D78, D_801D8D90, D_801D8DA8;
/* Ordered narrow access views of labels within the same retained records. */
extern volatile s16 D_801D8D7A, D_801D8D7C, D_801D8D7E, D_801D8D92, D_801D8D94, D_801D8D96, D_801D8DAA, D_801D8DAC, D_801D8DAE;
extern volatile u8 D_801D8D80, D_801D8D81, D_801D8D82, D_801D8D83, D_801D8D84, D_801D8D85;
extern volatile u8 D_801D8D98, D_801D8D99, D_801D8D9A, D_801D8D9B, D_801D8D9C, D_801D8D9D;
extern volatile u8 D_801D8DB0, D_801D8DB1, D_801D8DB2, D_801D8DB3, D_801D8DB4, D_801D8DB5;
extern s32 func_8018E69C(u8);
extern u8 *func_8001D004(u32);
extern void func_801941E0(u8, u32, Fields20 *, u8, u16, u8), func_801940EC(u8, u32, Fields20 *, u8, u16, u8);
extern s32 func_801A2CA0(s32, s32), func_8018E994(s16 *, s32, s32);
extern void func_80193FB4(u32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
void func_801A2610(void) {
    u8 mode = *(u8 *)0x1F8002E1;
    s32 enabled = 1;
    s32 alternate = 0;
    u8 *base = D_800FF748;
    /* Preserve the scratch base across callbacks, rather than rematerializing it. */
    register u8 *scratch __asm__("$22") = (u8 *)0x1F800000;
    u8 result;
    switch (mode) {
        case 0: case 3: case 4:
            if (func_8018E69C(1) != 2) alternate = 1;
            break;
        case 2:
            if (!(base[0x8F1F] & 15)) enabled = 0;
            break;
        case 5:
            *(u8 **)(base + 0x5DF4) = func_8001D004(scratch[0x2E1] + 0x3005);
            break;
    }
    *(volatile s16 *)&D_801D8D78 = 0;
    D_801D8D7A = 56; D_801D8D7C = 28; D_801D8D7E = 94;
    D_801D8D80 = 96; D_801D8D81 = 96; D_801D8D82 = 32;
    D_801D8D83 = 128; D_801D8D84 = 128; D_801D8D85 = 128;
    func_801941E0(3, 0x60000000, &D_801D8D78, 0, 4, 1);
    *(volatile s16 *)&D_801D8D90 = -686;
    D_801D8D92 = -11; D_801D8D94 = 172; D_801D8D96 = 16;
    D_801D8D98 = 160; D_801D8D99 = 160; D_801D8D9A = 160;
    *(volatile s16 *)&D_801D8DA8 = 513;
    D_801D8D9B = 128; D_801D8D9C = 128;
    D_801D8DB3 = 128; D_801D8DB4 = 128;
    D_801D8DAA = -11; D_801D8DAC = 172; D_801D8DAE = 16;
    D_801D8DB0 = 160; D_801D8DB1 = 160; D_801D8DB2 = 160;
    D_801D8D9D = 160; D_801D8DB5 = 160;
    func_801940EC(4, 0x60000000, &D_801D8D90, 1, 3, 1);
    func_801940EC(5, 0x60000000, &D_801D8DA8, 1, 3, 1);
    result = func_801A2CA0(enabled, alternate);
    func_8018E994((s16 *)(base + 0x5EE8), -512, 512);
    func_8018E994((s16 *)(base + 0x5F38), -512, 512);
    {
        /* These input-only uses retain pointer setup before the table read and
         * the step constant after it; neither changes any value or memory. */
        s16 *position = (s16 *)(base + 0x5F10);
        s32 target;
        __asm__("" : : "r"(position));
        target = D_80189FFC[result];
        __asm__("" : : "r"(target));
        func_8018E994(position, target | 512, 512);
    }
    func_8018E994((s16 *)(base + 0x5F60), D_8018A004[result] | 512, 512);
    /* Keep the persistent scratch base live through the four preceding calls. */
    __asm__("" : : "r"(scratch));
    if (scratch[0x2E1] != 2 || (base[0x8F1F] & 15))
        func_80193FB4(11, 0x3060, 0, -512, 0, 26, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    {
        u32 id = 12;
        s32 word;
        if ((u32)(scratch[0x2E1] - 1) < 2) {
            id = 16;
            if (!(base[0x8F1F] & 15)) {
                word = 0x3078;
            } else {
                /* Prevent merging the two original constant-selection tails. */
                __asm__("" : "=r"(id) : "0"(id));
                word = 0x3077;
            }
        } else word = 0x3061;
        func_80193FB4(id, word, 0, 512, 0, 26, 0, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    }
}

