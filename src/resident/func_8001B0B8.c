#include "common.h"

typedef union { u8 bytes[32]; u16 values[16]; } HalfwordTable;
typedef union {
    struct { HalfwordTable offsets, brightness; } tables;
    u16 values[32];
} DrawTables;
extern const HalfwordTable D_800104B8, D_800104D8;
extern u8 D_800FF748[], D_800F3568[];
extern u32 D_8010A36C;
extern void *func_800B1488(void *, void *);
extern void *func_800B1348(void *, void *);
extern void *func_800B1318(void *, void *);
extern u16 func_80050308(s32, u32);

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

#define BIND(r) __asm__(r)
#define KEEP(x) __asm__("" : "=r"(x) : "0"(x))
#define USE(x) __asm__("" : : "r"(x))
#define BARRIER() __asm__ volatile("" : : : "memory")
#define H(p, o) (*(u16 *)((p) + (o)))
#define S(p, o) (*(s16 *)((p) + (o)))
#define W(p, o) (*(u32 *)((p) + (o)))
#define WS(p, o) (*(s32 *)((p) + (o)))

/* Update the four vertex records per row, then draw the enabled sides. */
void func_8001B0B8(void)
{
    DrawTables tables;
    /* The original frame spaces the three live slots eight bytes apart. */
    struct {
        u8 *volatile parent;
        u32 parentSlotTail;
        u8 *position;
        u32 positionSlotTail;
        u32 highMask;
    } spill;
    register u8 *scratch BIND("$20");
    register s32 side BIND("$19");
    register u8 *matrix BIND("$23");
    register u8 *position;

    tables.tables.offsets = D_800104B8;
    tables.tables.brightness = D_800104D8;
    __asm__("" : : "m"(tables));
    {
        register u32 mode BIND("$3") = *(u8 *)0x1F800298;

        scratch = (u8 *)0x1F800000;

        if (mode == 4) {
            /* Signed division by three, using the GCC 2.7.2 HI:LO pair. */
            register s32 reciprocal BIND("$2") = 0x55550000;
            register s32 elapsed BIND("$4");
            register long long product BIND("hi");
            register s32 high BIND("hi");
            register s32 upper BIND("$8");
            register s32 sign BIND("$3");
            register s32 quotient BIND("$3");
            register s32 multiple BIND("$2");
            KEEP(reciprocal);
            elapsed = *(s32 *)0x1F800290;
            reciprocal |= 0x5556;
            USE(reciprocal);
            product = (long long)elapsed * reciprocal;
            sign = elapsed >> 31;
            __asm__("" : "=h"(high) : "x"(product), "r"(sign));
            upper = high;
            USE(upper);
            quotient = upper - sign;
            multiple = quotient * 3;
            if (elapsed != multiple) {
                side = 0;
                goto matrices;
            }
        }
    }
    {
        register u8 *row BIND("$5");
        register const u16 *table BIND("$7");
        side = 0;
        table = tables.values;
        USE(table);
        row = D_800FF748;
        do {
            register s32 index BIND("$6");
            register const volatile u16 *entry BIND("$4");
            {
                register u32 counter BIND("$2") = D_8010A36C;
                register s32 rounded BIND("$3") = side;
                register u32 negated BIND("$4");
                register u32 value BIND("$2");
                negated = 0U - counter;
                if (side < 0) rounded = side + 7;
                rounded >>= 3;
                value = (u32)side - (u32)rounded * 8U;
                value = negated + value;
                value += rounded;
                index = value & 15U;
                KEEP(index);
            }

            {
                register u32 delta BIND("$4") = (u32)index * 2;
                register u32 prior BIND("$2");
                register u32 add BIND("$3");
                register s32 next BIND("$3");
                register u32 intensity BIND("$2");
                USE(delta);
                entry = (const volatile u16 *)(delta + (u32)table);
                prior = H(row, 0x83A4);
                add = entry[0];
                KEEP(prior);
                prior += add;
                USE(add);

                next = index + 1;
                KEEP(next);
                H(row, 0x83A4) = prior;
                intensity = entry[16];
                H(row, 0x83A8) = intensity;
                {
                    register s32 adjusted BIND("$4") = next;
                    if (next < 0) adjusted = index + 16;
                    USE(adjusted);
                    adjusted &= 0x30;
                    adjusted = next - adjusted;
                    KEEP(adjusted);
                    delta = (u32)adjusted * 2;
                    USE(delta);
                    entry = (const volatile u16 *)(delta + (u32)table);
                }
            }
            H(row, 0x83AC) += entry[0];
            H(row, 0x83B0) = entry[16];
            BARRIER();
            {
                register u32 prior BIND("$2") = H(row, 0x83B4);
                register u32 add BIND("$3") = entry[0];
                register s32 next BIND("$3");
                register u32 intensity BIND("$2");
                KEEP(prior);
                prior += add;
                USE(add);

                next = index + 2;
                KEEP(next);
                H(row, 0x83B4) = prior;
                intensity = entry[16];
                H(row, 0x83B8) = intensity;
                {
                    register s32 adjusted BIND("$4") = next;
                    register u32 delta BIND("$2");
                    register const volatile u16 *last BIND("$2");
                    register u32 lastBase BIND("$3");
                    register u32 lastOffset BIND("$4");
                    register u32 finalIntensity BIND("$2");
                    if (next < 0) adjusted = index + 17;
                    USE(adjusted);
                    delta = (u32)adjusted & 0x30U;
                    delta = ((u32)next - delta) * 2;
                    USE(delta);
                    last = (const volatile u16 *)(delta + (u32)table);
                    lastBase = H(row, 0x83BC);
                    lastOffset = last[0];
                    KEEP(lastBase);
                    lastBase += lastOffset;
                    USE(lastOffset);
                    H(row, 0x83BC) = lastBase;
                    BARRIER();
                    finalIntensity = last[16];

                    side++;
                    H(row, 0x83C0) = finalIntensity;
                }
            }
            row += 32;
        } while (side < 40);
        BARRIER();
        D_8010A36C++;
        BARRIER();
    }

    side = 0;
matrices:
    KEEP(scratch);
    {
        register u8 *parent BIND("$8");
        matrix = scratch + 0x104;
        parent = scratch + 0x1C8;
        USE(matrix);
        USE(parent);
        spill.parent = parent;
        parent = D_800FF748;
        USE(parent);
        *(u8 *volatile *)&spill.position = parent;
    }
    position = *(u8 *volatile *)&spill.position;
    do {
        register u8 *state BIND("$8") = D_800FF748;
        register u8 *selected BIND("$2") = (u8 *)((u32)state - (0U - (u32)side));
        register u32 scaleOffset BIND("$5") = 0xAC44U;
        KEEP(selected);
        if (selected[0xAC20]) {
            register s16 *scale BIND("$5");
            register u8 *angles BIND("$4");
            register u8 *parent BIND("$8");
            register u8 *packet BIND("$17");
            register u8 *color BIND("$16");
            register u8 *row BIND("$18");
            register s32 i BIND("$21");
            register u32 addressMask BIND("$22");
            register u32 highMask BIND("$6");

            KEEP(position);
            USE(scaleOffset);
            state = *(u8 *volatile *)&spill.position;
            H(scratch, 0x124) = H(state, 0xAC34);
            H(scratch, 0x126) = H(state, 0xAC36);
            H(scratch, 0x128) = H(state, 0xAC38);
            WS(scratch, 0x13C) = S(position, 0xAC28);
            WS(scratch, 0x140) = S(position, 0xAC2C);
            {
                register s32 z BIND("$2") = S(position, 0xAC30);
                __asm__("" : "=r"(scaleOffset) : "0"(scaleOffset), "r"(z));
                scale = (s16 *)(position + scaleOffset);
                USE(scale);
                WS(scratch, 0x144) = z;
            }
            {
                /* The signed reciprocal and sign correction compute x*6/5. */
                register s32 x BIND("$2") = *scale;
                register s32 reciprocal BIND("$4");
                register s32 y BIND("$3");
                register s32 scaled BIND("$2");
                register long long product BIND("hi");
                register s32 high BIND("hi");
                register s32 upper BIND("$8");
                register s32 sign BIND("$2");
                register s32 result BIND("$3");
                BARRIER();
                reciprocal = 0x66660000;
                KEEP(reciprocal);
                WS(scratch, 0x14C) = x;

                y = *scale;
                reciprocal |= 0x6667;
                USE(reciprocal);
                scaled = y * 6;

                product = (long long)scaled * reciprocal;
                angles = scratch + 0x124;
                sign = scaled >> 31;
                __asm__("" : "=h"(high) : "x"(product), "r"(sign), "r"(angles));
                upper = high;
                __asm__("" : : "r"(upper), "r"(sign));
                result = (upper >> 1) - sign;
                WS(scratch, 0x150) = result;

            }
            WS(scratch, 0x154) = *scale;
            func_800B1488(angles, matrix);
            func_800B1348(matrix, scratch + 0x14C);
            func_800B1318(matrix, scratch + 0x13C);

            /* Compose the local matrix, then load it for projection. */
            parent = spill.parent;
            gte_CompMatrixScratch(parent, matrix, matrix, scratch);
            gte_SetRotMatrix(matrix);
            gte_SetTransMatrix(matrix);

            i = 0;
            addressMask = 0xFFFFFF;
            highMask = 0xFF000000U;
            {
                register u32 bank BIND("$3") = scratch[0x29D];
                register u32 offset BIND("$2");
                register u8 *base BIND("$3");
                KEEP(bank);
                row = D_800FF748;
                offset = (bank & 255U) * 15040U;
                base = *(u8 **)(scratch + 0x190);
                base += offset;
                offset = side * 2080U + 0x13B0;
                packet = base + offset;
            }
            color = packet + 0x2A;
            do {
                register u8 *verts BIND("$2");
                register u8 *verts1 BIND("$4");
                register u8 *verts2 BIND("$3");
                register u8 *xy0 BIND("$5");
                register u8 *xy1 BIND("$4");
                register u8 *xy2 BIND("$3");
                register u8 *xy3 BIND("$2");
                register u16 tex BIND("$2");
                register u32 lowAddress BIND("$4");
                register u8 *bucketBase BIND("$8");
                register u32 mask BIND("$6");
                register u32 shade BIND("$2");
                register u32 *bucket BIND("$3");
                register u32 shadeBase BIND("$8");

                {
                    register u8 *sideScratch BIND("$2") = (u8 *)((u32)scratch - (0U - (u32)side));
                    register u32 textureIndex BIND("$4");
                    register u32 mode BIND("$5");
                    KEEP(sideScratch);
                    textureIndex = sideScratch[0x2DD];
                    mode = 0;

                    *(u32 *)&spill.highMask = highMask;
                    tex = func_80050308(textureIndex, mode);
                }
                H(color, -0x1C) = tex;
                {
                    register u32 vertexOffset BIND("$2") = (u32)i * 32;
                    register u32 vertexStart BIND("$3") = 0x83A4U;
                    register u8 *vertexBase BIND("$8");
                    USE(vertexOffset);
                    vertexOffset += vertexStart;
                    USE(vertexOffset);
                    vertexBase = D_800FF748;

                    verts = (u8 *)((u32)vertexBase - (0U - vertexOffset));
                }
                verts1 = verts + 8;
                verts2 = verts + 16;
                /* Project three vertices together and then the fourth. */
                gte_ldv3(verts, verts1, verts2);
                gte_rtpt();
                xy0 = packet + 8;
                xy1 = packet + 0x14;
                xy2 = packet + 0x20;
                gte_stsxy3(xy0, xy1, xy2);
                verts += 24;
                gte_ldv0(verts);
                gte_rtps();
                xy3 = packet + 0x2C;
                gte_stsxy(xy3);

                {
                    register s32 value BIND("$2") = S(row, 0x83A8);
                    USE(value);
                    shadeBase = 4;
__asm__("" : "=r"(shadeBase) : "0"(shadeBase), "r"(value));
                    shade = ((shadeBase - (u32)value) << 4) + 0x40;
                }
                color[-0x26] = shade;
                color[-0x25] = shade;
                color[-0x24] = shade;
                shade = ((shadeBase - (u32)S(row, 0x83B0)) << 4) + 0x40;
                i++;
                color[-0x1A] = shade;
                color[-0x19] = shade;
                color[-0x18] = shade;
                shade = ((shadeBase - (u32)S(row, 0x83B8)) << 4) + 0x40;
                lowAddress = (u32)packet & addressMask;
                color[-0xE] = shade;
                color[-0xD] = shade;
                color[-0xC] = shade;
                shade = ((shadeBase - (u32)S(row, 0x83C0)) << 4) + 0x40;
                row += 32;
                bucketBase = D_800F3568;
                color[-2] = shade;
                color[-1] = shade;
                color[0] = shade;
                {
                    register u32 firstBank BIND("$2") = scratch[0x29D];
                    register u32 packetWord BIND("$3") = W(packet, 0);
                    register u32 *firstBucket BIND("$2");
                    mask = *(volatile u32 *)&spill.highMask;
                    USE(bucketBase);
                    firstBucket = (u32 *)((firstBank << 14) + (u32)bucketBase);
                    {
                        register u32 head BIND("$2") = *firstBucket;
                        packetWord &= mask;

                        head &= addressMask;

                        packetWord |= head;
                        W(packet, 0) = packetWord;
                    }
                }
                /* Reload the buffer index after the packet tag store. */
                BARRIER();
                bucket = (u32 *)(bucketBase + (scratch[0x29D] << 14));
                color += 0x34;
                *bucket = (*bucket & mask) | lowAddress;
                highMask = mask;
                packet += 0x34;
            } while (i < 40);
        }
        {
            register u8 *nextPosition BIND("$8");
            position += 2;
            side++;
            nextPosition = *(u8 *volatile *)&spill.position;
            USE(nextPosition);
            *(u8 **)&spill.position = nextPosition + 8;
        }
    } while (side < 2);
}
