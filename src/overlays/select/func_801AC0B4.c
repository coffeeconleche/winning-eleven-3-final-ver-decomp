#include "common.h"

/* Local access views, not claims about the complete original record types.
 * The descriptor declarations below are measured word-wide caller ABI views;
 * the existing callees perform their observed byte/halfword narrowing. */
extern u8 D_800FF748[],D_800C8568[];
extern u8 D_801D8FA0[],D_801D86BC[],D_801D8690[];
extern u8 D_801D92DB,D_801D92A3,D_801D92BF,D_801D9030;
extern s16 D_801D8D78,D_801D8D7A,D_801D8D7C,D_801D8D7E;
extern u8 D_801D8D80,D_801D8D81,D_801D8D82,D_801D8D83,D_801D8D84,D_801D8D85;
extern u8 D_801D8FE5,D_801D8FE6,D_801D8FE7,D_801D8FFD,D_801D8FFE,D_801D8FFF;
extern u8 D_801D2718[],D_801D26DC[],D_801D2704[],D_801D2710[],D_801D2714[];
extern u8 *D_801D1E78[];
extern void func_800AB620(u32);
extern void func_801940EC(s32,u32,void*,s32,s32,s32);
extern void func_801942E0(s32,u8*,s32,s32,s32,s32,s32,s32,s32,s32,s32,s32);
extern u8 *func_801A9168(u8*,u8,u8,s32);
extern u8 *func_801A92A4(u8*,s32);

/* Preserve each mapping/record reread after possibly aliasing buffer writes
 * and descriptor callbacks. No table-index or string-capacity guards are added. */
typedef struct {u8 pad[0xAB80];u8 map;} Map;
typedef struct {u8 pad[0x8F24];u8 flags,index,pad1,group;} Row;
typedef struct {u8 pad[0x93A4];u8 byte0,byte1;u16 half2;u8 byte4,byte5;} Stats;
#define ROW(b,m) ({ u32 rowOffset=(m)*36; \
    (Row*)((b)+rowOffset); \
    })
#define mappedFlags(b,t) (ROW((b),((Map*)((b)+(u8)(t)))->map)->flags)
#define mappedIndex(b,m) (ROW((b),*(m))->index)
#define STATS2(m,v) ({ u32 index2=*(m); \
    register u32 offset2 __asm__("$2")=index2*36; \
    index2=((Row*)(base+offset2))->index; \
    offset2=index2*132; \
    offset2=(v)+offset2; \
    (Stats*)(base+offset2); \
    })
#define STATS3(m,v) ({ u32 index3=*(m); \
    register u32 offset3 __asm__("$3")=index3*36; \
    index3=((Row*)(base+offset3))->index; \
    offset3=index3*132; \
    offset3=(v)+offset3; \
    (Stats*)(base+offset3); \
    })

/* A negative command clears seven descriptor-enable bytes and three layer
 * flags, then submits request 0x529. Otherwise build layered descriptors and
 * the observed control/name/statistics byte streams.
 * Scoped bindings and empty captures retain actual argument/offset lifetimes.
 * Volatile empty captures preserve late constructor ordering; they add no
 * memory accesses. The 88-byte frame is natural, with no reserved locals. */
