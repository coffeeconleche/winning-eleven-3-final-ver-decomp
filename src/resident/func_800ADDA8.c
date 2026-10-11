#include "common.h"

/* Byte-field access view; complete packet layout and original API unknown. */
void func_800ADDA8(u8 *packet) {
    packet[3] = 3;
    packet[7] = 0x74;
}
