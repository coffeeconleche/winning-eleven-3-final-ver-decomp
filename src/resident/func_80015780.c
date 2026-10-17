#include "common.h"

/* Native access views of the existing 32-byte copy and 20-byte records;
 * these do not reconstruct their complete graphics types or backing arrays. */
typedef struct { s32 word[8]; } MatrixView;
typedef struct { s32 word[5]; } OrderView;
extern OrderView D_800F1018[], D_800FB580[];
extern MatrixView D_800FF6B0;
extern s32 D_800EF9CC;
extern volatile s32 D_1F800198 __asm__("0x1F800198");
extern volatile s32 D_1F80019C __asm__("0x1F80019C");
extern volatile s32 D_1F8001A0 __asm__("0x1F8001A0");
extern volatile s32 D_1F8001A4 __asm__("0x1F8001A4");
extern void func_800156BC(void), func_80015C84(void), func_80017258(void);
extern void func_8001D6A8(void), func_8001DBE8(void), func_8001DC80(void), func_8001E158(void);
extern void func_800AC27C(void), func_800ACE68(void);
extern s32 func_800ACE38(u32, s32, s32, void (*)(void));
extern s32 func_800ACE58(s32), func_800ACF18(u32, s32, s32), func_800ACFEC(u32);
extern void func_80015B98(void);
extern void func_800AD13C(void *, s32, void *, s32);
extern s32 func_800AE49C(s32), func_800AE1B8(s32), func_800AE32C(s32), func_800AE534(s32);
extern s32 func_800BB218(s32), func_800BA518(s32), func_800B6D78(void);
/* Raw no-argument call-site views. BA738 and BC628 forward the surviving
 * a0-a3 words to the installed dispatch callback (initially 800BA8CC, which
 * overwrites its inputs). Do not invent source arguments for those residues. */
extern void func_800BA738(), func_800BC628();
extern void *func_800B1348(void *, void *);
extern void func_800B4550(u32, u32, u32, OrderView *);
extern s32 func_800B4688(void), func_800B4848(void);
extern void func_800B4878(void), func_800B48A8(void);
extern void func_800B5A28(OrderView *), func_800B5A58(u32, u32, OrderView *);
extern void *func_800B5AB8(OrderView *, OrderView *);
extern s32 func_800B5FA8(void *);
extern void func_80194394(void);
/* These module addresses have no recovered body here. Only the caller's
 * zero-argument call-site view is known; their full API remains unresolved. */
extern void func_801D2BC4(), func_801D741C();

#define WORD(o) (*(s32 *)(scratch + (o)))
#define VWORD(o) (*(volatile s32 *)(scratch + (o)))
#define BYTE(o) (*(volatile u8 *)(scratch + (o)))

/* Startup reaches this permanent frame loop from the raw 800156C4 region.
 * Scratch fields touched by callbacks retain their observed reloads. The
 * original declaration and gameplay meanings remain provisional. */
void func_80015780(void)
{
    u8 *scratch;
    /* Keep a native 32-bit address for the observed offset-plus-base sums. */
    u32 orders;
    s32 initial;
    func_800156BC();
    scratch = (u8 *)0x1F800000;
    func_800AE49C(0);
    func_800BB218(0);
    func_800BA738();
    func_800B6D78();
    func_800AE1B8(0);
    func_800AE32C(0);
    func_800AD13C((void *)0x1F80038C, 0x22, (void *)0x1F8003AE, 0x22);
    func_800BC628();
    D_1F8001A0 = 0;
    initial = D_1F8001A0;
    orders = (u32)D_800F1018;
    D_1F800198 = 0;
    D_1F8001A4 = initial;
    D_1F80019C = 2;
    func_8001E158();
    D_800EF9CC = func_800ACE38(0xF2000003U, 2, 0x1000, func_80015B98);
    func_800ACF18(0xF2000003U, 1, 0x1000);
    func_800ACE58(D_800EF9CC);
    func_800ACFEC(0xF2000003U);
    func_8001DBE8();
    func_800ACE68();
    func_8001DC80();
    for (;;) {
        u8 buffer;
        func_800B4878();
        func_80017258();
        buffer = func_800B4688();
        BYTE(0x29D) = buffer;
        if (!buffer) WORD(0x2A4) = 0x8010D000;
        else WORD(0x2A4) = 0x80123800;
        func_800B5A58(0, 0, (OrderView *)(BYTE(0x29D) * 20 + orders));
        func_800B5A58(0, ((1U << WORD(0)) - 2) & 0xFFFF, &D_800FB580[BYTE(0x29D)]);
        func_80015C84();
        func_800B5FA8(scratch + 0x1F0);
        if (BYTE(0x338)) {
            WORD(0x14C) = 0x1000;
            WORD(0x150) = 0x1470;
            WORD(0x154) = 0x1000;
            func_800B1348(&D_800FF6B0, scratch + 0x14C);
        }
        *(MatrixView *)(scratch + 0x1A8) = D_800FF6B0;
        switch (BYTE(0x298)) {
        case 4:
            func_80194394();
            break;
        case 6:
        {
            u32 required = 2;
            /* Identity of the real initialized comparison value: retains
             * its preparation in the selector branch's delay slot. */
            __asm__ volatile("" : "=r"(required) : "0"(required));
            if (BYTE(0x29A) != required) goto default_state;
            if (BYTE(0x29B)) {
                func_801D2BC4();
                if (BYTE(0x29B) == 0xC1) func_801D741C();
            }
        }
        default:
        default_state:
            func_8001D6A8();
            break;
        }
        switch (WORD(0x198)) {
        case 3:
        case 4:
        {
            s32 waiting;
            func_800AE534(0);
            do { waiting = func_800B4848() < 0x200; } while (waiting);
            /* Capture the actual completed comparison, preserving the
             * measured backward conditional branch. Emits no instruction. */
            __asm__("" : : "r"(waiting));
            break;
        }
        case 1:
        {
            s32 waiting;
            func_800AE534(0);
            do { waiting = func_800B4848() < (s16)*(volatile u16 *)(scratch + 0x336); } while (waiting);
            /* Same completed-comparison capture for the field threshold. */
            __asm__("" : : "r"(waiting));
            break;
        }
        case 2:
            func_800BA518(0);
            break;
        default:
            func_800AE534(0);
            VWORD(0x1A4) = 1;
            do {} while (VWORD(0x1A4));
            break;
        }
        func_800B48A8();
        func_800B4550(BYTE(0x1E9), BYTE(0x1EA), BYTE(0x1EB), (OrderView *)(BYTE(0x29D) * 20 + orders));
        {
            s32 offset = BYTE(0x29D) * 20;
            func_800B5AB8((OrderView *)(offset + (u8 *)D_800FB580), (OrderView *)(offset + orders));
        }
        func_800B5A28((OrderView *)(BYTE(0x29D) * 20 + orders));
        func_800AC27C();
        (*(u32 *)(scratch + 0x290))++;
    }
}
