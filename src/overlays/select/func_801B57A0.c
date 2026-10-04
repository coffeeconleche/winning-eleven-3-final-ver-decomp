#include "common.h"

extern u8 D_800FF748[], D_8018B1F0[], D_8010A322;
extern u8 D_801D8A48, D_801D8DFC, D_801D8DFB, D_801D8B18;
extern u8 D_801DA2F0, D_801DADB6, D_801D92A3, D_801D8FA0;
/* Caller ABI views retain the supplied words; input helpers narrow their
 * selector bytes internally. Their full original prototypes are unknown. */
extern void func_801B84D8(u8), func_801B9100(void), func_800171FC(u32);
extern s32 func_8006F07C(u32), func_8006F0DC(u32, u32),
    func_801AB6E8(s32), func_8018EA8C(s32, u32);

/* State byte/table record meanings are unknown; preserve all eight cases. */
void func_801B57A0(void) {
    /* Retain eight otherwise-unused bytes for the measured 32-byte frame;
     * the original local purpose is unknown. The empty output emits no code. */
    u8 unusedFrame[8];
    u32 state = D_8010A322;
    u8 *base = D_800FF748;
    switch (state) {
    case 0: {
        u32 counter;
        base[0x8F22] = 0;
        base[0x8F23] = 0;
        base[0xABA8] = 0;
        D_801D8A48 = 0;
        /* Capture before the independent byte resets, which may alias. */
        counter = base[0xABDA];
        D_801D8DFC = 1;
        D_801D8DFB = 0;
        D_801D8B18 = 0;
        base[0xABA1] = 0;
        base[0xABA0] = 0;
        base[0xABA3] = 0;
        base[0xABA2] = 0;
        base[0xABA6] = 0;
        base[0xABA4] = 0;
        base[0xABA7] = 0;
        base[0xABA5] = 0;
        D_801DA2F0 = 0;
        D_801DADB6 = 0;
        base[0xABDA] = counter + 1;
        break;
    }
    case 1:
        func_801B84D8(1);
        base[0xABDA]++;
        break;
    case 2: {
        s32 mode = base[0x8F20];
        s32 i = 0;
        if (mode) {
            u8 *table = D_8018B1F0;
            u32 three = 3;
            u32 full = 255;
            do {
                u8 *row = (u8 *)((u32)(mode * 64) + (u32)table);
                u8 *node = *(u8 **)(i * 4 + (u32)row);
                node[6] = three;
                node[7] = i;
                node[8] = full;
                /* Reload after all three writes: the selected node may alias. */
                mode = base[0x8F20];
                i++;
            } while (i < mode);
        }
        func_801B84D8(0);
        base[0xABDA]++;
        break;
    }
    case 3:
        func_801B9100();
        base[0xABDA]++;
        break;
    case 4:
        if (func_8006F07C(16))
            base[0xABDA]++;
        break;
    case 5:
        if (!(base[0x8F1F] & 15)) {
            if (func_801AB6E8(98))
                base[0xABDA]++;
        } else {
            s32 increment = func_8018EA8C(1, 0);
            base[0xABDA] += increment;
        }
        break;
    case 6: {
        u32 counter = base[0xABDA];
        D_801D92A3 = 0;
        D_801D8FA0 = 0;
        base[0xABDA] = counter + 1;
        break;
    }
    case 7:
        if (func_8006F0DC(64, 1)) {
            func_800171FC(1);
            base[0xABDA] = 0;
        }
        break;
    }
    __asm__ volatile ("" : "=m"(unusedFrame));
}
