#include "common.h"

typedef struct {
    u8 bytes[8];
} Data8;

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

extern Data8 D_80188FD8;
extern s32 D_801DA05C;
extern u8 D_800FF748[];
extern StateEntry D_801D8F90[];
extern RosterEntry D_801D92A0[];

extern void func_800AE6B8(Data8 *, s32, s32, s32);
extern void func_800AE534(s32);
extern void func_8004FC54(s32);
extern void func_8001DF74(s32, s32);

s32 func_8018F188(u8 mode) {
    Data8 data;
    u8 *base;
    StateEntry *state;
    RosterEntry *roster;
    s32 i;

    data = D_80188FD8;
    switch (D_801DA05C++) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        goto zero;
    case 10:
        func_800AE6B8(&data, 0, 0, 0);
        func_800AE534(0);
        if (mode != 0) {
            func_8001DF74(0x180, 0x1E0);
        } else {
            func_8001DF74(0x180, 0xF0);
        }
        return 1;
    case 0: {
        /* Retain the original descending-loop counter and address registers. */
        register s32 first_count asm("$3");
        register u32 first_entry asm("$2");
        func_800AE6B8(&data, 0, 0, 0);
        func_800AE534(0);
        func_8004FC54(0);
        first_count = 57;
        /* Initialize the counter before loading the shared table base. */
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
        goto zero;
    }
    }
    /* Outside stages 0..10, the original selects no explicit return value. */
    goto done;
zero:
    /* Keep the shared zero-result block after the final flag stores. */
    __asm__ volatile ("");
    return 0;
done:
    ;
}
