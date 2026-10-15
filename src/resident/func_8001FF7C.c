#include "common.h"

/* Partial packet/coordinate access views; complete original types are unknown. */
typedef struct {
    u32 tag;
    u8 r, g, b, code;
    s16 x0, y0;
    u8 u0, v0;
    u16 clut;
    s16 x1, y1;
    u8 u1, v1;
    u16 tpage;
    s16 x2, y2;
    u8 u2, v2;
    u16 pad2;
    s16 x3, y3;
    u8 u3, v3;
    u16 pad3;
} QuadPacket;
typedef struct { QuadPacket quad[3]; } PacketAccess;
typedef struct { s16 x, y, z, pad; } Coordinate;
typedef struct {
    u8 opaque0[0x7424];
    Coordinate vertices[4];
} WorldAccess;

extern s32 func_800ADAD8(s32, s32, s32, s32);
extern u32 func_800ADB14(s32, u32);
extern void func_800ADCB8(u8 *, u32);
extern void func_800ADCE0(u8 *, s32);
extern void func_800ADD6C(void *);
extern u8 D_800FF748[];

/* Matching-only register bindings and empty value captures retain measured
 * allocation/scheduling. Captures consume actual constants, return values and
 * UV values subsequently used by C; they emit no instructions, allocate no
 * storage, and make no volatile-memory/MMIO claim. The signed bank/offset
 * counters are real loop state; their stack spills arise from register pressure
 * and the measured -fno-strength-reduce profile, not artificial frame padding. */
