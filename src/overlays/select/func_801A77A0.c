#include "common.h"

/* Byte-aligned view of the copied eight-byte prefix; its meaning is unknown. */
typedef struct { u8 bytes[8]; } Raw8;
extern Raw8 D_8018A260;
extern u8 D_800FF748[];
extern u8 D_8010865E;
extern u16 D_80107AAE;
extern u16 D_8011C904[], D_8011C906[], D_8011C908[], D_8011C90A[];
extern u8 D_8011BE44[];
extern u8 *func_8001D004(u16);
extern void func_800AE7E0(void *, void *);
extern void func_800AE534(s32);
extern void func_80193FB4(u8, u16, u32, u16, u16, u8, u8, u16, u16,
                         u16, u16, u8, u8, u8, u32, u8, u8);

/* Original record meanings and complete external helper types are unknown.
 * The local-pointer, four offset and raw-selector bindings preserve measured
 * register lifetimes and the redundant second selector byte narrowing. */
void func_801A77A0(void) {
    Raw8 local = D_8018A260;
    u8 *packet;
    u8 *base;
    register u8 *localPointer __asm__("$16");
    u32 side;
    u32 index;
    u8 *argument;
    func_80193FB4(11, 0x309D, 0, 0, 0, 25, 240, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    func_80193FB4(12, 0x309E, 0, 0, 0, 25, 242, 4096, 4096, 0, 0, 128, 128, 128, 0, 2, 1);
    packet = func_8001D004(0x309D);
    base = D_800FF748;
    side = *(u8 *)0x1F8002DD;
    localPointer = local.bytes;
    if (D_8010865E == 0) {
        register u32 offset __asm__("$3");
        offset = side * 8;
        packet[4] = (*(u16 *)((u8 *)D_8011C904 + offset) != 0) * 64;
        *(u16 *)local.bytes = D_80107AAE;
        index = *(u16 *)((u8 *)D_8011C906 + offset);
        /* Empty pointer identity retains the first jump-delay argument copy. */
        __asm__("" : "=r"(localPointer) : "0"(localPointer), "r"(index));
        argument = localPointer;
    } else {
        register u32 offset __asm__("$3");
        offset = side * 8;
        packet[4] = (*(u16 *)((u8 *)D_8011C908 + offset) != 0) * 64;
        *(u16 *)local.bytes = D_80107AAE;
        index = *(u16 *)((u8 *)D_8011C90A + offset);
        argument = localPointer;
    }
    {
        u8 *table = D_8011BE44;
        func_800AE7E0(argument, index * 32 + table);
    }
    func_800AE534(0);
    packet = func_8001D004(0x309E);
    {
        register u32 raw __asm__("$2") = *(u8 *)0x1F8002DE;
        side = (u8)raw;
    }
    if (base[0x8F17] == 0) {
        register u32 offset __asm__("$3");
        offset = side * 8;
        packet[4] = (*(u16 *)((u8 *)D_8011C904 + offset) != 0) * 64;
        *(u16 *)local.bytes = *(u16 *)(base + 0x836E);
        index = *(u16 *)((u8 *)D_8011C906 + offset);
        /* Empty inputs retain the second jump-delay stack-address argument;
         * this is scheduling only and emits no instructions. */
        __asm__ volatile("" : : "m"(local), "r"(index));
        argument = local.bytes;
    } else {
        register u32 offset __asm__("$3");
        offset = side * 8;
        packet[4] = (*(u16 *)((u8 *)D_8011C908 + offset) != 0) * 64;
        *(u16 *)local.bytes = *(u16 *)(base + 0x836E);
        index = *(u16 *)((u8 *)D_8011C90A + offset);
        argument = local.bytes;
    }
    {
        u8 *table = D_8011BE44;
        func_800AE7E0(argument, index * 32 + table);
    }
    func_800AE534(0);
}
