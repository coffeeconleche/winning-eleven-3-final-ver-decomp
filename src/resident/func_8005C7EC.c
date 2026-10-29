#include "common.h"
/* The guarded identities carry initialized addresses, loaded values and real
 * dependencies to gcc272-dos; they emit no instructions. Ordinary builds use
 * the same C operations without scheduling constraints. */
#if defined(_PSYQ) && defined(__mips__) && __GNUC__ == 2 && !defined(WE3_PORTABLE_REFERENCE)
#define KEEP(v) __asm__("" : "=r"(v) : "0"(v), "r"(record))
#define KEEP_FIRST_WITH(v) __asm__("" : "=r"(first) : "0"(first), "r"(v) : "memory")
#define KEEP_PHASE() __asm__("" : "=r"(phase) : "0"(phase), "r"(nine))
#define PHASE_READ(s) (*(u8 *)((u32)(s) + 0x29A))
#else
#define KEEP(v) ((void)0)
#define KEEP_FIRST_WITH(v) ((void)0)
#define KEEP_PHASE() ((void)0)
#define PHASE_READ(s) ((s)[0x29A])
#endif

/* Partial record/scratch views require mapped, initialized, aligned storage.
 * Mode 1 intentionally reads the row index twice; do not collapse that reload.
 * Unsupported modes perform no store. No complete structure layout is claimed. */
void func_8005C7EC(u8 *input) {
    register u8 *record=input;
    register u8 *scratch = (u8 *)0x1F800000;
    register u8 *row;
    register u32 nine;
    register u32 phase;
    register u32 first;

    switch (*(u8 *)0x1F8002E2) {
    case 0:
        if (record[0x39A] == 0) goto tail;
        *(u16 *)(record + 0x3D4) = 0;
        *(u16 *)(record + 0x3D6) = 0;
        return;
    case 2:
    case 3:
        if (record[0x39A] != 0) {
            *(u16 *)(record + 0x3D4) = 0;
            *(u16 *)(record + 0x3D6) = 0;
            return;
        }
        nine=9;
        phase=PHASE_READ(scratch);
        KEEP_PHASE();
        if ((phase & 255) != nine) goto tail;
        *(u16 *)(record + 0x3D6) = *(u16 *)(scratch + 0x23C);
        *(u16 *)(record + 0x3D4) = *(u16 *)(scratch + 0x238);
        return;
tail:
        *(u16 *)(record + 0x3D6) = *(u16 *)(scratch + 0x234);
        *(u16 *)(record + 0x3D4) = *(u16 *)(scratch + 0x230);
        return;
    case 1:
        KEEP(scratch);
        row = scratch + record[0x398] * 8;
        first = *(u16 *)(row + 0x234);
        KEEP_FIRST_WITH(record);
        row = scratch + record[0x398] * 8;
        KEEP_FIRST_WITH(row);
        *(u16 *)(record + 0x3D6) = first;
        *(u16 *)(record + 0x3D4) = *(u16 *)(row + 0x230);
        return;
    case 4:
        *(u16 *)(record + 0x3D4) = 0;
        *(u16 *)(record + 0x3D6) = 0;
        return;
    }
}
