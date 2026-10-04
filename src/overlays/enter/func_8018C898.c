#include "common.h"

/* Scalar byte access view for the original absolute scratch address; no data. */
extern u8 scratchIndex __asm__("0x1F80029D");
extern u8 D_80191908[];
extern u32 D_801946F8;
extern void func_8018C068(void);
extern void *func_800B1488(void *, void *);
extern void *func_800B1348(void *, void *);
extern void *func_800B1318(void *, void *);
extern void func_800B6A78(void *, void *);
extern void func_8018EC28(void *);
extern void func_8018BE20(void *);

/* Only the copied word layout is known, not the fields' original meanings. */
typedef struct { u32 words[8]; } Words8;

void func_8018C898(void)
{
    u32 selector = scratchIndex;
    u8 *scratch = (u8 *)0x1F800000;
    register s32 i __asm__("$19");
    u8 *record;
    u8 *packet;
    u8 *matrix;

    if (selector == 0) D_801946F8 = 0x80196000;
    else D_801946F8 = 0x8019C800;
    i = 0;
    func_8018C068();
    record = D_80191908;
    matrix = scratch + 0x104;
    packet = record + 60;
    do {
        *(s32 *)(scratch + 0x13C) = *(s16 *)(packet - 58);
        *(s32 *)(scratch + 0x140) = *(s16 *)(packet - 56);
        *(s32 *)(scratch + 0x144) = *(s16 *)(packet - 54);
        *(u16 *)(scratch + 0x124) = *(u16 *)(packet - 24);
        *(u16 *)(scratch + 0x126) = *(u16 *)(packet - 22);
        *(u16 *)(scratch + 0x128) = *(u16 *)(packet - 20);
        *(u32 *)(scratch + 0x14C) = *(u32 *)(packet - 16);
        *(u32 *)(scratch + 0x150) = *(u32 *)(packet - 12);
        {
            u32 last = *(u32 *)(packet - 8);
            /* Empty identity delays the bound counter update until this load,
             * preserving the retail call-argument setup and load delay slot. */
            __asm__ ("" : "=r"(i) : "0"(i), "r"(last));
            i++;
            *(u32 *)(scratch + 0x154) = last;
        }
        func_800B1488(scratch + 0x124, matrix);
        func_800B1348(matrix, scratch + 0x14C);
        func_800B1318(matrix, scratch + 0x13C);
        *(Words8 *)(packet + 4) = *(Words8 *)(scratch + 0x104);
        *(u32 *)packet = 0;
        func_800B6A78(packet, matrix);
        func_8018EC28(record);
        packet += 1000;
        record += 1000;
    } while ((u8)i < 8);

    record = D_80191908;
    i = 0;
    do {
        func_8018BE20(record);
        i++;
        record += 1000;
    } while ((u8)i < 8);
}
