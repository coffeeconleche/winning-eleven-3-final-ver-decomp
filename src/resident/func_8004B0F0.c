#include "common.h"

/* Existing-storage views, without definitions or new linker symbols. Both
 * pointer names read the same 2F4 word. The qualified view retains measured
 * reload/order treatment at captures 3, 4 and 8, not a hardware/MMIO claim
 * or proof of a historical volatile declaration. */
extern u8 *volatile scratch2F4 __asm__("0x1F8002F4");
extern u8 *plainScratch2F4 __asm__("0x1F8002F4");
extern u32 scratch2B0 __asm__("0x1F8002B0");
extern u8 scratch2CF[] __asm__("0x1F8002CF");
extern u8 scratch2AA __asm__("0x1F8002AA");
extern u8 scratch2AB __asm__("0x1F8002AB");
extern u8 scratch332 __asm__("0x1F800332");
extern u8 scratch2A9 __asm__("0x1F8002A9");
extern u8 scratch2A8 __asm__("0x1F8002A8");
extern u16 scratch2B8 __asm__("0x1F8002B8");
extern u8 scratch2F2 __asm__("0x1F8002F2");
extern u16 scratch0F8 __asm__("0x1F8000F8");
extern u16 scratch0FC __asm__("0x1F8000FC");
extern u16 scratch2B4 __asm__("0x1F8002B4");
extern u16 scratch2B6 __asm__("0x1F8002B6");
extern s32 func_8004B2E0(u8 count);

/* Partial mixed-width argument/field views; layouts and domains are unknown.
 * Incoming words use modulo-2^32 arithmetic; byteValue is stored by its low byte.
 * Four representative full callers ignore the observed F8-or-2 result residue;
 * this void view does not erase it or establish the historical return API.
 * All 60 static call-site neighborhoods in 47 files were audited; 43 other
 * complete caller bodies and indirect callers remain unaudited. */
void func_8004B0F0(u8 *record, u32 byteValue, u32 shiftedWord, u32 scaledWord)
{
    u8 *pointed;
    u32 oldId;
    u32 newId;
    u32 sentinel;

    {
        u8 *first = plainScratch2F4;
        scratch2B0 = 0;
        first[0x3A4] = (u8)byteValue;
    }
    *(u32 *)(plainScratch2F4 + 0x3A0) = shiftedWord << 8;
    *(u32 *)(scratch2F4 + 0xC) = (0u - scaledWord) * 736u;
    *(u16 *)(scratch2F4 + 0x3C8) = 0;

    /* Reload the byte selector after the first indexed store; no binary
     * selector bound or pointer non-aliasing contract is assumed. */
    scratch2CF[record[0x398]] = 0;
    byteValue = 1;
    scratch2CF[record[0x398] ^ 1] = (u8)byteValue;
    /* Capture scratch first, then reread record+38D after publishing oldId. */
    oldId = scratch2AA;
    if (record[0x38D] != oldId) {
        scratch2AB = oldId;
        newId = record[0x38D];
        scratch332 = 0;
        scratch2AA = newId;
    }

    {
        u8 *reset = plainScratch2F4;
        scratch2A9 = 0;
        scratch2A8 = 0;
        reset[0x3B2] = 0;
    }
    plainScratch2F4[0x3B1] = 0;
    *(u16 *)(plainScratch2F4 + 0x3BC) = 0;
    pointed = scratch2F4;
    sentinel = 0x7FFF;
    scratch2B8 = sentinel;
    scratch2F2 = 0;
    /* Read the signed halfword only when the preceding word is zero. */
    if (*(u32 *)(pointed + 0xC) != 0 || *(s16 *)(pointed + 4) < -40) {
        u32 first;
        u32 second;

        pointed[0x396] = (u8)byteValue;
        func_8004B2E0(255);
        /* Both unsigned captures precede either halfword store. */
        first = scratch0F8;
        second = scratch0FC;
        scratch2B4 = first;
        scratch2B6 = second;
        return;
    }
    scratch2B4 = sentinel;
    pointed[0x396] = 2;
}
