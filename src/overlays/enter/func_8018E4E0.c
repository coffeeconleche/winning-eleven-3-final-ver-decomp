#include "common.h"

extern u8 D_800FF748[];
extern u8 D_800F3560[];
extern u8 D_80193C48[];
extern u8 D_80193C98[];
extern void func_800ADCB8(void *, s32);
extern void *func_800B1718(void *, void *);
extern void *func_800B1348(void *, void *);
extern void *func_800B1318(void *, void *);

/* These instruction sequences match conventional PsyQ GTE intrinsic shapes.
 * C has no operators for coprocessor 2, so narrow inline assembly is retained
 * for the hardware operations around otherwise ordinary C data flow. */
#define gte_SetRotMatrix(r0) __asm__ volatile(                              \
    "lw $12, 0(%0);" "lw $13, 4(%0);"                                    \
    "ctc2 $12, $0;" "ctc2 $13, $1;"                                     \
    "lw $12, 8(%0);" "lw $13, 12(%0);" "lw $14, 16(%0);"                \
    "ctc2 $12, $2;" "ctc2 $13, $3;" "ctc2 $14, $4"                    \
    : : "r"(r0) : "$12", "$13", "$14")
#define gte_SetTransMatrix(r0) __asm__ volatile(                            \
    "lw $12, 20(%0);" "lw $13, 24(%0);" "ctc2 $12, $5;"                \
    "lw $14, 28(%0);" "ctc2 $13, $6;" "ctc2 $14, $7"                  \
    : : "r"(r0) : "$12", "$13", "$14")
#define gte_ldclmv(r0) __asm__ volatile(                                   \
    "lhu $12, 0(%0);" "lhu $13, 6(%0);" "lhu $14, 12(%0);"             \
    "mtc2 $12, $9;" "mtc2 $13, $10;" "mtc2 $14, $11"                  \
    : : "r"(r0) : "$12", "$13", "$14")
#define gte_stclmv(r0) __asm__ volatile(                                   \
    "mfc2 $12, $9;" "mfc2 $13, $10;" "mfc2 $14, $11;"                  \
    "sh $12, 0(%0);" "sh $13, 6(%0);" "sh $14, 12(%0)"                \
    : : "r"(r0) : "$12", "$13", "$14", "memory")
#define gte_ldlv0(r0) __asm__ volatile(                                    \
    "lhu $13, 4(%0);" "lhu $12, 0(%0);" "sll $13, $13, 16;"            \
    "or $12, $12, $13;" "mtc2 $12, $0;" "lwc2 $1, 8(%0)"              \
    : : "r"(r0) : "$12", "$13")
#define gte_stlvnl(r0) __asm__ volatile(                                   \
    "swc2 $25, 0(%0);" "swc2 $26, 4(%0);" "swc2 $27, 8(%0)"           \
    : : "r"(r0) : "memory")
#define gte_rtir() __asm__ volatile("nop;" "nop;" "mvmva 1, 0, 3, 3, 0")
#define gte_rt() __asm__ volatile("nop;" "nop;" "mvmva 1, 0, 0, 0, 0")
#define gte_CompMatrixScratch(r0, r1, r2, scratch) do {                    \
    gte_SetRotMatrix(r0);                                                   \
    gte_ldclmv(r1); gte_rtir(); gte_stclmv(r2);                            \
    gte_ldclmv((scratch) + 0x106); gte_rtir();                              \
    gte_stclmv((scratch) + 0x106);                                          \
    gte_ldclmv((scratch) + 0x108); gte_rtir();                              \
    gte_stclmv((scratch) + 0x108);                                          \
    gte_SetTransMatrix(r0);                                                 \
    gte_ldlv0((scratch) + 0x118); gte_rt();                                \
    gte_stlvnl((scratch) + 0x118);                                          \
} while (0)

#define gte_ldv3(r0, r1, r2) __asm__ volatile(                             \
    "lwc2 $0, 0(%0);" "lwc2 $1, 4(%0);"                                 \
    "lwc2 $2, 0(%1);" "lwc2 $3, 4(%1);"                                 \
    "lwc2 $4, 0(%2);" "lwc2 $5, 4(%2)"                                  \
    : : "r"(r0), "r"(r1), "r"(r2))
#define gte_ldv0(r0) __asm__ volatile(                                     \
    "lwc2 $0, 0(%0);" "lwc2 $1, 4(%0)" : : "r"(r0))
#define gte_rtpt() __asm__ volatile("nop;" "nop;" "rtpt")
#define gte_rtps() __asm__ volatile("nop;" "nop;" "rtps")
#define gte_stsxy3(r0, r1, r2) __asm__ volatile(                           \
    "swc2 $12, 0(%0);" "swc2 $13, 0(%1);" "swc2 $14, 0(%2)"            \
    : : "r"(r0), "r"(r1), "r"(r2) : "memory")
