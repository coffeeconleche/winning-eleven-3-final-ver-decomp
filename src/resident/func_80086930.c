#include "types.h"

/* Observed 12-byte digit record; the original native type is not established. */
typedef struct DigitPacket {
    u8 unk0[3];
    u8 u;
    u8 unk4[2];
    s16 x;
    u8 unk8[2];
    u8 v;
    u8 unkB;
} DigitPacket;

void func_80086930(u8 mode, DigitPacket *packet, u8 value, u8 side,
                  u8 texture_v, u8 reposition) {
    switch (mode) {
    case 10:
        if (value >= 100) {
            value = 99;
        }
        if (side == 0) {
            if (value >= 10) {
                packet[1].v = texture_v;
                packet[0].u = value / 10 * 8;
                packet[1].u = value % 10 * 8;
                if (reposition != 0) {
                    packet[0].x = -112;
                    packet[1].x = -104;
                }
            } else {
                packet[0].u = value * 8;
                packet[1].v = 91;
                if (reposition != 0) {
                    packet[0].x = -108;
                }
            }
        } else {
            if (value >= 10) {
                packet[0].v = texture_v;
                packet[0].u = value / 10 * 8;
                packet[1].u = value % 10 * 8;
                if (reposition != 0) {
                    packet[0].x = 96;
                    packet[1].x = 104;
                }
            } else {
                packet[0].v = 91;
                packet[1].u = value % 10 * 8;
                if (reposition != 0) {
                    packet[1].x = 100;
                }
            }
        }
        break;
    case 100:
        if (value >= 100) {
            packet->v = texture_v;
            packet->u = value / 100 * 8;
        } else {
            packet->v = 91;
        }
        packet++;
        if (value >= 10) {
            packet->v = texture_v;
            packet->u = (value % 100) / 10 * 8;
            if (value < 100) {
                if (side == 0) {
                    packet->x = -112;
                } else {
                    packet->x = 96;
                }
            } else if (side == 0) {
                packet->x = -116;
            } else {
                packet->x = 92;
            }
        } else {
            packet->v = 91;
        }
        packet++;
        packet->u = value % 10 * 8;
        if ((u8)(value - 10) < 90) {
            if (side == 0) {
                packet->x = -104;
            } else {
                packet->x = 104;
            }
        } else if (side == 0) {
            packet->x = -108;
        } else {
            packet->x = 100;
        }
        break;
    }
}
