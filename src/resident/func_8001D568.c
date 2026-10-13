#include "common.h"

/* Scalar views of existing scratch storage; no complete layout is implied. */
extern s32 scratch13C __asm__("0x1F80013C");
extern s32 scratch140 __asm__("0x1F800140");
extern s32 scratch144 __asm__("0x1F800144");
extern u16 scratch124 __asm__("0x1F800124");
extern u16 scratch126 __asm__("0x1F800126");
extern u16 scratch128 __asm__("0x1F800128");
extern u32 scratch14C __asm__("0x1F80014C");
extern u32 scratch150 __asm__("0x1F800150");
extern u32 scratch154 __asm__("0x1F800154");

/* Consumed pointer arguments only; helper returns are ignored here. */
extern void *func_800B1488(void *, void *);
extern void *func_800B1348(void *, void *);
extern void *func_800B1318(void *, void *);

typedef struct { u32 words[8]; } Words8;

/* Field meanings and the historical return contract remain unknown. */
void func_8001D568(u8 *record)
{
    s32 angle = 448 - record[14];

    *(u16 *)(record + 22) = (angle % 256) << 4;
    scratch13C = *(s16 *)(record + 8);
    scratch140 = *(s16 *)(record + 10);
    scratch144 = *(s16 *)(record + 12);
    scratch124 = *(u16 *)(record + 20);
    scratch126 = *(u16 *)(record + 22);
    scratch128 = *(u16 *)(record + 24);
    scratch14C = *(u32 *)(record + 28);
    scratch150 = *(u32 *)(record + 32);
    scratch154 = *(u32 *)(record + 36);
    func_800B1488((void *)0x1F800124, (void *)0x1F800104);
    func_800B1348((void *)0x1F800104, (void *)0x1F80014C);
    func_800B1318((void *)0x1F800104, (void *)0x1F80013C);
    *(Words8 *)(record + 48) = *(Words8 *)0x1F800104;
}