#define gte_stsxy(r0) __asm__ volatile(                                    \
    "swc2 $14, 0(%0)" : : "r"(r0) : "memory")

void func_8018E4E0(void)
{
    u8 *scratch = (u8 *)0x1F800000;
    /* These loop-carried values require the captured compiler allocation. */
    register s32 i __asm__("$21") = 0;
    u8 *matrix = (u8 *)0x1F800104;
    /* These values cross three calls and are spilled in the original build. */
    u8 *matrixSource = (u8 *)0x1F8001A8;
    u32 addressMask = 0xFFFFFF;
    u8 *vertices = D_80193C48;
    register s32 packetOffset __asm__("$23") = 0x500;
    register s32 bankOffset __asm__("$22") = 0;
    u8 *record = D_800FF748;

    do {
        u8 *packetBase;
        u8 *packet;
        u32 selector;

        *(s16 *)(scratch + 0x124) = 0;
        *(s16 *)(scratch + 0x126) = 0;
        *(s16 *)(scratch + 0x128) = 0;
        *(s32 *)(scratch + 0x13C) = *(s16 *)(record + 0xAC28);
        *(s32 *)(scratch + 0x140) = 0;
        *(s32 *)(scratch + 0x144) = *(s16 *)(record + 0xAC30);
        *(s32 *)(scratch + 0x14C) = 0x1000;
        *(s32 *)(scratch + 0x150) = 0x1333;
        *(s32 *)(scratch + 0x154) = 0x1000;
        func_800B1718((void *)((s32)scratch + 0x124), matrix);
        func_800B1348(matrix, (void *)((s32)scratch + 0x14C));
        func_800B1318(matrix, (void *)((s32)scratch + 0x13C));

        gte_CompMatrixScratch(matrixSource, matrix, matrix, scratch);
        gte_SetRotMatrix(matrix);
        gte_SetTransMatrix(matrix);

        selector = scratch[0x29D];
        packetBase = D_80193C98 + selector * 0x530;
        packet = packetBase + packetOffset;
        {
            /* Fixing the call argument preserves its setup before the bank
             * cursor update, as observed in the original instruction order. */
            register u8 *callPacket __asm__("$4") = packet;

            /* Unsigned modular addition avoids signed-overflow assumptions
             * while preserving the compiler's measured operand order. */
            packetBase = (u8 *)((u32)bankOffset - (0U - (u32)packetBase));
            packetBase[0x504] = 0x20;
            packetBase[0x505] = 0x20;
            packetBase[0x506] = 0x20;
            func_800ADCB8(callPacket, 1);
        }

        {
            s32 projectionOffset = i * 32;
            u8 *projectionBase;
            u8 *v1;
            u8 *v2;

            /* This value identity retains the index before the shared base is
             * derived; it emits no instruction. */
            __asm__ volatile("" : : "r"(projectionOffset));
            projectionBase = D_80193C48;
            v1 = projectionBase + 8;
            v1 = (u8 *)(projectionOffset + (s32)v1);
            v2 = projectionBase + 16;
            v2 = (u8 *)(projectionOffset + (s32)v2);
            gte_ldv3(vertices, v1, v2);
        }
        gte_rtpt();
        gte_stsxy3(packet + 8, packet + 12, packet + 16);
        /* The fourth vertex is the +24 access view of the same table. */
        gte_ldv0(D_80193C48 + 24 + i * 32);
        gte_rtps();
        gte_stsxy(packet + 20);

        vertices += 32;
        packetOffset += 24;
        bankOffset += 24;
        {
            u32 shiftBase = 4;
            register u32 preserveMask __asm__("$5");
            register u32 packetTag __asm__("$4");

            /* Retain the first shift base before the mask and loop update;
             * this measured identity also emits no instruction. */
            __asm__ volatile("" : : "r"(shiftBase));
            preserveMask = 0xFF000000;
            i++;
            packetTag = *(u32 *)(packetBase + 0x500);
            *(u32 *)(packetBase + 0x500) =
                (packetTag & preserveMask) |
                (*(u32 *)(D_800F3560 + (shiftBase << *(u32 *)scratch) +
                          (scratch[0x29D] << 14)) & addressMask);
            /* This C shift view assumes a count below 32. Original MIPS uses
             * only the low five bits; native ports must mask other counts. */
            *(u32 *)(D_800F3560 + (4U << *(u32 *)scratch) +
                     (scratch[0x29D] << 14)) =
                (*(u32 *)(D_800F3560 + (4U << *(u32 *)scratch) +
                          (scratch[0x29D] << 14)) & preserveMask) |
                ((u32)packet & addressMask);
        }

        record += 2;
    } while (i < 2);
}
