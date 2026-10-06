#include "common.h"

/* Matching descriptor/coordinate access views, not recovered complete packet
 * types or helper APIs. Both absolute selector bytes are reread in each bank. */
extern u8 scratchE5 __asm__("0x1F8002E5");
extern u8 scratchE4 __asm__("0x1F8002E4");
extern u8 D_80193848[], D_80193860[];
extern void func_800ADD6C(void *);
extern void func_800ADCE0(void *,s32);
extern void func_800ADCB8(void *,s32);
extern u32 func_800ADAD8(s32,s32,s32,s32);
extern u32 func_800ADB14(s32,s32);
/* Transparent address captures retain the separate observed base reloads.
 * These empty identities emit no instructions and allocate no data. */
static __inline__ u8 *base48(void) {
    register u8 *base __asm__("$8")=D_80193848;
    __asm__("" : "=r"(base) : "0"(base));
    return base;
}
static __inline__ u8 *base60(void) {
    register u8 *base __asm__("$8")=D_80193860;
    __asm__("" : "=r"(base) : "0"(base));
    return base;
}
/* Ordered byte/halfword views retain the mixed-width store chronology;
 * volatility here is a matching access view, not a hardware/MMIO claim.
 * Empty memory inputs below consume actual fields without extra accesses;
 * scoped bindings retain measured address, constant and return lifetimes. */
