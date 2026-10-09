#include "common.h"

extern u8 D_800F1018[];
/* Scalar address views allocate no data. Only the observed access widths are
 * established; the complete scratch descriptor and entry types are unknown. */
extern volatile u8 scratchIndex __asm__("0x1F80029D");
extern u32 scratchWord __asm__("0x1F800180");
extern u16 scratch4 __asm__("0x1F800184"), scratch6 __asm__("0x1F800186");
extern u16 scratch8 __asm__("0x1F800188"), scratch10 __asm__("0x1F80018A");
extern u8 scratch12 __asm__("0x1F80018C");
extern u8 scratch13 __asm__("0x1F80018D"), scratch14 __asm__("0x1F80018E");
/* Call-site view only; a complete original helper prototype is not claimed. */
extern void func_800B3498(void *, void *, s32);

/* Submit the top, right, left and bottom edges through the same descriptor.
 * Coordinates wrap as words before halfword stores; colors and selector use
 * the low argument bytes. Each submission rereads the scratch entry index. */
void func_8019659C(s32 argWord, s32 argX, s32 argY, s32 width, s32 argHeight,
                   u32 argByte0, u32 argByte1, u32 argByte2, u32 argSelector) {
    /* Thirteen genuine register bindings and six empty identities retain the
     * measured captures and scheduling, without instructions or clobbers.
     * The 64-byte frame is natural; no unused reservation is introduced. */
    register s32 height __asm__("$23");
    register s32 word __asm__("$20");
    register s32 x __asm__("$16");
    register s32 y __asm__("$17");
    s32 right;
    register u32 byte0 __asm__("$21");
    register u32 byte1 __asm__("$22");
    register u32 rawByte2 __asm__("$3");
    register u32 selector __asm__("$19");
    register s32 top __asm__("$18");
    u32 mode;
    volatile u8 byte2;
    register u8 *rows __asm__("$3");
    register void *packet __asm__("$4");
    register u32 byte2Word __asm__("$3");
    register u32 firstEntry __asm__("$5");
    s32 callSelector;
    height = argHeight;
    word = argWord;
    x = argX;
    y = argY;
    right = (s32)((u32)x + (u32)width);
    byte0 = (u8)argByte0;
    packet = (void *)0x1F800180;
    /* These three low-byte argument views retain the observed load order.
     * Volatility is a local matching aid, not an MMIO or original-type claim. */
    byte1 = *(volatile u8 *)&argByte1;
    rawByte2 = *(volatile u8 *)&argByte2;
    selector = *(volatile u8 *)&argSelector;
    mode = scratchIndex;
    __asm__ ("" : "=r"(word), "=r"(x), "=r"(right)
                 : "0"(word), "1"(x), "2"(right));
    __asm__ ("" : "=r"(selector) : "0"(selector));
    top = y;
    scratch4 = x;
    scratch6 = top;
    scratch8 = right;
    scratch10 = top;
    scratchWord = word;
    firstEntry = mode * 20;
    /* The actual color-byte spill and reloads across all four calls remain;
     * this local access view is not an artificial stack-frame reservation. */
    byte2 = rawByte2;
    rows = D_800F1018;
    firstEntry = firstEntry + (u32)rows;
    selector = (u8)selector;
    byte2Word = byte2;
    scratch12 = byte0;
    scratch13 = byte1;
    scratch14 = byte2Word;
    __asm__ volatile ("" : "=r"(selector) : "0"(selector));
    func_800B3498(packet, (void *)firstEntry, selector);

    y = (s32)((u32)y + (u32)height);
    packet = (void *)0x1F800180;
    __asm__ ("" : "=r"(packet) : "0"(packet));
    mode = scratchIndex;
    byte2Word = byte2;
    callSelector = selector;
    scratch4 = right;
    scratch6 = top;
    scratch8 = right;
    scratch10 = y;
    scratchWord = word;
    scratch12 = byte0;
    scratch13 = byte1;
    firstEntry = mode * 20;
    scratch14 = byte2Word;
    rows = D_800F1018;
    func_800B3498(packet, (void *)(firstEntry + (u32)rows), callSelector);

    packet = (void *)0x1F800180;
    __asm__ ("" : "=r"(packet) : "0"(packet));
    mode = scratchIndex;
    byte2Word = byte2;
    callSelector = selector;
    scratch4 = x;
    scratch6 = top;
    scratch8 = x;
    scratch10 = y;
    scratchWord = word;
    scratch12 = byte0;
    scratch13 = byte1;
    firstEntry = mode * 20;
    scratch14 = byte2Word;
    rows = D_800F1018;
    func_800B3498(packet, (void *)(firstEntry + (u32)rows), callSelector);

    packet = (void *)0x1F800180;
    __asm__ ("" : "=r"(packet) : "0"(packet));
    mode = scratchIndex;
    byte2Word = byte2;
    callSelector = selector;
    scratch4 = x;
    scratch6 = y;
    scratch8 = right;
    scratch10 = y;
    scratchWord = word;
    scratch12 = byte0;
    scratch13 = byte1;
    firstEntry = mode * 20;
    scratch14 = byte2Word;
    rows = D_800F1018;
    func_800B3498(packet, (void *)(firstEntry + (u32)rows), callSelector);
}
