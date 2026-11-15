#include "common.h"

typedef struct { u8 bytes[24]; } Bytes24;
typedef struct { u8 bytes[64]; } Bytes64;
typedef struct { u8 bytes[16]; } Bytes16;
typedef struct { u32 words[4]; } Words16;

extern const Bytes24 D_80189318;
extern const Bytes64 D_80189330;
extern u8 D_800FF748[];
extern u8 D_8010C1D8[];
extern u8 D_800F3568[];
extern s32 D_80191900;
extern u16 func_80050308(s32 selector, u32 mode);
extern void *func_800B1718(void *angles, void *matrix);
extern void *func_800B1348(void *matrix, void *scale);
extern void *func_800B1318(void *matrix, void *translation);
extern void func_800ADC04(u32 *bucket, u32 *packet);
extern void func_8018E4E0(void);

/* PS1 GTE intrinsics. These mirror the operations used by func_8018E4E0. */
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

#define gte_stotz4(out) __asm__ volatile(                                  \
    "mfc2 $12, $19;" "nop;" "sra $12, $12, 2;" "sw $12, 0(%0)"           \
    : : "r"(out) : "$12", "memory")

/* GCC 2.7.2's MIPS pair constraint keeps the signed product in HI:LO.
 * The empty high-word output reads the architectural HI register. The
 * reciprocal correction rounds toward zero, like signed division by 5.
 */
#if defined(__mips__) && defined(__GNUC__) && __GNUC__ == 2
#define DIVIDE5(x, inputReg, outputReg) ({ \
    register s32 dividend __asm__(inputReg) = (x); \
    register s32 sign __asm__(inputReg); \
    register long long product __asm__("hi"); \
    register s32 high __asm__("hi"); \
    register s32 upper __asm__("$11"); \
    register s32 quotient __asm__(outputReg); \
    __asm__("" : : "r"(dividend)); \
    product = (long long)dividend * reciprocal; \
    sign = dividend >> 31; \
    __asm__("" : "=h"(high) : "x"(product), "r"(sign)); \
    upper = high; \
    __asm__("" : : "r"(upper), "r"(sign)); \
    quotient = (upper >> 1) - sign; \
    __asm__("" : : "r"(quotient)); \
    quotient; })
#else
#define DIVIDE5(x, inputReg, outputReg) ((x) / 5)
#endif

#define HALF(base, offset) (*(s16 *)((base) + (offset)))
#define VHALF(base, offset) (*(volatile s16 *)((base) + (offset)))
#define WORD(base, offset) (*(u32 *)((base) + (offset)))
#define VWORD(base, offset) (*(volatile s32 *)((base) + (offset)))

