#include "common.h"

#define SELECTOR(x) ((x) & 0xFFFFU)
#define M2C_FIELD(base, type, off) (*(type)((u32)(base) + (u32)(off)))

/* Partial native caller-side views; pointee layouts remain provisional. */
extern void func_800B3FB8(void *, void *, u16);
extern void func_80196FE8(u32, u32, u32, u32, s32, s32, s32, u16);
extern void func_801975B0(u32, s32, s32, u32);
extern void func_801979D8(u32, s32, s32, u8);
extern u8 D_800F1018[], D_800FF748[], D_801D1B90[], D_801D1B91[];
extern u16 D_8010770C, D_8010770E, D_801077E4, D_801077E6;

/* The fifth argument is reloaded after calls. Records are eight bytes;
 * advancePtr points at the current record's advance byte. Coordinates stay
 * full words until an observed halfword store or narrowed helper argument.
 *
 * The initial record index is a separate zero-valued snapshot: it initializes
 * the stack counter and determines the first signed count comparison. The
 * four glyph loops likewise start at index zero and compare against each fresh
 * byte count. Later tests reread the record and glyph counts after calls.
 *
 * Empty constraints retain initialized values or their ordering around real
 * reads and calls. The byte shift-count identity (code | 224) ^ 224 equals
 * code & 31, which models the processor's five-bit variable-shift count.
 * In the bank lookup, unsigned base - (0 - offset) equals base + offset
 * modulo 2^32. Both identities retain the native instruction forms. */
