#include "common.h"

extern u8 D_800FF748[];
extern u8 D_8010865D;
extern u8 D_8010865E[];
extern u8 D_801D1FE4;
extern u8 D_801D1FE5[];
extern u8 D_801D1FE6[];

void func_801A82F8(void)
{
    /* Retain the base, parallel byte offset and advancing table pointer in
     * their measured registers; removing these bindings changes allocation. */
    register u8 *base __asm__("$7");
    u8 *scratch;
    register u8 *entry __asm__("$5");
    /* The original reserves 32 bytes without accessing them or saving any
     * registers. Retain that measured frame; its original purpose is unknown. */
    u8 frameSlot[32];
    register s32 offset __asm__("$6");
    u8 selector;
    u32 other;

    __asm__ volatile("" : "=m"(frameSlot));
    D_8010865E[D_8010865D] = 0;
    other = D_8010865D;
    /* The selector is reread after the first possibly aliasing byte store.
     * Keep that read ahead of the base setup, which fills its load delay. */
    __asm__ volatile("" : : : "memory");
    base = D_800FF748;
    D_8010865E[other ^ 1] = 0;
    scratch = (u8 *)0x1F800000;
    if (D_801D1FE4 != 255) {
      /* Consume the known constants before the pointer/index setup. This
       * preserves the original loop-preheader scheduling and lets GCC reuse
       * both constants for its generated switch and address arithmetic. */
      register s32 three __asm__("$10") = 3;
      register u32 fieldOffset __asm__("$9") = 0x8F16;
      __asm__("" : : "r"(three), "r"(fieldOffset));
      entry = &D_801D1FE4;
      offset = 0;
      /* Three-byte entries end at a first byte of 255; no bound is invented. */
      do {
        selector = base[0x8F15];
        if (((u8 *)((u32)scratch + (u32)(u8)selector))[0x2DD] == *entry &&
            ((u8 *)((u32)scratch + (u32)(selector ^ 1)))[0x2DD] == D_801D1FE5[offset]) {
            /* Stop at the first matching pair even for unsupported modes. */
            switch ((s32)D_801D1FE6[offset]) {
            case 3:
                ((u8 *)((u32)base + (u32)(u8)selector))[0x8F16] = 0;
                goto otherThree;
            case 2:
                ((u8 *)((u32)base + (u32)(u8)selector))[0x8F16] = 3;
                ((u8 *)((u32)base + (u32)(base[0x8F15] ^ 1)))[0x8F16] = 0;
                break;
            case 1:
                ((u8 *)((u32)base + (u32)(u8)selector))[0x8F16] = 3;
            otherThree:
                ((u8 *)((u32)base + (u32)(base[0x8F15] ^ 1)))[0x8F16] = 3;
                break;
            }
            break;
        }
        entry += 3;
        offset += 3;
      } while (*entry != 255);
    }
    {
    /* Final equality handling is independent of whether a table pair matched.
     * Each byte store retains the later selector reread in the original. */
    u8 lastSelector = base[0x8F15];
    if (((u8 *)((u32)scratch + (u32)(u8)lastSelector))[0x2DD] == ((u8 *)((u32)scratch + (u32)(lastSelector ^ 1)))[0x2DD]) {
        /* Keep the short-lived computed address distinct from the value three. */
        register u8 *otherAddress __asm__("$2");
        ((u8 *)((u32)base + (u32)(u8)lastSelector))[0x8F16] = 0;
        otherAddress = (u8 *)((u32)base + (u32)(base[0x8F15] ^ 1));
        otherAddress[0x8F16] = 3;
    }
    }
}
