#include "common.h"

extern u8 *D_801D1AF8;
extern u8 D_8010A5A8, D_80108667, D_80108668, D_8010866A, D_80108669, D_8010866B;
extern u8 D_8010866C[], D_80108AEC[], D_8010A118[], D_8010A298[], D_8010A2C8[];
extern u8 D_8010A2EA[], D_8010A2EC[], D_8010A2F0, D_8010A2E8, D_8010A2E9, D_8010A2F1;
extern void func_800AD648(const void *, void *, u32);

void func_80192174(void) {
    u8 frameSlot[120];
    u8 *buffer = D_801D1AF8;
    u8 *fields;
    /* Retain the twenty transfer calls and their measured buffer offsets. */
    func_800AD648(buffer + 0x101, (void *)0x1F8002E2, 1);
    func_800AD648(buffer + 0x102, (void *)0x1F8002DD, 1);
    fields = &D_8010A5A8;
    func_800AD648(buffer + 0x103, fields, 1);
    func_800AD648(buffer + 0x104, fields + 1, 1);
    func_800AD648(buffer + 0x105, &D_80108667, 1);
    func_800AD648(buffer + 0x106, &D_80108668, 1);
    func_800AD648(buffer + 0x107, &D_8010866A, 1);
    func_800AD648(buffer + 0x108, &D_80108669, 1);
    func_800AD648(buffer + 0x109, &D_8010866B, 1);
    func_800AD648(buffer + 0x10A, D_8010866C, 0x480);
    func_800AD648(buffer + 0x58A, D_80108AEC, 0x162C);
    func_800AD648(buffer + 0x1BB6, D_8010A118, 0x180);
    func_800AD648(buffer + 0x1D36, D_8010A2EA, 2);
    func_800AD648(buffer + 0x1D38, D_8010A2EC, 4);
    func_800AD648(buffer + 0x1D3C, &D_8010A2F0, 1);
    func_800AD648(buffer + 0x1D3D, &D_8010A2E8, 1);
    func_800AD648(buffer + 0x1D3E, &D_8010A2E9, 1);
    func_800AD648(buffer + 0x1D3F, &D_8010A2F1, 1);
    func_800AD648(buffer + 0x1D40, D_8010A298, 0x30);
    func_800AD648(buffer + 0x1D70, D_8010A2C8, 0x20);
    /* Retain the otherwise-unused 120 bytes in the measured 152-byte frame.
     * Their original purpose is unknown; this emits no memory access. */
    __asm__ volatile ("" : "=m"(frameSlot));
}
