#include "common.h"

extern u8 D_800CB39C[][8];
extern void func_800ADD6C(u8 *);
extern void func_800ADCB8(u8 *, s32);
extern u16 func_800ADAD8(s32, s32, s32, s32);
extern u16 func_80050308(u32, s32);

void func_8009BDAC(void)
{
    s32 bank;
    s32 bankOffset = 0;

    for (bank = 0; bank < 2; bank++, bankOffset += 0x3AC0) {
        s32 i;
        s32 pktOffset = 0x2A30;

        for (i = 0; i < 0x30; i++, pktOffset += 0x28) {
            s32 sub = i & 7;
            u8 *pkt = *(u8 **)0x1F800190 + bankOffset + pktOffset;
            u8 uBase;
            u8 team;

            func_800ADD6C(pkt);
            func_800ADCB8(pkt, 0);
            *(u16 *)(pkt + 0x16) = func_800ADAD8(0, 0, 0x1C0, 0);

            if (i < 0x18) {
                team = *(u8 *)0x1F8002DD;
                uBase = 0;
            } else {
                team = *(u8 *)0x1F8002DE;
                uBase = 0x40;
            }

            *(u16 *)(pkt + 0x0E) = func_80050308(team, 0);
            pkt[0x0C] = D_800CB39C[sub][0] + uBase;
            pkt[0x0D] = D_800CB39C[sub][1] + 0x80;
            pkt[0x14] = D_800CB39C[sub][2] + uBase;
            pkt[0x15] = D_800CB39C[sub][3] + 0x80;
            pkt[0x1C] = D_800CB39C[sub][4] + uBase;
            pkt[0x1D] = D_800CB39C[sub][5] + 0x80;
            pkt[0x24] = D_800CB39C[sub][6] + uBase;
            pkt[0x25] = D_800CB39C[sub][7] + 0x80;
            pkt[0x04] = 0x80;
            pkt[0x05] = 0x80;
            pkt[0x06] = 0x80;
        }
    }
}
