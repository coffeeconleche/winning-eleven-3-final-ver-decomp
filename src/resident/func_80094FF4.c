#include "common.h"

extern void func_8009F62C(u32 value);

/* Numeric extern access view only: no storage or linker symbol is defined. */
extern u8 *scratch2F4 __asm__("0x1F8002F4");

/* Partial byte/word access view, not a complete record layout or return API.
 * Record word 0x3A0 requires four-byte alignment. */
void func_80094FF4(u8 *record)
{
    u32 value = record[0x38D];

    *(u8 *)0x1F8002AA = value;
    *(u8 *)0x1F8002A9 = value;
    *(u8 *)0x1F8002A8 = value;
    ((u8 *)0x1F8002CF)[record[0x398]] = 0;
    ((u8 *)0x1F8002CF)[record[0x398] ^ 1] = 1;
    scratch2F4[0x3B1] = 1;
    scratch2F4[0x396] = 3;
    *(u8 *)0x1F8002FC = 1;
    record[0x3B1] = 0;
    *(u32 *)(record + 0x3A0) = 0;
    *(u8 *)0x1F800332 = 0;
    func_8009F62C(0x11);
}