#define BYTE(p,o) (*(volatile u8*)((p)+(o)))
#define HALF(p,o) (*(volatile s16*)((p)+(o)))
void func_8018CE40(u8 *argument) {
    u8 *volatile input=argument;
    u8 *packet=input;
    u32 color;
    s32 vertexOffset;
    u8 *last;
    register u8 *first __asm__("$22");
    s32 packetOffset;
    s32 again;
    color=128;vertexOffset=0;last=D_80193860;first=D_80193848;
    packetOffset=0;
    /* Eight 160-byte packet banks and 128-byte coordinate banks. Modes zero
     * and one initialize one quad; other values initialize four subquads. */
    do {
        u32 selector=scratchE5;
        u32 mode=scratchE4;
        register u32 triple __asm__("$3")=selector*3;
        mode+=triple;
        switch(mode) {
        case 0: {
            register u32 value __asm__("$8");
            register s32 low __asm__("$2");
            register u8 *second __asm__("$3");
            register u8 *third __asm__("$2");
            func_800ADD6C(packet);
            func_800ADCE0(packet,1);
            func_800ADCB8(packet,1);
            *(s16*)(packet+0x16)=func_800ADAD8(0,2,640,0);
            {
            u32 clut=func_800ADB14(0,504);
            value=31;BYTE(packet,0x14)=value;
            value=255;BYTE(packet,0x1D)=value;
            value=31;BYTE(packet,0x24)=value;
            value=255;
            HALF(packet,0xE)=clut;
            BYTE(packet,0xC)=0;BYTE(packet,0xD)=color;
            BYTE(packet,0x15)=color;BYTE(packet,0x1C)=0;
            BYTE(packet,0x25)=value;
            BYTE(packet,4)=color;BYTE(packet,5)=color;BYTE(packet,6)=color;
            __asm__("" : : "m"(BYTE(packet,6)));
            }
            value=-80;
            low=-352;
            HALF(first,0)=value;
            second=base48()+8;
            second=(u8*)((s32)vertexOffset+(s32)second);
            HALF(first,2)=0;HALF(first,4)=low;
            __asm__("" : : "m"(HALF(first,4)));
            value=80;HALF(second,0)=value;
            {
            u8 *base=base48();
            HALF(second,4)=low;
            third=base+16;
            }
            third=(u8*)((s32)vertexOffset+(s32)third);
            HALF(second,2)=0;
            __asm__("" : : "m"(HALF(second,2)));
            value=-80;HALF(third,0)=value;HALF(third,2)=0;HALF(third,4)=0;
            __asm__("" : : "m"(HALF(third,4)));
            value=80;HALF(last,0)=value;HALF(last,2)=0;*(s16*)(last+4)=0;
            break;
        }
        case 1: {
                register u32 gray __asm__("$2");
                u32 width;
                register s32 low __asm__("$4");
                u8 *base;
                register u8 *vertex __asm__("$2");
                func_800ADD6C(packet);
                func_800ADCE0(packet,1);
                func_800ADCB8(packet,1);
                *(s16*)(packet+0x16)=func_800ADAD8(0,2,640,0);
                HALF(packet,0xE)=func_800ADB14(0,504);
                __asm__("" : : "m"(HALF(packet,0xE)));
                gray=32;width=63;
                BYTE(packet,0xC)=gray;BYTE(packet,0x1C)=gray;
                gray=159;low=-112;
                base=base48();
                BYTE(packet,0x1D)=gray;BYTE(packet,0x25)=gray;
                vertex=base+8;
                vertex=(u8*)((s32)vertexOffset+(s32)vertex);
                BYTE(packet,0x14)=width;BYTE(packet,0x24)=width;
                width=112;
                BYTE(packet,4)=color;BYTE(packet,5)=color;BYTE(packet,6)=color;
                BYTE(packet,0xD)=color;BYTE(packet,0x15)=color;
                HALF(first,0)=low;HALF(first,2)=0;HALF(first,4)=low;
                HALF(vertex,0)=width;HALF(vertex,2)=0;HALF(vertex,4)=low;
                vertex=base+16;
                vertex=(u8*)((s32)vertexOffset+(s32)vertex);
                HALF(vertex,0)=low;HALF(vertex,2)=0;HALF(vertex,4)=width;
                HALF(last,0)=width;HALF(last,2)=0;*(s16*)(last+4)=width;
                break;
            }
            default: {
                s32 n=0;
                s32 offset=packetOffset;
                u8 *current=packet;
                do {
                    u8 *stored;
                    register u32 value __asm__("$8");
                    register s32 rowOffset __asm__("$3");
                    register u8 *vertex __asm__("$2");
                    register s32 low __asm__("$4");
                    func_800ADD6C(current);
                    func_800ADCE0(current,0);
                    func_800ADCB8(current,1);
                    {
                    u32 tpage=func_800ADAD8(0,2,640,0);
                    register u8 *original __asm__("$8")=input;
                    stored=original+offset;
                    HALF(stored,0x16)=tpage;
                    __asm__("" : : "m"(HALF(stored,0x16)));
                    value=80;BYTE(current,4)=value;BYTE(current,5)=value;current[6]=value;
                    }
                    {
                    u32 clut=func_800ADB14(0,504);
                    offset+=40;
                    HALF(stored,0xE)=clut;
                    __asm__("" : : "m"(HALF(stored,0xE)));
                    }
                    value=31;BYTE(current,0x14)=value;
                    value=255;BYTE(current,0x1D)=value;
                    value=31;BYTE(current,0x24)=value;
                    value=255;
                    BYTE(current,0xC)=0;BYTE(current,0xD)=color;BYTE(current,0x15)=color;
                    BYTE(current,0x1C)=0;BYTE(current,0x25)=value;
                    current+=40;
                    rowOffset=n*32;
                    n++;
                    rowOffset=vertexOffset+rowOffset;
                    vertex=base48();
                    vertex=(u8*)((s32)rowOffset+(s32)vertex);
                    value=-64;low=-448;
                    HALF(vertex,0)=value;
                    {
                    u8 *base=base48();
                    HALF(vertex,2)=0;HALF(vertex,4)=low;
                    vertex=base+8;
                    vertex=(u8*)((s32)rowOffset+(s32)vertex);
                    }
                    value=64;HALF(vertex,0)=value;
                    {
                    u8 *base=base48();
                    HALF(vertex,2)=0;HALF(vertex,4)=low;
                    vertex=base+16;
                    vertex=(u8*)((s32)rowOffset+(s32)vertex);
                    }
                    value=-64;HALF(vertex,0)=value;
                    {
                    u8 *base=base60();
                    rowOffset=(s32)rowOffset+(s32)base;
                    }
                    HALF(vertex,2)=0;HALF(vertex,4)=0;
                    __asm__("" : : "m"(HALF(vertex,4)));
                    value=64;
                    HALF((u8*)rowOffset,0)=value;HALF((u8*)rowOffset,2)=0;*(s16*)((u8*)rowOffset+4)=0;
                } while(n<4);
            }
        }
        vertexOffset+=128;
        packet+=160;last+=128;
        {
        register s32 offset __asm__("$8")=packetOffset;
        __asm__("" : : "r"(offset));
        offset+=160;
        packetOffset=offset;
        }
        {
        register u8 *end __asm__("$2")=base60()+0x400;
        again=(s32)last<(s32)end;
        }
        __asm__("" : "=r"(first) : "0"(first), "r"(again));
        first+=128;
    } while(again);
}
