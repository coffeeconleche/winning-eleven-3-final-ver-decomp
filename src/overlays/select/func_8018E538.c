#include "common.h"

typedef struct {
    u8 padding[16];
    u8 state;
    u8 trailing[7];
} StateEntry;

typedef struct {
    u8 padding[3];
    u8 state;
    u8 trailing[24];
} RosterEntry;

extern u8 D_800FF748[];
extern StateEntry D_801D8F90[];
extern RosterEntry D_801D92A0[];

void func_8018E538(void) {
    u8 *base;
    /* Preserve the first loop's counter/cursor registers and setup order. */
    register s32 first_count asm("$3");
    register u32 first_entry asm("$2");
    StateEntry *state;
    RosterEntry *roster;
    s32 i;

    first_count = 57;
    __asm__ volatile ("" : "=r"(first_count) : "0"(first_count));
    base = D_800FF748;
    first_entry = (u32)(base + 57 * 40);
    do {
        ((u8 *)first_entry)[0x5DC4] = 0;
        first_count--;
        first_entry -= 40;
    } while (first_count >= 0);
    state = D_801D8F90;
    for (i = 31; i >= 0; i--) {
        state->state = 0;
        state++;
    }
    roster = D_801D92A0;
    for (i = 19; i >= 0; i--) {
        roster->state = 0;
        roster++;
    }
    base[0xAC21] = 0;
    base[0xAC20] = 0;
    *(u8 *)0x1F8002A2 = 0;
}
