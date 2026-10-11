#include "common.h"

/* Byte-field access view; complete packet layout and original API unknown. */
void func_800ADD30(u8 *packet) {
    packet[3] = 6;
    packet[7] = 0x30;
}