void func_801AC0B4(s32 command,u32 teamArg,u32 variantArg) {
    u32 team=teamArg;
    u32 variant=variantArg;
    u8 *base=D_800FF748;

    if(command<0) {
        s32 off=144;
        do {D_801D8FA0[off]=0;off-=24;}while(off>=0);
        D_801D92DB=0;D_801D92A3=0;D_801D92BF=0;
        func_800AB620(0x529);
    } else {
        register u32 flags __asm__("$2");
        u8 *packet;
        register s32 two __asm__("$18");
        register s32 one __asm__("$16");
        D_801D8D78=-100;D_801D8D7A=-64;D_801D8D7C=200;D_801D8D7E=122;
        D_801D8D80=192;D_801D8D81=192;D_801D8D82=192;

        {
        u32 mapped=((Map*)((u32)(u8)team+(u32)base))->map;
        u32 offset=mapped*36;

        flags=((Row*)(offset+(u32)base))->flags&192;
        }
        if(flags==64) {D_801D8D83=160;D_801D8D84=160;D_801D8D85=0;}
        else {D_801D8D84=128;D_801D8D83=0;D_801D8D85=255;}
        func_801940EC(2,0x60000000,&D_801D8D78,1,2,1);
        D_801D8D7E=29;
        flags=mappedFlags(base,team)&192;
        if(flags==64) {D_801D8D80=128;D_801D8D81=128;D_801D8D82=0;}
        else {D_801D8D81=96;D_801D8D80=0;D_801D8D82=160;}
        {
        register s32 layer __asm__("$4")=0;
        register u32 word __asm__("$5")=0x70000000;
        register u8 *arg __asm__("$6");
        register s32 mode __asm__("$7");
        packet=(u8*)&D_801D8D78;
        arg=packet;

        mode=1;
        __asm__("" : : "r"(layer), "r"(word), "r"(arg), "r"(mode));
        two=2;one=1;
        func_801940EC(layer,word,arg,mode,two,one);
        }
        *(s16*)packet=-100;D_801D8D7A=39;D_801D8D7C=200;D_801D8D7E=19;
        func_801940EC(1,0x70000000,packet,1,two,one);
        func_801942E0(5,D_801D2718,-70,40,140,3,0,0,0,one,one,one);
        {
        register s32 left __asm__("$4")=44;
        u8 *clear=D_801D86BC;
        D_801D9030=0;
        do {*clear=0;left--;clear--;}while(left>=0);
        }
        {
        u8 *cursor=D_801D8690;
        u8 *map;
        u32 space;
        u32 index;
        u32 c;
        u8 *name;
        {
        register u32 header __asm__("$2")=31;

        map=base+(u8)team;
        *cursor=header;

        }
        {
        register u32 mapOffset __asm__("$2")=0xAB80;

        map+=mapOffset;
        }

        cursor++;
        c=mappedIndex(base,map);
        space=32;
        *cursor=c;cursor++;*cursor=space;
        {
        u32 f=ROW(base,*map)->flags;
        cursor=func_801A9168(cursor+1,4,f&192,(f&63)+1);

        }
        *cursor=space;cursor++;*cursor=11;cursor++;*cursor=255;cursor++;*cursor=9;cursor++;*cursor=60;
        index=mappedIndex(base,map);

        cursor++;
        if(index==35) {*cursor=29;cursor++;*cursor=variant;cursor++;}
        else {
            s32 n;
            name=D_800C8568+index*176+(u8)variant*8;
            n=1;
name_copy:
                c=*name++;*cursor=c;cursor++;
                if(c==0)goto name_done;
                if(n++<8)goto name_copy;
name_done:
            cursor--;
        }
        *cursor=11;cursor++;*cursor=15;cursor++;*cursor=9;cursor++;*cursor=60;cursor++;*cursor=26;cursor++;*cursor=4;
        c=mappedIndex(base,(u8*)&((Map*)(base+(u8)team))->map);
        name=D_801D1E78[c];
        __asm__("" : "=r"(cursor) : "0"(cursor), "r"(name));
        cursor++;
        do {c=*name++;*cursor=c;cursor++;}while(c!=0);
        cursor--;
        if((*(u32*)(base+0x8F1C)&0x4F000000)==0) {
            register u32 sp __asm__("$4")=32;
            register u32 marker __asm__("$6");
            register u32 prefix __asm__("$5");
            *cursor=sp;cursor++;*cursor=sp;cursor++;*cursor=sp;cursor++;

            marker=26;*cursor=marker;cursor++;

            prefix=4;*cursor=prefix;
            index=((Map*)(base+(u8)team))->map;
            c=ROW(base,index)->group;
            cursor++;*cursor=c+65;cursor++;*cursor=sp;cursor++;*cursor=marker;cursor++;*cursor=prefix;cursor++;
            *cursor=71;cursor++;*cursor=82;cursor++;*cursor=79;cursor++;*cursor=85;cursor[1]=80;
        }
        }
        {
        register s32 one __asm__("$18");
        s32 two;
        register s32 width __asm__("$19");
        s32 sentinel;
        register s32 statsVariant __asm__("$16");
        u8 *map;
        s32 six;
        s32 bar;
        u8 *cursor;
        {
        register s32 arg0 __asm__("$4")=0;
        register u8 *arg1 __asm__("$5")=D_801D8690;
        register s32 arg2 __asm__("$6")=-92;
        register s32 arg3 __asm__("$7")=-60;
        register s32 initialWidth __asm__("$2");
        __asm__("" : : "r"(arg0), "r"(arg1), "r"(arg2), "r"(arg3));
        initialWidth=184;one=1;two=2;
        func_801942E0(arg0,arg1,arg2,arg3,initialWidth,one,0,0,0,two,one,one);
        }
        {
        register s32 arg0 __asm__("$4")=1;
        register u8 *arg1 __asm__("$5")=D_801D26DC;
        register s32 arg2 __asm__("$6")=-84;
        register s32 arg3 __asm__("$7")=-31;
        __asm__("" : : "r"(arg0), "r"(arg1), "r"(arg2), "r"(arg3));
        width=168;sentinel=-1;
        __asm__("" : "=r"(one) : "0"(one));
        func_801942E0(arg0,arg1,arg2,arg3,width,one,0,sentinel,0,4,one,one);
        }
        {
        u32 v=(u8)variant;
        statsVariant=v*2;

        map=base+(u8)team;
        __asm__("" : : "r"(v));
        map+=0xAB80;

        {
        u8 *output;
        register u32 mapped __asm__("$3")=*map;
        register u32 offset __asm__("$2");
        s32 value;
        statsVariant+=v;
        offset=mapped*36;

        mapped=((Row*)(base+offset))->index;
        statsVariant*=2;
        offset=mapped*132;
        offset=statsVariant+offset;

        value=((Stats*)(base+offset))->byte0;
        __asm__ volatile ("" : : "r"(v));
        output=D_801D2704;
        __asm__("" : "=r"(output) : "0"(output));
        cursor=func_801A92A4(output,value);
        }
        }
        six=6;

        cursor=func_801A92A4(cursor+1,STATS3(map,statsVariant)->half2);
        func_801A92A4(cursor+1,STATS3(map,statsVariant)->byte1);
        func_801942E0(2,D_801D2704,-84,-34,width,two,0,sentinel,0,six,one,one);
        {
        u8 *output;
        s32 value=STATS2(map,statsVariant)->byte4;
        __asm__ volatile ("" : "=r"(value) : "0"(value));
        output=D_801D2710;
        __asm__("" : "=r"(output) : "0"(output));
        func_801A92A4(output,value);
        }
        bar=64;
        func_801942E0(3,D_801D2710,-40,19,bar,two,0,sentinel,0,six,one,one);
        width=128;
        D_801D8FE5=width;D_801D8FE6=width;D_801D8FE7=0;
        {
        u8 *output;
        u32 mapped=*map;
        u32 offset=mapped*36;
        s32 value;
        register u8 *statPtr __asm__("$16");

        mapped=((Row*)(base+offset))->index;
        offset=mapped*132;
        statPtr=(u8*)(statsVariant+offset);

        statPtr=(u8*)((u32)base+(u32)statPtr);

        value=((Stats*)statPtr)->byte5;
        __asm__ volatile ("" : "=r"(value) : "0"(value));
        output=D_801D2714;
        __asm__("" : "=r"(output) : "0"(output));
        func_801A92A4(output,value);
        }
        func_801942E0(4,D_801D2714,20,19,bar,two,0,sentinel,0,six,one,one);
        D_801D8FFD=width;D_801D8FFE=48;D_801D8FFF=0;
        }
    }
}