void func_8001FF7C(u8 *argument) {
    register u8 *buffer __asm__("$22") = argument;
    s32 bankIndex;
    s32 packetOffset;
    s32 fieldOffset;
    u8 *world;
    s32 mode;
    s32 vertexOffset;
    s32 quadIndex;
    s32 quadFieldOffset;
    u8 *fieldPacket;
    u8 *modeOnePacket;
    u8 *modeZeroPacket;
    u8 *secondPacket;
    u8 *vertices;
    u8 *descriptor;
    u8 *packet;
    u8 *bankPackets;
    s32 color;

    func_800ADD6C(buffer);
    func_800ADCE0(buffer, 1);
    ((PacketAccess *)buffer)->quad[0].tpage = func_800ADAD8(0, 2, 0x280, 0);
    ((PacketAccess *)buffer)->quad[0].clut = func_800ADB14(0, 0x1F8);
    func_800ADCB8(buffer, 1);
    secondPacket = buffer + 0x28;
    ((PacketAccess *)buffer)->quad[0].u0 = 32;
    ((PacketAccess *)buffer)->quad[0].v0 = 128;
    ((PacketAccess *)buffer)->quad[0].u1 = 63;
    ((PacketAccess *)buffer)->quad[0].v1 = 128;
    ((PacketAccess *)buffer)->quad[0].u2 = 32;
    ((PacketAccess *)buffer)->quad[0].v2 = 159;
    ((PacketAccess *)buffer)->quad[0].u3 = 63;
    ((PacketAccess *)buffer)->quad[0].v3 = 159;
    ((PacketAccess *)buffer)->quad[0].r = 128;
    ((PacketAccess *)buffer)->quad[0].g = 128;
    ((PacketAccess *)buffer)->quad[0].b = 128;
    *(s16 *)0x1F800248 = -0x30;
    *(s16 *)0x1F80024A = 0;
    *(s16 *)0x1F80024C = -0x30;
    *(s16 *)0x1F800250 = 0x30;
    *(s16 *)0x1F800252 = 0;
    *(s16 *)0x1F800254 = -0x30;
    *(s16 *)0x1F800258 = -0x30;
    *(s16 *)0x1F80025A = 0;
    *(s16 *)0x1F80025C = 0x30;
    *(s16 *)0x1F800260 = 0x30;
    *(s16 *)0x1F800262 = 0;
    *(s16 *)0x1F800264 = 0x30;
    func_800ADD6C(secondPacket);
    func_800ADCE0(secondPacket, 1);
    ((PacketAccess *)buffer)->quad[1].tpage = func_800ADAD8(0, 2, 0x280, 0);
    ((PacketAccess *)buffer)->quad[1].clut = func_800ADB14(0x40, 0x1F8);
    func_800ADCB8(secondPacket, 0);
    color = 128;
    world = D_800FF748;
    bankPackets = buffer;
    bankIndex = 0;
    packetOffset = 0x50;
    fieldOffset = 0;
    ((PacketAccess *)buffer)->quad[1].v0 = 0xA0;
    ((PacketAccess *)buffer)->quad[1].v1 = 0xA0;
    ((PacketAccess *)buffer)->quad[1].v2 = 0xBF;
    ((PacketAccess *)buffer)->quad[1].v3 = 0xBF;
    ((PacketAccess *)buffer)->quad[1].u0 = 0x20;
    ((PacketAccess *)buffer)->quad[1].u1 = 0x3F;
    ((PacketAccess *)buffer)->quad[1].u2 = 0x20;
    ((PacketAccess *)buffer)->quad[1].u3 = 0x3F;
    ((PacketAccess *)buffer)->quad[1].r = 0x80;
    ((PacketAccess *)buffer)->quad[1].g = 0x80;
    ((PacketAccess *)buffer)->quad[1].b = 0x80;
    *(s16 *)0x1F800268 = -0x40;
    *(s16 *)0x1F80026A = 0;
    *(s16 *)0x1F80026C = -0x40;
    *(s16 *)0x1F800270 = 0x40;
    *(s16 *)0x1F800272 = 0;
    *(s16 *)0x1F800274 = -0x40;
    *(s16 *)0x1F800278 = -0x40;
    *(s16 *)0x1F80027A = 0;
    *(s16 *)0x1F80027C = 0x40;
    *(s16 *)0x1F800280 = 0x40;
    *(s16 *)0x1F800282 = 0;
    *(s16 *)0x1F800284 = 0x40;
    *(s8 *)0x1F8000F6 = 0;
    do {
        mode = *(u8 *)0x1F8002E4 + (*(u8 *)0x1F8002E5 * 3);
        switch (mode) {
        case 0: {
            u8 maxV = 255;
            s32 value;
            register s32 left __asm__("$4");
            register s32 right __asm__("$3");

            modeZeroPacket = buffer + packetOffset;
            func_800ADD6C(modeZeroPacket);
            func_800ADCE0(modeZeroPacket, 1);
            func_800ADCB8(modeZeroPacket, 1);
            ((PacketAccess *)bankPackets)->quad[2].tpage = func_800ADAD8(0, 2, 0x280, 0);
            value = func_800ADB14(0, 0x1F8);
            ((PacketAccess *)bankPackets)->quad[2].u1 = 0x1F;
            ((PacketAccess *)bankPackets)->quad[2].v2 = maxV;
            ((PacketAccess *)bankPackets)->quad[2].u3 = 0x1F;
            __asm__ volatile("" : "=r"(value) : "0"(value), "r"(maxV));
            left = -96;
            ((PacketAccess *)bankPackets)->quad[2].clut = value;
            value = -352;
            right = 96;
            ((PacketAccess *)bankPackets)->quad[2].u0 = 0;
            ((PacketAccess *)bankPackets)->quad[2].v0 = color;
            ((PacketAccess *)bankPackets)->quad[2].v1 = color;
            ((PacketAccess *)bankPackets)->quad[2].u2 = 0;
            ((PacketAccess *)bankPackets)->quad[2].v3 = maxV;
            ((PacketAccess *)bankPackets)->quad[2].r = color;
            ((PacketAccess *)bankPackets)->quad[2].g = color;
            ((PacketAccess *)bankPackets)->quad[2].b = color;
            ((WorldAccess *)world)->vertices[2].z = 0x20;
            ((WorldAccess *)world)->vertices[0].x = left;
            ((WorldAccess *)world)->vertices[0].y = 0;
            ((WorldAccess *)world)->vertices[0].z = value;
            ((WorldAccess *)world)->vertices[1].x = right;
            ((WorldAccess *)world)->vertices[1].y = 0;
            ((WorldAccess *)world)->vertices[1].z = value;
            ((WorldAccess *)world)->vertices[2].x = left;
            ((WorldAccess *)world)->vertices[2].y = 0;
            ((WorldAccess *)world)->vertices[3].x = right;
            ((WorldAccess *)world)->vertices[3].y = 0;
            ((WorldAccess *)world)->vertices[3].z = 0x20;
            break;
        }
        case 1:

            modeOnePacket = buffer + packetOffset;
            func_800ADD6C(modeOnePacket);
            func_800ADCE0(modeOnePacket, 1);
            func_800ADCB8(modeOnePacket, 1);
            ((PacketAccess *)bankPackets)->quad[2].tpage = func_800ADAD8(0, 2, 0x280, 0);
            ((PacketAccess *)bankPackets)->quad[2].clut = func_800ADB14(0, 0x1F8);
            ((PacketAccess *)bankPackets)->quad[2].r = color;
            ((PacketAccess *)bankPackets)->quad[2].g = color;
            ((PacketAccess *)bankPackets)->quad[2].b = color;
            ((PacketAccess *)bankPackets)->quad[2].u0 = 32;
            ((PacketAccess *)bankPackets)->quad[2].v0 = color;
            ((PacketAccess *)bankPackets)->quad[2].u1 = 63;
            ((PacketAccess *)bankPackets)->quad[2].v1 = color;
            ((PacketAccess *)bankPackets)->quad[2].u2 = 32;
            ((PacketAccess *)bankPackets)->quad[2].v2 = 159;
            ((PacketAccess *)bankPackets)->quad[2].u3 = 63;
            ((PacketAccess *)bankPackets)->quad[2].v3 = 159;
            ((WorldAccess *)world)->vertices[0].x = -0x70;
            ((WorldAccess *)world)->vertices[0].y = 0;
            ((WorldAccess *)world)->vertices[0].z = -0x70;
            ((WorldAccess *)world)->vertices[1].x = 0x70;
            ((WorldAccess *)world)->vertices[1].y = 0;
            ((WorldAccess *)world)->vertices[1].z = -0x70;
            ((WorldAccess *)world)->vertices[2].x = -0x70;
            ((WorldAccess *)world)->vertices[2].y = 0;
            ((WorldAccess *)world)->vertices[2].z = 0x70;
            ((WorldAccess *)world)->vertices[3].x = 0x70;
            ((WorldAccess *)world)->vertices[3].y = 0;
            ((WorldAccess *)world)->vertices[3].z = 0x70;
            break;
        default:
            quadIndex = 0;

            descriptor = bankPackets;
            quadFieldOffset = fieldOffset;
            packet = buffer + packetOffset;
            do {
                func_800ADD6C(packet);
                func_800ADCE0(packet, 0);
                func_800ADCB8(packet, 1);
                {
                    u32 value;
                    s32 clutFirst;
                    u32 clutSecond;
                    value = func_800ADAD8(0, 2, 0x280, 0);
                    clutFirst = 0; clutSecond = 504;
                    fieldPacket = buffer + quadFieldOffset;
                    ((PacketAccess *)fieldPacket)->quad[2].tpage = value;
                    value = 80;
                    ((PacketAccess *)descriptor)->quad[2].r = value;
                    ((PacketAccess *)descriptor)->quad[2].g = value;
                    ((PacketAccess *)descriptor)->quad[2].b = value;
                    ((PacketAccess *)fieldPacket)->quad[2].clut = func_800ADB14(clutFirst, clutSecond);
                }
                ((PacketAccess *)descriptor)->quad[2].u1 = 0x1F;
                ((PacketAccess *)descriptor)->quad[2].v2 = 0xFF;
                ((PacketAccess *)descriptor)->quad[2].u3 = 0x1F;
                ((PacketAccess *)descriptor)->quad[2].u0 = 0;
                ((PacketAccess *)descriptor)->quad[2].v0 = color;
                ((PacketAccess *)descriptor)->quad[2].v1 = color;
                ((PacketAccess *)descriptor)->quad[2].u2 = 0;
                ((PacketAccess *)descriptor)->quad[2].v3 = 0xFF;
                descriptor += 0x28;
                quadFieldOffset += 0x28;
                vertexOffset = quadIndex << 5;
                quadIndex += 1;
                vertices = (u8 *)((s32)vertexOffset + (s32)world);
                {
                    register s32 z __asm__("$3");
                    s32 high;
                    ((WorldAccess *)vertices)->vertices[0].x = -64;
                    ((WorldAccess *)vertices)->vertices[0].y = 0;
                    __asm__ volatile("" : "=r"(z), "=r"(high) : "0"(-448), "1"(64));
                    ((WorldAccess *)vertices)->vertices[0].z = z;
                    ((WorldAccess *)vertices)->vertices[1].x = high;
                    ((WorldAccess *)vertices)->vertices[1].y = 0;
                    ((WorldAccess *)vertices)->vertices[1].z = z;
                    ((WorldAccess *)vertices)->vertices[2].x = -64;
                    ((WorldAccess *)vertices)->vertices[2].y = 0;
                    ((WorldAccess *)vertices)->vertices[2].z = 0;
                    ((WorldAccess *)vertices)->vertices[3].x = high;
                    ((WorldAccess *)vertices)->vertices[3].y = 0;
                    ((WorldAccess *)vertices)->vertices[3].z = 0;
                }
                packet += 0x28;
            } while (quadIndex < 4);
            break;
        }
        packetOffset += 0xA0;
        world += 0x80;
        fieldOffset += 0xA0;
        bankPackets += 0xA0;
    } while (++bankIndex < 0x17);
}