void func_80197C78(u8 *descriptorArg, s32 baselineY, u8 *records,
    s32 suppliedWidth, volatile s32 recordCount) {
    s32 y;
    u8 *recordCursor;
    s32 widthCopy;
    u32 recordIndex;
    s32 initialIndex;
    register s32 glyphCount;
    u32 red, green, blue;
    register s32 glyphIndex __asm__("$18");
    register u8 *scratch __asm__("$19");
    register u8 *descriptor  = descriptorArg;
    register u32 cursorX;

    register s32 alphaLowerIndex __asm__("$3");
    s32 alphaUpperIndex;
    register s32 drawSelector;
    register u8 *packet;

    s32 alignmentOffset;
    register s32 spriteRowTimes8 __asm__("$2");
    register u32 capturedSelector __asm__("$23");
    register u32 alphaByte;
    register u8 *glyphText;
    register u8 *advancePtr __asm__("$21");
    s32 glyphKind;
    u8 specialChar;
    register s32 digitValue;
    register u32 digitByte;
    register s32 underscore __asm__("$2");
    u8 glyphChar;
    u8 glyphCharAfter;
    register u32 tileCode;
    s32 alignment;
    register s32 tileU21;
    register s32 tileU20;
    s32 resetAlignment;
    s32 recordTag;
    register s32 alphaChar;
    register s32 alphaDelta;
    u8 spriteIndex;
    register u32 bankValue __asm__("$16");

    register s32 tileV;
    u8 tileU;
    register s32 spriteRow __asm__("$3");
    register u8 *alphaTexture __asm__("$3");
    register u8 *digitTexture;
    register u8 *spriteTexture;
    register u8 *paletteEntry __asm__("$5");

    __asm__("" : "=r"(descriptor) : "0"(descriptor));
    y = baselineY;
    __asm__("" : "=r"(y) : "0"(y), "r"(descriptor));
    scratch = (u8 *)0x1F800000;

    alignment = *(const u8 *)((u32)descriptor + 8U);

    recordCursor = records;
    widthCopy = suppliedWidth;
    switch (alignment) {
    case 0:
    case 1:
    default:
        cursorX = M2C_FIELD(descriptor, s16 *, 2);
        break;
    case 3: {
            register u32 textWidth;
            register u32 lineWidth __asm__("$8");
            register s32 origin ;
            textWidth = M2C_FIELD(descriptor, u16 *, 6);
            __asm__("" : : "r"(textWidth));
            lineWidth = (u32)widthCopy;

            origin = M2C_FIELD(descriptor, s16 *, 2);
            __asm__("" : : "r"(textWidth), "r"(lineWidth), "r"(origin));
            alignmentOffset = (s32)(textWidth - lineWidth) >> 1;
            cursorX = (u32)origin + (u32)alignmentOffset;
            break;
        }
    case 2: {
            register u32 textWidth;
            register u32 lineWidth __asm__("$9");
            register s32 origin ;
            textWidth = M2C_FIELD(descriptor, u16 *, 6);
            __asm__("" : : "r"(textWidth));
            lineWidth = (u32)widthCopy;

            origin = M2C_FIELD(descriptor, s16 *, 2);
            __asm__("" : : "r"(textWidth), "r"(lineWidth), "r"(origin));
            alignmentOffset = textWidth - lineWidth;
            cursorX = (u32)origin + (u32)alignmentOffset;
            break;
        }
    }
    red = M2C_FIELD(descriptor, u8 *, 0xD);
    green = M2C_FIELD(descriptor, u8 *, 0xE);
    blue = M2C_FIELD(descriptor, u8 *, 0xF);
    initialIndex = 0;
    recordIndex = (u32)initialIndex;
    *(u8 *)(scratch + 0x170) = red;
    *(u8 *)(scratch + 0x171) = green;
    *(u8 *)(scratch + 0x172) = blue;
    capturedSelector = M2C_FIELD(descriptor, u16 *, 0);

    {
        register s32 entryLimit __asm__("$8") = recordCount;

        if (initialIndex < entryLimit) {
            register u8 *firstRecord __asm__("$9") = recordCursor;
            __asm__("" : "=r"(firstRecord) : "0"(firstRecord));
            advancePtr = (u8 *)((u32)firstRecord + 1U);
            do {
                register u8 *currentRecord __asm__("$8") = recordCursor;
                __asm__("" : "=r"(currentRecord) : "0"(currentRecord));
                recordTag = *currentRecord;
                if (recordTag == 8) goto tag8;
                if ((s32) recordTag < 9) {
                    if (recordTag == 2) goto tag2;
                    if ((s32)recordTag < 3) {
                        register s32 one __asm__("$9") = 1;

                        if (recordTag == one) goto advance;
                        goto finish;
                    }
                    if (recordTag == 3) goto tag3;
                    if (recordTag == 4) goto tag4;
                    goto finish;
                }
                if (recordTag == 20) goto tag20;
                if ((s32)recordTag < 21) {
                    register s32 nine __asm__("$8") = 9;

                    if (recordTag == nine) goto tag9;
                    if (recordTag == 10) goto tag10;
                    goto finish;
                }
                if (recordTag == 21) goto tag21;
                goto finish;
            tag2:
                glyphText = M2C_FIELD(advancePtr, u8 **, 3);
                glyphKind = M2C_FIELD(advancePtr, u8 *, 2);
                bankValue = M2C_FIELD(descriptor, u8 *, 0xC);
                if (glyphKind == 2) goto glyph_default;
                if ((s32)glyphKind < 3) {
                    register s32 one __asm__("$9") = 1;

                    if (glyphKind == one) goto glyph_alpha;
                    goto glyph_default;
                }
                if (glyphKind == 4) goto glyph_special;
                if (glyphKind == 6) goto glyph_digits;
                goto glyph_default;
            glyph_alpha:

                if (bankValue == 0) {
                    bankValue = 9;
                }
                glyphIndex = 0;
                glyphCount = M2C_FIELD(advancePtr, u8 *, 1);
                /* Retain the loaded count for the signed loop-entry tests.
                 * This tied value emits no code and leaves the count intact. */
                __asm__("" : "=r"(glyphCount) : "0"(glyphCount));
                if (glyphIndex < glyphCount) {
                    bankValue *= 4;
                    do {
                        alphaChar = *glyphText;
                        underscore = 0x5F;

                        alphaByte = alphaChar & 0xFF;
                        if (alphaByte == underscore) {
                            {
                                register s32 spacing  = M2C_FIELD(descriptor, s8 *, 9);
                                register u32 nextX ;

                                nextX = cursorX + 8;

                                cursorX = nextX + (u32)spacing;
                            }
                        } else {
                            register u8 *alphaPalette  = D_800FF748;
                            register u8 *alphaPacket;
                            register u32 alphaHeight __asm__("$8");
                            register u32 alphaHeight23 __asm__("$2");
                            alphaDelta = alphaChar - 0x41;

                            alphaHeight = 0x10;
                            if ((u32)alphaDelta >= 0x1AU) {
                                alphaDelta = alphaChar - 0x61;

                                if ((u32)alphaDelta >= 0x1AU) goto alphaInvalid;
                            }
                            {
                                alphaHeight23 = 0x17;

                                alphaTexture = (u8 *)(bankValue + (u32)alphaPalette);

                                *(u32 *)0x1F80015C = 0;
                                *(u16 *)0x1F800160 = cursorX;
                                *(u16 *)0x1F800162 = y;
                                *(u16 *)0x1F800166 = alphaHeight;
                                *(u16 *)0x1F800168 = alphaHeight23;
                                {
                                    register u32 textureFirst;
                                    textureFirst = M2C_FIELD(alphaTexture, u16 *, 0x7FA6);

                                    *(u16 *)0x1F80016C = textureFirst;
                                    textureFirst = M2C_FIELD(alphaTexture, u16 *, 0x7FA4);

                                    *(u16 *)0x1F80016E = textureFirst;
                                }
                                if (alphaByte >= 0x61U) {
                                    {
                                        register u32 first;
                                        register u32 second;
                                        alphaLowerIndex = (alphaByte - 0x47) * 2;

                                        first = D_801D1B90[alphaLowerIndex];

                                        *(u8 *)0x1F80016A = first;
                                        second = D_801D1B91[alphaLowerIndex];

                                        *(u8 *)0x1F80016B = 0x40;
                                        *(u16 *)0x1F800164 = second;
                                        {
                                            register u8 *packetBase  = scratch;

                                            alphaPacket = packetBase + 0x15C;
                                        }
                                        goto alphaReady;
                                    }
                                } else {
                                    alphaUpperIndex = (alphaByte - 0x41) * 2;
                                    *(u8 *)0x1F80016A = (u8) D_801D1B90[alphaUpperIndex];
                                    *(u16 *)0x1F800164 = (u16) D_801D1B91[alphaUpperIndex];
                                    if (alphaByte == 0x5A) {
                                        register u32 zOffset __asm__("$9") = 0x10;

                                        *(u8 *)0x1F80016B = zOffset;

                                        alphaPacket = scratch + 0x15C;
                                        goto alphaReady;
                                    } else {
                                        *(u8 *)0x1F80016B = 0;

                                        alphaPacket = scratch + 0x15C;
                                        goto alphaReady;
                                    }
                                }
                            }
                        alphaInvalid:
                            *(u16 *)0x1F800164 = 0;
                            alphaPacket = scratch + 0x15C;
                        alphaReady:
                            {
                                register u8 *packetArg  = alphaPacket;
                                register u32 selectArg  = SELECTOR(capturedSelector);
                                register u32 mode  = *(u8 *)(scratch + 0x29D);
                                register u8 *palette __asm__("$8");
                                __asm__("" : "=r"(mode) : "0"(mode), "r"(packetArg), "r"(selectArg));
                                palette = D_800F1018;

                                func_800B3FB8(packetArg, palette + mode * 0x14, selectArg);
                            }
                            if (*glyphText != 0x7C) {
                                {
                                    u16 glyphWidth = *(u16 *)(scratch + 0x164);
                                    s8 spacing = M2C_FIELD(descriptor, s8 *, 9);
                                    cursorX += (u32)((s32)glyphWidth + (s32)spacing);
                                }
                            }
                        }
                        glyphText = (u8 *)((u32)glyphText + 1U);
                        glyphCount = M2C_FIELD(advancePtr, u8 *, 1);
                        glyphIndex += 1;
                    } while (glyphIndex < glyphCount);
                    advancePtr = (u8 *)((u32)advancePtr + 8U);
                    goto next_record;
                } else {
                    goto finish;
                }
            glyph_default:
                if (bankValue == 0) {
                    bankValue = 8;
                }
                glyphIndex = 0;
                glyphCount = M2C_FIELD(advancePtr, u8 *, 1);

                if (glyphIndex < glyphCount) {
                    do {
                        glyphChar = *glyphText;
                        if (glyphChar == 0x5F) {
                            {
                                register s32 spacing  = M2C_FIELD(descriptor, s8 *, 9);
                                register u32 nextX ;

                                nextX = cursorX + 8;

                                cursorX = nextX + (u32)spacing;
                            }
                        } else {
                            func_801975B0(glyphChar, (s16)cursorX, (s16)y, bankValue & 0xFF);
                            {
                                register u8 *packetArg  = scratch + 0x15C;
                                register u32 selectArg  = SELECTOR(capturedSelector);
                                register u32 mode  = *(u8 *)(scratch + 0x29D);
                                register u8 *palette __asm__("$9");
                                __asm__("" : "=r"(mode) : "0"(mode), "r"(packetArg), "r"(selectArg));
                                palette = D_800F1018;

                                func_800B3FB8(packetArg, palette + mode * 0x14, selectArg);
                            }
                            glyphCharAfter = *glyphText;
                            if (glyphCharAfter != 0x7C) {
                                {
                                    u16 glyphWidth = *(u16 *)(scratch + 0x164);
                                    s8 spacing = M2C_FIELD(descriptor, s8 *, 9);
                                    cursorX += (u32)((s32)glyphWidth + (s32)spacing);
                                }
                            }
                            if (glyphCharAfter == 0x60) {
                                cursorX += 2;
                            }
                        }
                        glyphText = (u8 *)((u32)glyphText + 1U);
                        glyphCount = M2C_FIELD(advancePtr, u8 *, 1);
                        glyphIndex += 1;
                    } while (glyphIndex < glyphCount);
                    advancePtr = (u8 *)((u32)advancePtr + 8U);
                    goto next_record;
                } else {
                    goto finish;
                }
            glyph_special:

                if (bankValue == 0) {
                    bankValue = 0x50;
                }
                glyphIndex = 0;
                glyphCount = M2C_FIELD(advancePtr, u8 *, 1);

                if (glyphIndex < glyphCount) {
                    do {
                        specialChar = *glyphText;
                        if (specialChar == 0x5F) {
                            {
                                register s32 spacing  = M2C_FIELD(descriptor, s8 *, 9);
                                register u32 nextX ;

                                nextX = cursorX + 6;

                                cursorX = nextX + (u32)spacing;
                            }
                        } else {
                            func_801979D8(specialChar, cursorX, y, bankValue & 0xFF);
                            {
                                register u8 *packetArg  = scratch + 0x15C;
                                register u32 selectArg  = SELECTOR(capturedSelector);
                                register u32 mode  = *(u8 *)(scratch + 0x29D);
                                register u8 *palette __asm__("$8");
                                __asm__("" : "=r"(mode) : "0"(mode), "r"(packetArg), "r"(selectArg));
                                palette = D_800F1018;

                                func_800B3FB8(packetArg, palette + mode * 0x14, selectArg);
                            }
                            {
                                u16 glyphWidth = *(u16 *)(scratch + 0x164);
                                s8 spacing = M2C_FIELD(descriptor, s8 *, 9);
                                cursorX += (u32)((s32)glyphWidth + (s32)spacing);
                            }
                        }
                        glyphText = (u8 *)((u32)glyphText + 1U);
                        glyphCount = M2C_FIELD(advancePtr, u8 *, 1);
                        glyphIndex += 1;
                    } while (glyphIndex < glyphCount);
                    advancePtr = (u8 *)((u32)advancePtr + 8U);
                    goto next_record;
                } else {
                    goto finish;
                }
            glyph_digits:

                if (bankValue == 0) {
                    bankValue = 0x4C;
                }
                glyphIndex = 0;
                glyphCount = M2C_FIELD(advancePtr, u8 *, 1);

                if (glyphIndex < glyphCount) {
                    bankValue *= 4;
                    do {
                        digitValue = *glyphText;
                        underscore = 0x5F;
                        __asm__("" : "=r"(digitValue) : "0"(digitValue), "r"(underscore));
                        digitByte = digitValue & 0xFF;
                        if (digitByte == underscore) {
                            {
                                register s32 spacing  = M2C_FIELD(descriptor, s8 *, 9);
                                register u32 nextX ;

                                nextX = cursorX + 8;

                                cursorX = nextX + (u32)spacing;
                            }
                        } else {
                            {
                                register u8 *digitPalette  = D_800FF748;
                                register u32 digitHeight __asm__("$9");
                                digitValue -= 0x30;

                                digitHeight = 9;
                                if ((u32) (digitValue & 0xFF) < 0xAU) {

                                    digitTexture = (u8 *)(bankValue + (u32)digitPalette);
                                    *(u32 *)0x1F80015C = 0;
                                    *(u16 *)0x1F800160 = cursorX;
                                    *(u16 *)0x1F800162 = y;
                                    *(u16 *)0x1F800168 = digitHeight;
                                    {
                                        register u32 firstTexture  = M2C_FIELD(digitTexture, u16 *, 0x7FA6);
                                        register u32 secondTexture;
                                        register u32 textureX ;

                                        *(u16 *)0x1F80016C = firstTexture;
                                        secondTexture = M2C_FIELD(digitTexture, u16 *, 0x7FA4);

                                        textureX = (u32)digitValue << 3;

                                        *(u8 *)0x1F80016A = textureX;
                                        *(u8 *)0x1F80016B = 0x90;
                                        {
                                            register u32 width __asm__("$2");
                                            register u32 height __asm__("$8");
                                            __asm__ volatile ("" : : "r"(secondTexture) : "memory");
                                            width = 8;
                                            height = 16;

                                            *(u16 *)0x1F800164 = width;
                                            *(u16 *)0x1F800166 = height;
                                        }
                                        *(u16 *)0x1F80016E = secondTexture;
                                    }
                                }
                            }
                            {
                                register u8 *packetArg  = scratch + 0x15C;
                                register u32 selectArg  = SELECTOR(capturedSelector);
                                register u32 mode  = *(u8 *)(scratch + 0x29D);
                                register u8 *palette __asm__("$9");
                                __asm__("" : "=r"(mode) : "0"(mode), "r"(packetArg), "r"(selectArg));
                                palette = D_800F1018;

                                func_800B3FB8(packetArg, palette + mode * 0x14, selectArg);
                            }
                            {
                                u16 glyphWidth = *(u16 *)(scratch + 0x164);
                                s8 spacing = M2C_FIELD(descriptor, s8 *, 9);
                                cursorX += (u32)((s32)glyphWidth + (s32)spacing);
                            }
                        }
                        glyphText = (u8 *)((u32)glyphText + 1U);
                        glyphCount = M2C_FIELD(advancePtr, u8 *, 1);
                        glyphIndex += 1;
                    } while (glyphIndex < glyphCount);
                    advancePtr = (u8 *)((u32)advancePtr + 8U);
                    goto next_record;
                } else {
                    goto finish;
                }
            tag8:
                resetAlignment = M2C_FIELD(descriptor, u8 *, 8);
                switch (resetAlignment) {
                case 0:
                case 1:
                default:
                    cursorX = M2C_FIELD(descriptor, s16 *, 2);
                    break;
                case 3: {
                        register u32 textWidth ;
                        register u32 lineWidth __asm__("$8");
                        register s32 origin ;
                        textWidth = M2C_FIELD(descriptor, u16 *, 6);
                        __asm__("" : : "r"(textWidth));
                        lineWidth = (u32)widthCopy;

                        origin = M2C_FIELD(descriptor, s16 *, 2);
                        __asm__("" : : "r"(textWidth), "r"(lineWidth), "r"(origin));
                        cursorX = (u32)origin + (u32)((s32)(textWidth - lineWidth) >> 1);
                        break;
                    }
                case 2: {
                        register u32 textWidth ;
                        register u32 lineWidth __asm__("$9");
                        register s32 origin ;
                        textWidth = M2C_FIELD(descriptor, u16 *, 6);
                        __asm__("" : : "r"(textWidth));
                        lineWidth = (u32)widthCopy;

                        origin = M2C_FIELD(descriptor, s16 *, 2);
                        __asm__("" : : "r"(textWidth), "r"(lineWidth), "r"(origin));
                        cursorX = (u32)origin + (textWidth - lineWidth);
                        break;
                    }
                }
                cursorX += M2C_FIELD(advancePtr, u8 *, 2);
                goto finish;
            tag3: {
                    register s32 xArg __asm__("$6");
                    register u32 nullWord __asm__("$5");
                    register u32 shiftedY;
                    register s32 yArg __asm__("$7");
                    register u32 iconCode;
                    register s32 border __asm__("$8");
                    nullWord = 0;
                    __asm__("" : : "r"(nullWord), "r"(cursorX));
                    xArg = (s16)cursorX;

                    shiftedY = ((u32)y + 2U) << 16;
                    iconCode = M2C_FIELD(advancePtr, u8 *, 2);

                    yArg = (s32)shiftedY >> 16;

                    border = 1;
                    func_80196FE8(iconCode & 0x7F, nullWord, xArg, yArg, 0, (u8)M2C_FIELD(advancePtr, u8 *, 2) >> 7, border, capturedSelector);
                    __asm__ volatile ("" : : "r"(cursorX));
                    goto advance;
                }
            tag4:
                {
                    register s32 xArg __asm__("$6");
                    register s32 yArg __asm__("$7");
                    register u32 nullWord __asm__("$5");
                    register u32 iconCode;
                    register s32 large __asm__("$9");
                    register s32 border __asm__("$8");
                    nullWord = 0;
                    __asm__("" : : "r"(nullWord), "r"(cursorX));
                    xArg = (s16)cursorX;

                    iconCode = M2C_FIELD(advancePtr, u8 *, 2);
                    __asm__("" : : "r"(iconCode));
                    large = 1;
                    __asm__("" : "=r"(large) : "0"(large));
                    yArg = (s16)y;

                    border = 1;
                    func_80196FE8(iconCode & 0x7F, nullWord, xArg, yArg, large, (u8)M2C_FIELD(advancePtr, u8 *, 2) >> 7, border, capturedSelector);
                }
                goto advance;
            tag9:
                bankValue = M2C_FIELD(descriptor, u8 *, 0xC);
                if (bankValue == 0) {
                    bankValue = 0xB2;
                }
                if (M2C_FIELD(advancePtr, u8 *, 2) != 0xFF) {
                    register u32 yPlusOne __asm__("$2") = (u32)y + 1U;
                    register u32 dimension __asm__("$2");

                    *(u16 *)(scratch + 0x162) = yPlusOne;
                    dimension = 0x40;

                    *(u16 *)(scratch + 0x164) = dimension;
                    dimension = 0xE;

                    *(u16 *)(scratch + 0x166) = dimension;
                    {
                        register u32 spriteHeight __asm__("$2");
                        register u32 bankOffset __asm__("$3");
                        register u8 *bankBase __asm__("$9");

                        spriteHeight = 0x19;
                        bankOffset = bankValue * 4;
                        bankBase = D_800FF748;

                        spriteTexture = (u8 *)((u32)bankBase - (0U - bankOffset));

                        *(u32 *)(scratch + 0x15C) = 0;
                        *(u16 *)(scratch + 0x160) = cursorX;
                        *(u16 *)(scratch + 0x168) = spriteHeight;
                    }
                    *(u16 *)(scratch + 0x16C) = (u16) M2C_FIELD(spriteTexture, u16 *, 0x7FA6);
                    *(u16 *)(scratch + 0x16E) = (u16) M2C_FIELD(spriteTexture, u16 *, 0x7FA4);
                    spriteIndex = M2C_FIELD(advancePtr, u8 *, 2);
                    if (spriteIndex < 0x12U) {
                        *(u8 *)(scratch + 0x16A) = 0;
                        spriteRow = M2C_FIELD(advancePtr, u8 *, 2);
                        spriteRowTimes8 = spriteRow * 8;
                    } else {
                        if (spriteIndex < 0x24U) {
                            *(u8 *)(scratch + 0x16A) = 0x40;
                            spriteRow = M2C_FIELD(advancePtr, u8 *, 2) - 0x12;
                        } else {
                            *(u8 *)(scratch + 0x16A) = 0x80;
                            spriteRow = M2C_FIELD(advancePtr, u8 *, 2) - 0x24;
                        }
                        spriteRowTimes8 = spriteRow * 8;
                    }
                    *(u8 *)(scratch + 0x16B) = (spriteRowTimes8 - spriteRow) * 2;
                    {
                        register u8 *packetBase __asm__("$19") = scratch;
                        register u32 mode;
                        register u8 *palette __asm__("$8");
                        __asm__("" : "=r"(packetBase) : "0"(packetBase) : "memory");
                        packet = packetBase + 0x15C;
                        mode = *(u8 *)(scratch + 0x29D);
                        __asm__("" : "=r"(mode) : "0"(mode));
                        drawSelector = SELECTOR(capturedSelector);
                        palette = D_800F1018;

                        paletteEntry = palette + mode * 0x14;
                    }
                    goto draw;
                }
                goto advance;
            tag10: {
                    register u32 tile16 __asm__("$9") = 16;

                    *(u32 *)(scratch + 0x15C) = 0;
                    *(u16 *)(scratch + 0x160) = cursorX;
                    *(u16 *)(scratch + 0x162) = y;
                    *(u16 *)(scratch + 0x166) = tile16;
                    {
                        register u32 textureA  = D_8010770E;
                        register u32 textureB  = D_8010770C;
                        register u32 height;

                        height = 7;

                        *(u16 *)(scratch + 0x168) = height;
                        *(u16 *)(scratch + 0x16C) = textureA;
                        *(u16 *)(scratch + 0x16E) = textureB;
                    }
                    tileCode = M2C_FIELD(advancePtr, u8 *, 2);
                    {
                        register u32 nine __asm__("$8");
                        __asm__("" : "=r"(tileCode) : "0"(tileCode) : "$8");
                        nine = 9;

                        if (tileCode == nine) {
                            *(u8 *)(scratch + 0x16A) = 0x18;
                            *(u16 *)(scratch + 0x164) = tile16;
                        } else {
                            tileU = 8;
                            if (tileCode >= 0xBU) {
                                tileU = 0x48;
                            }
                            *(u8 *)(scratch + 0x16A) = tileU;
                            *(u16 *)(scratch + 0x164) = 0x30U;
                        }
                    }
#if defined(_PSYQ) && defined(__mips__) && defined(__GNUC__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_DIVISION)
                    /* GCC 2.7 scalarizes this initialized product in HI/LO.
                     * The first-word projection is specific to that compiler,
                     * not a portable little-endian union layout. For each
                     * byte code, (code * 0xBA2E8BA3) >> 35 equals code / 11.
                     * The ordinary modulo reference is selected below. */
                    {
                        register u32 code __asm__("$7");
                        union { unsigned long long full; struct { u32 high; } words; } product;
                        register u32 factor;
                        register u32 high __asm__("$9");
                        register u32 quotient __asm__("$3");
                        register u32 remainder;
                        register u32 mode;
                        register u8 *palette __asm__("$8");
                        code = (u32)M2C_FIELD(advancePtr, u8 *, 2);
                        __asm__("" : "=r"(code) : "0"(code));
                        factor = 0xBA2E8BA3U;
                        product.full = (unsigned long long)code * factor;
                        packet = scratch + 0x15C;
                        drawSelector = SELECTOR(capturedSelector);
                        mode = *(u8 *)(scratch + 0x29D);
                        __asm__("" : : "x"(product.full));
                        palette = D_800F1018;
                        paletteEntry = palette + mode * 0x14;

                        high = product.words.high;
                        __asm__("" : : "r"(high));
                        quotient = high >> 3;
                        remainder = code - quotient * 11U;
                        *(u8 *)(scratch + 0x16B) = remainder * 16U;
                    }
#else
                    packet = scratch + 0x15C;
                    drawSelector = SELECTOR(capturedSelector);
                    {
                        register u32 mode  = *(u8 *)(scratch + 0x29D);
                        register u8 *palette ;

                        palette = D_800F1018;

                        paletteEntry = palette + mode * 0x14;
                    }
                    {
                        u32 code = (u32)M2C_FIELD(advancePtr, u8 *, 2);
                        u32 remainder = code % 11U;

                        *(u8 *)(scratch + 0x16B) = remainder * 16U;
                    }
#endif
                    goto draw;
                }
            tag20: {
                    register u32 tileWidth __asm__("$8") = 16;
                    register u32 tileHeight __asm__("$9") = 16;

                    *(u16 *)(scratch + 0x164) = tileWidth;
                    tileWidth = 9;

                    *(u32 *)(scratch + 0x15C) = 0;
                    *(u16 *)(scratch + 0x160) = cursorX;
                    *(u16 *)(scratch + 0x162) = y;
                    *(u16 *)(scratch + 0x166) = tileHeight;
                    *(u16 *)(scratch + 0x168) = tileWidth;
                    tileU20 = (((s32) *(u32 *)(scratch + 0x290) >> ((M2C_FIELD(advancePtr, u8 *, 2) | 224U) ^ 224U)) & 7) * 0x10;
                    *(u8 *)(scratch + 0x16A) = tileU20;
                    if (tileU20 == 0x70) {
                        *(u8 *)(scratch + 0x16A) = 0x60;
                    }
                    packet = scratch + 0x15C;
                    drawSelector = SELECTOR(capturedSelector);
                    tileV = 0x30;

                    goto common_tiles;
                }
            tag21: {
                    register u32 tileWidth __asm__("$8") = 16;
                    register u32 tileHeight __asm__("$9") = 16;

                    *(u16 *)(scratch + 0x164) = tileWidth;
                    tileWidth = 9;

                    *(u32 *)(scratch + 0x15C) = 0;
                    *(u16 *)(scratch + 0x160) = cursorX;
                    *(u16 *)(scratch + 0x162) = y;
                    *(u16 *)(scratch + 0x166) = tileHeight;
                    *(u16 *)(scratch + 0x168) = tileWidth;
                    tileU21 = (((s32) *(u32 *)(scratch + 0x290) >> ((M2C_FIELD(advancePtr, u8 *, 2) | 224U) ^ 224U)) & 7) * 0x10;
                    *(u8 *)(scratch + 0x16A) = tileU21;
                    if (tileU21 == 0x70) {
                        *(u8 *)(scratch + 0x16A) = 0x60;
                    }
                    packet = scratch + 0x15C;
                    drawSelector = SELECTOR(capturedSelector);
                    tileV = 0x50;
                    goto common_tiles;
                }
            common_tiles:
                {
                    register u32 mode  = *(u8 *)(scratch + 0x29D);
                    register u8 *palette __asm__("$9");
                    register u32 offset ;
                    register u32 textureA __asm__("$2");
                    register u32 textureB;
                    __asm__("" : "=r"(mode) : "0"(mode), "r"(tileV));
                    palette = D_800F1018;

                    *(u8 *)(scratch + 0x16B) = tileV;
                    textureA = D_801077E6;
                    __asm__("" : "=r"(textureA) : "0"(textureA), "r"(palette), "r"(mode) : "memory");
                    offset = mode * 0x14;

                    textureB = D_801077E4;
                    paletteEntry = (u8 *)(offset + (u32)palette);
                    *(u16 *)(scratch + 0x16C) = textureA;
                    *(u16 *)(scratch + 0x16E) = textureB;
                }
            draw:
                func_800B3FB8(packet, paletteEntry, drawSelector);

            advance:
                cursorX += M2C_FIELD(advancePtr, u8 *, 0);
                goto finish;
            finish:
                advancePtr = (u8 *)((u32)advancePtr + 8U);
            next_record:
                {
                    register u8 *nextRecord __asm__("$9") = recordCursor;
                    register u32 nextCount __asm__("$8") = recordIndex;
                    register s32 limit __asm__("$9");
                    register s32 condition __asm__("$2");
                    __asm__("" : : "r"(nextRecord), "r"(nextCount));
                    nextRecord = (u8 *)((u32)nextRecord + 8U);
                    recordCursor = nextRecord;
                    limit = recordCount;

                    nextCount += 1;
                    recordIndex = nextCount;
                    condition = (s32)nextCount < limit;
                    if (!condition) break;
                }
            } while (1);
        }
    }
}