void func_8018C068(void)
{
    Bytes24 first = D_80189318;
    Bytes64 second;
    register u8 *scratch __asm__("$18");
    register u8 *matrix __asm__("$23");
    /* The original frame places the three spill pointers eight bytes apart. */
    volatile struct {
        u8 *matrix;
        u32 matrixSlotTail;
        u8 *position;
        u32 positionSlotTail;
        u8 *state;
        u32 stateSlotTail;
    } spill;
    register u8 *state __asm__("$9");
    register u8 *settings __asm__("$10");
    u8 setting;
    register s32 offset __asm__("$2");
    register s32 side __asm__("$22");
    s32 reciprocal;
    register u8 *angles __asm__("$20");

    /* Retain both frame copies and the aligned and unaligned 16-byte paths. */
    {
        register u8 *dest __asm__("$7") = (u8 *)&second;
        register const u8 *source __asm__("$6") = (const u8 *)&D_80189330;
        register const u8 *end __asm__("$8");
        register u32 alignment __asm__("$2");

        __asm__("" : "=r"(dest), "=r"(source) : "0"(dest), "1"(source), "m"(first));
        alignment = ((u32)dest | (u32)source) & 3;
        __asm__("" : : "r"(alignment));
        state = D_800FF748;
        settings = D_8010C1D8;
        __asm__("" : : "r"(alignment), "r"(state), "r"(settings));
        scratch = (u8 *)0x1F800000;
        if (alignment != 0) {
            __asm__("" : : "r"(scratch));
            end = source + 64;
            __asm__("" : : "r"(end));
            do {
                *(Bytes16 *)dest = *(const Bytes16 *)source;
                source += 16;
                dest += 16;
            } while (source != end);
        } else {
            end = source + 64;
            __asm__("" : : "r"(end));
            do {
                *(Words16 *)dest = *(const Words16 *)source;
                source += 16;
                dest += 16;
            } while (source != end);
        }
        __asm__("" : : "m"(second));
    }
    __asm__("" : "=r"(scratch), "=r"(state), "=r"(settings) : "0"(scratch), "1"(state), "2"(settings));

    setting = settings[0x0D];
    scratch[0x1EC] = 4;
    if (setting == 0) {
        offset = (u16)HALF(state, 0xAC30);
        HALF(state, 0xAC2C) = -192;
        offset += 12;
    } else {
        HALF(state, 0xAC36) = 0x400;
        HALF(state, 0xAC28) = -2024;
        offset = -1270;
    }
    HALF(state, 0xAC30) = offset;
    if (settings[0x0E] == 0) {
        offset = (u16)HALF(state, 0xAC32);
        HALF(state, 0xAC2E) = -192;
        offset += 12;
    } else {
        HALF(state, 0xAC3E) = 0x400;
        HALF(state, 0xAC2A) = 2024;
        offset = -1270;
    }
    HALF(state, 0xAC32) = offset;
    if (WORD(settings, 0x20) == 4) {
        D_80191900 = 48;
    } else {
        D_80191900 = 0;
    }

    side = 0;
    reciprocal = 0x66666667;
    __asm__("" : : "r"(reciprocal));
    {
        register u8 *sourceMatrix __asm__("$11");
        matrix = scratch + 0x104;
        sourceMatrix = scratch + 0x1A8;
        angles = state;
        __asm__("" : "=r"(matrix), "=r"(sourceMatrix), "=r"(angles) : "0"(matrix), "1"(sourceMatrix), "2"(angles));
        spill.matrix = sourceMatrix;
        spill.position = angles;
    }
    do {
        register u32 selected __asm__("$2") = (u32)state - (0U - (u32)side);
        register u32 scaleOffset __asm__("$6");
        register u32 enabled __asm__("$2");
        __asm__("" : : "r"(selected));
        enabled = *(u8 *)(selected + 0xAC20);
        scaleOffset = 0xAC44;
        if (enabled) {
            register u8 *packet __asm__("$17");
            register u8 *color __asm__("$16");
            register u8 *vertexRecord __asm__("$19");
            register s32 i __asm__("$21");
            register u8 *packetBase __asm__("$3");
            register u32 bankOffset __asm__("$2");
            register u32 sideOffset __asm__("$2");
            register u32 bank __asm__("$3");
            s32 scaleTerm;
            register s16 *sx __asm__("$6");
            register u8 *position __asm__("$11");
            register u8 *inputMatrix __asm__("$11");

            __asm__("" : : "r"(scaleOffset));

            /* Keep the original scratch writes, including overwritten intermediates. */
            VHALF(scratch, 0x124) = HALF(angles, 0xAC34);
            VHALF(scratch, 0x126) = HALF(angles, 0xAC36);
            {
                register u32 zAngle __asm__("$3") = (u16)HALF(angles, 0xAC38);
                __asm__("" : : "r"(zAngle));
                VHALF(scratch, 0x124) = -0x400;
                VHALF(scratch, 0x128) = zAngle;
            }
            VHALF(scratch, 0x126) = -((u16)HALF(angles, 0xAC36) + 0xC00);
            VHALF(scratch, 0x128) = HALF(angles, 0xAC38);
            VHALF(scratch, 0x124) = HALF(angles, 0xAC34);
            VHALF(scratch, 0x126) = -((u16)HALF(angles, 0xAC36) + 0xC00);
            VHALF(scratch, 0x128) = HALF(angles, 0xAC38);
            position = spill.position;
            __asm__("" : : "r"(position));
            VWORD(scratch, 0x13C) = HALF(position, 0xAC28);
            VWORD(scratch, 0x140) = HALF(position, 0xAC2C);
            {
                s32 z = HALF(position, 0xAC30);
                __asm__("" : "=r"(scaleOffset) : "0"(scaleOffset), "r"(z));
                sx = (s16 *)((u32)position + scaleOffset);
                __asm__("" : "=r"(sx) : "0"(sx));
                VWORD(scratch, 0x144) = z;
            }
            VWORD(scratch, 0x14C) = *sx;
            __asm__("" : : : "memory");
            scaleTerm = *sx * 6;
            VWORD(scratch, 0x150) = DIVIDE5(scaleTerm, "$2", "$3");
            __asm__("" : : : "memory");
            {
                register s32 scaleX __asm__("$3") = 0x1000;
                register s32 scaleZ __asm__("$6") = *sx;
                register s32 scaleY __asm__("$2");
                __asm__("" : : "r"(scaleX), "r"(scaleZ));
                scaleY = 0x1333;
                __asm__("" : : "r"(scaleY));
                VWORD(scratch, 0x14C) = scaleX;
                VWORD(scratch, 0x150) = scaleY;
                VWORD(scratch, 0x154) = scaleZ;
                VWORD(scratch, 0x154) = scaleX;
            }
            {
                register u8 *anglesArg __asm__("$4") = scratch + 0x124;
                register u8 *matrixArg __asm__("$5") = matrix;
                __asm__("" : : "r"(anglesArg), "r"(matrixArg));
                *(u8 **)&spill.state = state;
                func_800B1718(anglesArg, matrixArg);
            }
            func_800B1348(matrix, scratch + 0x14C);
            func_800B1318(matrix, scratch + 0x13C);

            inputMatrix = spill.matrix;
            __asm__("" : : "r"(inputMatrix));
            gte_CompMatrixScratch(inputMatrix, matrix, matrix, scratch);
            gte_SetRotMatrix(matrix);
            gte_SetTransMatrix(matrix);

            i = 0;
            state = spill.state;
            bank = scratch[0x29D];
            vertexRecord = state;
            __asm__("" : : "r"(bank));
            bankOffset = (u8)bank * 235;
            packetBase = (u8 *)WORD(scratch, 0x190);
            __asm__("" : : "r"(bankOffset), "r"(packetBase));
            packetBase += bankOffset << 6;
            sideOffset = side * 0x820 + 0x13B0;
            __asm__("" : : "r"(packetBase), "r"(sideOffset));
            packet = packetBase + sideOffset;
            color = packet + 0x2A;
            do {
                register u8 *verts __asm__("$2");
                register u8 *verts1 __asm__("$4");
                register u8 *verts2 __asm__("$3");
                register u8 *screen0 __asm__("$5");
                register u8 *screen1 __asm__("$4");
                register u8 *screen2 __asm__("$3");
                u32 *current;
                s32 colorTerm;
                u8 shade;
                u32 texIndex = side ^ state[0x8F15];
                u8 *texAddress;
                register u32 texture __asm__("$4");

                texAddress = (u8 *)((u32)scratch - (0U - texIndex));
                texture = texAddress[0x2DD];
                *(u8 **)&spill.state = state;
                *(u16 *)(color - 0x1C) = func_80050308(texture, 0);
                {
                    register u32 stride __asm__("$2") = i * 32;
                    register u32 start __asm__("$3") = 0x83A4;
                    __asm__("" : : "r"(stride), "r"(start));
                    state = spill.state;
                    verts = (u8 *)((u32)state - (0U - (stride + start)));
                }
                verts1 = verts + 8;
                verts2 = verts + 16;
                /* The first three vertices project together, then the fourth. */
                gte_ldv3(verts, verts1, verts2);
                gte_rtpt();
                screen0 = packet + 8;
                screen1 = packet + 0x14;
                screen2 = packet + 0x20;
                gte_stsxy3(screen0, screen1, screen2);
                verts += 0x18;
                __asm__("" : : "r"(verts));
                gte_ldv0(verts);
                gte_rtps();
                gte_stsxy(packet + 0x2C);
                gte_stotz4(scratch + 0xEC);

                colorTerm = -HALF(vertexRecord, 0x83A8) * 4;
                shade = (u8)(DIVIDE5(colorTerm, "$2", "$3") - 0x60 - D_80191900);
                color[-0x26] = shade;
                color[-0x25] = shade;
                color[-0x24] = shade;
                colorTerm = -HALF(vertexRecord, 0x83B0) * 4;
                shade = (u8)(DIVIDE5(colorTerm, "$2", "$3") - 0x60 - D_80191900);
                color[-0x1A] = shade;
                color[-0x19] = shade;
                color[-0x18] = shade;
                colorTerm = -HALF(vertexRecord, 0x83B8) * 4;
                shade = (u8)(DIVIDE5(colorTerm, "$2", "$3") - 0x60 - D_80191900);
                color[-0xE] = shade;
                color[-0xD] = shade;
                color[-0xC] = shade;
                {
                    s32 lastHeight = HALF(vertexRecord, 0x83C0);
                    current = (u32 *)packet;
                    i++;
                    packet += 0x34;
                    vertexRecord += 0x20;
                    colorTerm = -lastHeight * 4;
                    shade = (u8)(DIVIDE5(colorTerm, "$3", "$2") - 0x60 - D_80191900);
                }
                color[-2] = shade;
                color[-1] = shade;
                color[0] = shade;
                color += 0x34;
                {
                    register u32 start __asm__("$2") = 14;
                    register u32 bankIndex __asm__("$6") = scratch[0x29D];
                    register u32 bucketShift __asm__("$3");
                    register s32 rawDepth __asm__("$4");
                    register u8 *buckets __asm__("$2");
                    register u32 bucketOffset __asm__("$4");
                    __asm__("" : : "r"(start), "r"(bankIndex));
                    bucketShift = WORD(scratch, 0);
                    rawDepth = (s32)WORD(scratch, 0xEC);
                    bankIndex <<= 14;
                    __asm__("" : : "r"(bucketShift), "r"(rawDepth), "r"(bankIndex));
                    start -= bucketShift;
                    /* The PS1 SRAV instruction uses only the low five bits. */
#if defined(__mips__) && defined(__GNUC__) && __GNUC__ == 2
                    rawDepth >>= start;
#else
                    rawDepth >>= start & 31;
#endif
                    __asm__("" : "=r"(rawDepth) : "0"(rawDepth), "r"(start), "r"(bucketShift));
                    bucketOffset = (u32)rawDepth * 4;
                    buckets = D_800F3568;
                    __asm__("" : : "r"(bucketOffset), "r"(buckets));
                    bucketOffset += (u32)buckets;
                    func_800ADC04((u32 *)(bankIndex - (0U - bucketOffset)), current);
                }
                state = spill.state;
            } while (i < 40);
        }
        {
            register u8 *nextPosition __asm__("$11");
            angles += 8;
            side++;
            nextPosition = spill.position;
            __asm__("" : : "r"(nextPosition));
            *(u8 **)&spill.position = nextPosition + 2;
        }
    } while (side < 2);
    func_8018E4E0();
}
